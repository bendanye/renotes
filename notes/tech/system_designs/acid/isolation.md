# Isolation

Isolated transactions are considered to be “serializable”, meaning each transaction happens in a distinct order without any transactions occurring in tandem.

Any reads or writes performed on the database will not be impacted by other reads and writes of separate transactions occurring on the same database. A global order is created with each transaction queueing up in line to ensure that the transactions complete in their entirety before another one begins.

Importantly, this doesn’t mean two operations can’t happen at the same time. Multiple transactions can occur as long as those transactions have no possibility of impacting the other transactions occurring at the same time.

Doing this can have impacts on the speed of transactions as it may force many operations to wait before they can initiate. However, this tradeoff is worth the added data security provided by isolation.

Isolation can be accomplished through the use of a sliding scale of permissiveness that goes between what are called optimistic transactions and pessimistic transactions:

* An optimistic transaction schema assumes that other transactions will complete without reading or writing to the same place twice. With the optimistic schema, both transactions will be aborted and retried in the case of a transaction hitting the same place twice.
* A pessimistic transaction schema provides less liberty and will lock down resources on the assumption that transactions will impact other ones. This results in fewer abort and retries, but it also means that transactions are forced to wait in line for their turn more often in comparison to the optimistic transaction approach.

Ref: https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/
