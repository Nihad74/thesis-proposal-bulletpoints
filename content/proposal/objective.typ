#import "/utils/todo.typ": TODO

= Objective

This thesis pursues four objectives: 

1. *Design a JSON-Based Quiz-Question Aggregate Model*
2. *Migrate Quiz-Question Components into JSON Columns*
3. *Integrate the Quiz Module into OpenAPI Generation*
4. *Evaluate the Refactored Quiz Module*


== Design a JSON-Based Quiz-Question Aggregate Model
- Define `QuizQuestion` as the aggregate root of its exclusively owned components.
- Model answer options, drag items, drop locations, short-answer spots, solutions, and correct mappings as embedded components.
- Clarify aggreate ownership, boundaries and identify information that remains relational. 
- Introduce stable logical identifiers for JSON-embedded components.
- Preserve component identifiers when questions are edited or components are reordered. 
- Define references from submissions, assessments and statistics to embedded components. 

== Migrate Quiz-Question Components into JSON Columns
- Implement JSON persistence for the seven question-component relationships.
- Support JSON persistence with both MySQL and PostgreSQL. 
- Transfer existing questions components into JSON columns using Liquibase. 
- Preserve existing component identifiers. during the migration. 
- Adapt directly affected submissions, assessment  operations, and statistics counters.
- Validate migration completeness and reference integrity trough automated tests. 

== Integrate the Quiz Module into OpenAPI Generation
- Include the quiz module in the Artemis OpenAPI workflow. 
- Expose stable DTO-based contracts independent of the persistence model.
- Represent polymorphic quiz-question DTOs explicitly in the OpenAPI specification.
- Generate TypeScript-Angular models and API services. 
- Replace manually implemented HTTP code for selected loading, creation, and update workflows.
- Retain thin manually implemented facades where generated multipart handling is unsuitable. 

== Evaluate the Refactored Quiz Module
- Compare the existing relational implemenatation with the JSON-based implementation.
- Measure SQL queries, joins, write operations, response times, and payload sizes. 
- Use reproducible quiz worfklows containing all supported question types. 
- Assess OpenAPI coverage and the remaining manually maintained web-client integration code.
- Document the benefits, disadvantages, and limitations of both refactoring approaches. 