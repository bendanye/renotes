# Anemic Model

Objects are said to be anemic if they have state but lack behavior. Some kinds of objects, such as Data Transfer Objects (DTOs), are expected to simply be a collection of data. However, the objects that model the behavior of the problem space within the application should use encapsulation to manage their internal state and behavior. An anemic model frequently fails to follow the Tell, Don't Ask principle, since objects cannot perform operations on their own state, but are constantly manipulated by other objects in a non-object-oriented fashion. Rich domain models provide useful behavior to clients within the system. Some code smells that may indicate an anemic domain model include exposed collection properties, and over-use of properties in general (especially setters).

Ref: https://deviq.com/domain-driven-design/anemic-model
