#import "/utils/todo.typ": TODO

= Problem

The current implementation of the Artemis quiz module presents architectural challenges affecting students, instructors, and developers. Students require fast loading times, while instructors depend on reliable statistics. Developers maintaining the module must preserve strict backward compatibility with historical data despite a tightly coupled domain model.

The core problem lies in the persistence and API architecture. Currently, quiz question definitions are heavily fragmented across multiple relational tables. Question components, like answer options, are modeled as independent relational entities despite belonging exclusively to a single parent question. This causes the persistence framework to eagerly load deeply nested, irrelevant component structures. Consequently, retrieving or updating a question becomes an overly complex transaction requiring the strict coordination of multiple entities and foreign keys.

Beyond persistence, the quiz module lacks automated API generation. It is excluded from the Artemis OpenAPI workflow, forcing most Angular services to manually duplicate server-defined endpoints and data types.

These design decisions severely degrade system performance and maintainability. Complex Structured Query Language (SQL) joins slow down read operations, while tightly coupled database writes create a massive regression surface spanning assessments and statistics. 

On the API level, manual synchronization introduces significant risk. Human errors during manual propagation can hide contract discrepancies until runtime. Finally, manually maintaining client code for polymorphic responses and multipart requests remains tedious and error-prone.