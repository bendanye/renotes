# How Stripe prevents double payments

1 They use idempotent APIs to prevent double payment.
2 They use UUID as the idempotency key.
3 They send the idempotency key through HTTP headers.
4 They create a new idempotency key whenever the request payload changes.
5 They store the idempotency keys in a database on the server side.
6 They query the database with keys to check if a request was processed earlier.
7 They process a request only if it's new and then store its idempotency key in the database.
8 They roll back a transaction using the ACID database on a server error.
9 They remove the idempotency keys from the database after 24 hours for reuse.
10 They use exponential back-off with jitter to avoid the thundering herd problem.

ref: https://www.linkedin.com/posts/nk-systemdesign-one_how-stripe-prevents-double-payments-explained-activity-7354128553971490820-mCrE?utm_source=social_share_video_v2&utm_medium=android_app&rcm=ACoAAAjP_8MBL87jJy3c75XwTQLluNy6o2TCWZY&utm_campaign=share_via
