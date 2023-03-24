# Durability

The final aspect of the ACID approach to database management is durability.

Durability ensures that changes made to the database (transactions) that are successfully committed will survive permanently, even in the case of system failures. This ensures that the data within the database will not be corrupted by:

* Service outages
* Crashes
* Other cases of failure

Durability is achieved through the use of changelogs that are referenced when databases (or portions of the database) are restarted.

Ref: https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/