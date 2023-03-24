# Atomicity

In the context of databases, atomicity means that you either:

* Commit to the entirety of the transaction occurring
* Have no transaction at all

Essentially, an atomic transaction ensures that any commit you make finishes the entire operation successfully. Or, in cases of a lost connection in the middle of an operation, the database is rolled back to its state prior to the commit being initiated.

This is important for preventing crashes or outages from creating cases where the transaction was partially finished to an unknown overall state. If a crash occurs during a transaction with no atomicity, you can’t know exactly how far along the process was before the transaction was interrupted. By using atomicity, you ensure that either the entire transaction is successfully completed—or that none of it was.

Ref: https://www.bmc.com/blogs/acid-atomic-consistent-isolated-durable/
