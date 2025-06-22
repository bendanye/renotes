
# Common API Security Failures

## Failure to Compartmentalize

Many APIs combine sensitive features (e.g. Authentication) and application logic (e.g. data access) into a single service. Compartmentalization helps limit the impact of a vulnerability.

## Relying on Input Validation as a Primary Defense

Even though input validation is a good first line of defense, it will fail as the only defense.  
**Do not rely on input validation alone.**

## Lack of Input Validation

A lack of input validation is the enabler for various other attacks.  
Ensure that input validation is as strict as possible without triggering false positives.

## Failing to enforce a strict CORS Policy

Cross origin API requests are only fully protected by CORS if they cannot be forged with HTML elements.

Force the use of preflight requests by not accepting form-based content types.

## Understanding the impact of Session Transport

Cookies are often frowned upon in an API world, and custom headers are preferred.

Both have vastly different security properties, so make sure you understand them fully.

## Lack of proper JWT key management

Cryptographic keys used for encryption and signatures need to be frequently rotated.

Your API should be prepared to handle key rotation

## Misusing the JWT Signature Scheme

Shared secrets for verifying JWT tokens are for use within the boundaries of the application.

Most scenarios should use a public/private key pair.

## Mishandling client-side session data

Client-side session data is easy to read and manipulate. You need to ensure confidentially and integrity before using any of the session data.

## Changing sessions for no good reason

Server-side session data is not compatible with the REST paradigm, but still works well with small to medium-scale applications.

## Lack of proper Authorization 

Always complement an initial authentication check with appropriate authorization checks (e.g. ownership of a resource)

## No rate limiting

Rate limiting prevents malicious code from abusing legitimate / illegitimate access to your API.
