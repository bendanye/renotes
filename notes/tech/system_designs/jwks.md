# JSON Web Key Sets (JWKS)

The JSON Web Key Set (JWKS) is a set of keys containing the public keys used to verify any JSON Web Token (JWT) issued by the Authorization Server and signed using the RS256 signing algorithm.

When creating applications and APIs in Auth0, two algorithms are supported for signing JWTs: RS256 and HS256. RS256 generates an asymmetric signature, which means a private key must be used to sign the JWT and a different public key must be used to verify the signature.

Ref: https://auth0.com/docs/secure/tokens/json-web-tokens/json-web-key-sets
