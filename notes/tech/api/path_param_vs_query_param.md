# Path Parameter vs Query Parameter

## Path Parameter

GET /cars/:id

### When to Use

* To specify a unique resource within a collection (e.g., /cars/{id}).
* When the parameter is required to access the resource.
* When the resource or sub-resource is hierarchical.

## Query Parameter

GET /cars?color=blue

### When to Use

* To filter or sort resources (e.g., /cars?color=blue).
* For optional parameters that do not change the identity of the resource.
* To provide additional information, like pagination (e.g., /cars?page=2&size=10).

## Ref
https://stackoverflow.com/questions/30967822/when-do-i-use-path-parameters-vs-query-parameters-in-a-restful-api
