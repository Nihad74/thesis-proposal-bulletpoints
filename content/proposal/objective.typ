#import "/utils/todo.typ": TODO

= Objective

To address the outlined limitations, this thesis proposes a comprehensive refactoring of the Artemis quiz module. The approach transitions from a fragmented relational schema to an efficient JSON-based persistence model while modernizing the API architecture. This process is executed in three stages:

1. Refactor Domain Model to Reflect Aggregated Quiz Structures
2. Enable OpenAPI Generation for the Quiz Module
3. Evaluate the Refactored Quiz Module


== Refactor Domain Model to Reflect Aggregated Quiz Structures

#figure(
  image("../../quiz_json_visualisation.png", width: 100%),
  caption: [Refactored JSON Aggregate Architecture]
)

The primary objective is redesigning the domain model by establishing the concrete question types (e.g. `MultipleChoiceQuestion`, `DragAndDropQuestion`) as aggregate roots. Specific elements like answer options or drag items will be explicitly modeled as embedded JSON components rather than independent relational entities. Stable logical identifiers will be introduced for these components to ensure long-term data integrity and preserve historical references from user submissions, assessments, and statistics.

Following the conceptual redesign, JSON persistence will be implemented for all question-component relationships across MySQL and PostgreSQL. An automated Liquibase migration will safely transfer existing components into JSON columns while strictly preserving existing identifiers. Finally, all directly affected application areas will be adapted to ensure flawless functionality with the newly embedded JSON components.


== Enable OpenAPI Generation for the Quiz Module
#figure(
  image("../../OpenAPI_visualization.png", width: 100%),
  caption: [OpenAPI Generation Workflow]
)
The second objective integrates the quiz module into the Artemis OpenAPI workflow. To achieve this, the server will expose stable, DTO-based API contracts that are strictly independent of the underlying persistence model. A critical step involves explicitly representing the polymorphic nature of quiz-question DTOs within the OpenAPI specification.

This specification will be utilized to automatically generate TypeScript-Angular models and API services. These generated artifacts will systematically replace manually implemented HTTP code for loading, creation, and update workflows, thereby reducing maintenance overhead and preventing synchronization errors. However, thin manually implemented facades will be retained only where the generated multipart handling proves unsuitable for complex file uploads.





== Evaluate the Refactored Quiz Module
The final objective is a comprehensive evaluation comparing the existing relational implementation against the newly developed JSON-based architecture. To ensure objective results, this comparison will utilize reproducible quiz workflows that encompass all supported question types. The evaluation will quantitatively measure key database and system performance metrics, including the number of executed SQL queries, required joins, write operations, server response times, and API payload sizes.

Furthermore, the success of the API modernization will be assessed by analyzing the overall OpenAPI coverage and quantifying the amount of remaining manually maintained web-client integration code. Ultimately, the thesis will thoroughly document the practical benefits, disadvantages, and technical limitations of both the persistence refactoring and the OpenAPI integration, providing empirical evidence for the effectiveness of the chosen architectural approaches.