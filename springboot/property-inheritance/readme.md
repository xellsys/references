# Spring Boot Property Inheritance

There is a service in spring boot and a java library it consumes defined. The library introduces some properties which are to be inherited and potentially being overridden by the service.

| property                     | inheritance                 | lib value | service value | final value             |
|------------------------------|-----------------------------|-----------|---------------|-------------------------|
| app.donotinheritme           | none                        | setByLib  | -             | setDefaultInConstructor |
| app.shared.inheritme         | shared .properties          | setByLib  | setByService  | setByLib                |
| app.shared.overrideme        | shared .properties          | setByLib  | setByService  | setByService            |
| app.configuration.inheritme  | applied configuration class | setByLib  | setByService  | setByLib                |
| app.configuration.overrideme | applied configuration class | setByLib  | setByService  | setByService            |


## Inheritance

### shared .properties

This inheritance requires the library to define a separate shared .properties file, which will ultimately reside in the class path. The service then has to apply it explicitly as an @PropertySource. Downside is, the service needs to know the file name and set it in a string, which is prone to fail (during runtime) when there are changes.

### applied configuration class

This inheritance requires the library to define a configuration class which itself applies an @PropertySource of a separate .properties file within the libraries class path. The service needs to @Import that configuration class, which will also reside in its class path. This is less failure prone as the class needs to be referenced and would fail during compile time.
