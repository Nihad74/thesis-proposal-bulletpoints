#import "/utils/todo.typ": TODO

= Motivation

The vision for this refactoring is to represent each quiz question as a coherent and independently manageable domain unit. Eliminating the need for expensive SQL joins and multiple write operations drastically reduces the database load. This approach speeds up the retrieval and updating of complete question definitions.

Scientifically, this work explores the transition from strictly relational schemas to semi-structured data models. Integrating JSON within traditional relational database management systems enables the efficient handling of schema-less, aggregate-oriented information without sacrificing transactional integrity #cite(<liu2014jsondatamanagement>), #cite(<bourhis2020json>).

Furthermore, combining relational and semi-structured data demands deliberate storage and query-design decisions #cite(<tahara2014sinew>). Embedding and denormalization choices must be derived from application access patterns to optimally balance query efficiency, update behavior, and data integrity #cite(<mior2017nose>).

This refactoring delivers substantial positive outcomes for persistence. Lowering database demands ensures that students experience much faster load times and highly responsive quiz-participation workflows, even during peak server usage. Furthermore, instructors benefit from accelerated quiz editing and the reliable retrieval of trustworthy historical results.

Separately, the API architecture benefits from model-driven generation, which automates repetitive tasks and improves consistency across artifacts #cite(<eddouibi2016emfrest>). Utilizing machine-readable OpenAPI descriptions enables automated testing and reveals inconsistencies between specified and implemented behaviors #cite(<karlsson2020quickrest>), #cite(<hosono2018empirical>). Explicit API contracts reduce accidental coupling between server and client models.