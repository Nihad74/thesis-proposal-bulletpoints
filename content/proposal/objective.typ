#import "/utils/todo.typ": TODO

= Objective

This thesis proposes a comprehensive refactoring of the Artemis quiz module, addressing the outlined limitations. The approach transitions from a fragmented relational schema to an efficient JSON-based persistence model while modernizing the API architecture. This thesis executes the refactoring process in three stages:

1. Restructure Domain Model into Aggregated Quiz Entities
2. Integrate the Quiz Module into OpenAPI Generation
3. Evaluate the Refactored Quiz Module

== Restructure Domain Model into Aggregated Quiz Entities

#figure(
  image("../../quiz_json_visualisation.png", width: 100%),
  caption: [Restructured domain model for quiz questions. Concrete question types act as aggregate roots embedding their respective JSON components.]
)

The primary objective is redesigning the domain model by establishing the concrete question types (e.g., `MultipleChoiceQuestion`, `DragAndDropQuestion`) as aggregate roots. Figure 1 visualizes this refactored domain model, demonstrating how the streamlined aggregate model embeds components within JSON columns. The new design explicitly models specific elements like answer options or drag items as embedded JSON components rather than independent relational entities. It introduces stable logical identifiers for these components, ensuring long-term data integrity and preserving historical references from user submissions, assessments, and statistics.

Following the conceptual redesign, the implementation introduces JSON persistence for all question-component relationships across MySQL and PostgreSQL. An automated Liquibase migration safely transfers existing components into JSON columns while strictly preserving existing identifiers. Finally, the refactoring adapts all directly affected application areas, guaranteeing flawless functionality with the newly embedded JSON components.


== Integrate the Quiz Module into OpenAPI Generation

#figure(
  image("../../OpenAPI_visualization.png", width: 100%),
  caption: [Target OpenAPI-based quiz API workflow. Yellow boxes indicate quiz-specific adaptation points, gray boxes indicate existing pipeline steps, and blue boxes indicate generated artifacts.]
)

The second objective integrates the quiz module into the Artemis OpenAPI workflow. The server exposes stable, DTO-based API contracts that are strictly independent of the underlying persistence model. Figure 2 illustrates this pipeline, demonstrating how the backend Java implementation acts as the single source of truth. A critical step involves explicitly representing the polymorphic nature of quiz-question DTOs within the OpenAPI specification.

The OpenAPI generation pipeline utilizes this specification to automatically create TypeScript-Angular models and API services. These generated artifacts systematically replace manually implemented HTTP code for loading, creation, and update workflows, thereby reducing maintenance overhead and preventing synchronization errors. However, developers retain thin manually implemented facades only where the generated multipart handling proves unsuitable for complex file uploads.


== Evaluate the Refactored Quiz Module

The final objective is a comprehensive evaluation comparing the existing relational implementation against the newly developed JSON-based architecture. This comparison utilizes reproducible quiz workflows encompassing all supported question types, ensuring objective results. The evaluation quantitatively measures key database and system performance metrics, including the number of executed SQL queries, required joins, write operations, server response times, and API payload sizes.

Furthermore, the evaluation assesses the success of the API modernization by analyzing the overall OpenAPI coverage and quantifying the remaining manually maintained web-client integration code. Ultimately, the thesis documents the practical benefits, disadvantages, and technical limitations of both the persistence refactoring and the OpenAPI integration, providing empirical evidence for the effectiveness of the chosen architectural approaches.