# Single Layer of Abstraction Princple

SLAP says that every method inside the code should deal with concepts related to just one level of abstraction.

Refer to this [link](https://www.techyourchance.com/single-level-of-abstraction-principle/#:~:text=As%20its%20name%20suggests%2C%20Single,it%20is%E2%80%A6%20well%2C%20abstract) for explanation.

## Exercise

Before go to this [link](https://medium.com/@outfunnel/the-single-level-of-abstraction-principle-52b5d56ef54b) for the full content, let see if you can refactor this code to meet SLAP.

```js
const axios = require('axios');

const HUBSPOT_API_PROPERTIES_PATH = 'https://api.hubapi.com/crm/v3/properties/contacts';

const HUBSPOT_API_CONTACTS_PATH = 'https://api.hubapi.com/crm/v3/objects/contacts';

async function getProperties () {
    try {
        const response = await axios.get(HUBSPOT_API_PROPERTIES_PATH);

        return response.data.results;
    } catch (err) {
        const statusCode = err.response.status;

        if (statusCode === 500) {
            //retry
        } else if(statusCode === 429) {
            // retry after waiting for a timeout
        } else {
            throw err;
        }
    }
}

async function getNormalizedContacts() {
    const properties = await getProperties();

    const response = await axios.get(HUBSPOT_API_CONTACTS_PATH);

    const contacts = response.data.results;

    return normalizeContacts({contacts: contacts.data, properties});
}
```
