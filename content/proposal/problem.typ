#import "/utils/todo.typ": TODO

= Problem

The current implementation of the Artemis quiz module presents architectural challenges that directly impact its users. Students depend on fast loading times, while instructors require consistent definitions and reliable statistics. Meanwhile, developers maintaining the module must strictly preserve backward compatibility with existing historical data.

The core problem stems from the persistence model and API architecture. Currently, quiz question definitions are heavily fragmented across multiple relational tables. Specific question components like answer options are modeled as independent relational entities despite belonging exclusively to a single parent question. This causes the persistence framework to eagerly load deeply nested, irrelevant component structures during simple requests. Consequently, retrieving or updating a question becomes an overly complex transaction requiring the strict coordination of multiple entities and foreign keys.

Furthermore, the quiz module is excluded from the Artemis OpenAPI generation workflow. Without a single source of truth, most Angular services must manually duplicate server-defined endpoints and data types.

These design decisions severely degrade system performance and maintainability. Complex SQL joins slow down read operations, while tightly coupled database write operations create a massive regression surface. On the API level, the manual propagation of server changes is highly susceptible to human error, often hiding contract discrepancies until runtime. Finally, manually maintaining client code for polymorphic responses and multipart requests makes ongoing development tedious and error-prone.