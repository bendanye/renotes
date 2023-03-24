# Consistency

Consistency refers to maintaining data integrity constraints.

A consistent transaction will not violate integrity constraints placed on the data by the database rules. Enforcing consistency ensures that if a database enters into an illegal state (if a violation of data integrity constraints occurs) the process will be aborted and changes rolled back to their previous, legal state.

Another way of ensuring consistency within a database throughout each transaction is by also enforcing declarative constraints placed on the database.

An example of a declarative constraint might be that all customer accounts must have a positive balance. If a transaction would bring a customer account into a negative balance, that transaction would be rolled back. This ensures changes are successful at maintaining data integrity or they are canceled completely.

Ref: https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/
