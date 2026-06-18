#import "/utils/todo.typ": TODO

= Objective

Building on the motivation to enhance system performance and maintainability, this thesis seeks to address the current architectural limitations by proposing a comprehensive refactoring plan for the Artemis quiz module. This approach focuses on transitioning from a fragmented relational database schema to a highly efficient JSON-based persistence model, while simultaneously modernizing the API architecture. To achieve these goals and systematically resolve the identified bottlenecks, the refactoring process will be executed and evaluated in three sequential stages:

1. Refactor Domain Model to Reflect Aggregated Quiz Structures
2. Integrate the Quiz Module into OpenAPI Generation
3. Evaluate the Refactored Quiz Module


== Refactor Domain Model to Reflect Aggregated Quiz Structures
- Define `QuizQuestion` as the aggregate root of its exclusively owned components.
- Model answer options, drag items, drop locations, short-answer spots, solutions, and correct mappings as embedded components.
- Clarify aggregate ownership, boundaries, and identify information that remains relational. 
- Introduce stable logical identifiers for JSON-embedded components.
- Preserve component identifiers when questions are edited or components are reordered. 
- Define references from submissions, assessments and statistics to embedded components. 

== Migrate Quiz-Question Components into JSON Columns
- Implement JSON persistence for the seven question-component relationships.
- Support JSON persistence with both MySQL and PostgreSQL. 
- Transfer existing question components into JSON columns using Liquibase. 
- Preserve existing component identifiers during the migration. 
- Adapt directly affected submissions, assessment  operations, and statistics counters.
- Validate migration completeness and reference integrity through automated tests. 

== Integrate the Quiz Module into OpenAPI Generation
- Include the quiz module in the Artemis OpenAPI workflow. 
- Expose stable DTO-based contracts independent of the persistence model.
- Represent polymorphic quiz-question DTOs explicitly in the OpenAPI specification.
- Generate TypeScript-Angular models and API services. 
- Replace manually implemented HTTP code for selected loading, creation, and update workflows.
- Retain thin manually implemented facades where generated multipart handling is unsuitable. 

== Evaluate the Refactored Quiz Module
- Compare the existing relational implementation with the JSON-based implementation.
- Measure SQL queries, joins, write operations, response times, and payload sizes. 
- Use reproducible quiz workflows containing all supported question types. 
- Assess OpenAPI coverage and the remaining manually maintained web-client integration code.
- Document the benefits, disadvantages, and limitations of both refactoring approaches. 