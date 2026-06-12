#import "/utils/todo.typ": TODO

= Problem

- *Actors*

  - *Students* Participate in quizzes and examinations.
    Depend on responsive quiz loading and reliable assessment.

  - *Instructors* Create, edit, and evaluate quiz exercises.
    Depend on consistent question data and trustworthy statistics.

  - *Artemis developers and maintainers* Extend the quiz module and maintain its persistence and API layers.
    Must preserve compatibility with existing questions, submissions, and statistics.

- *Core problem*
  - Quiz-questions definitions are distributed across multiple relational tables. 
  - Question components are modeled as independent entities despite exclusively belonging to one question. 
  - Submissions and statistics directly reference the database entities of #box[individual] question components. 
  - Persisting a question requires coordinating multiple entities, mappings, and ordered collections. 
  - The quiz module is not included in the Artemis OpenAPI generation workflow.
  - Most quiz-related Angular API services manually duplicate endpoint URLs and data types. 

- *Negative Consequences*
  - Loading complete questions requires additional database queries or joins.
  - Updating questions requires multiple coordinated database operations.
  - Changes to the persistence model risk invalidating historical submissions and statistics. 
  - Developers must reason about a fragmented and tightly coupled domain model. 
  - Persistence changes have a large regression surface across creation, submission, assessment, and statistics. 
  - API changes in the server application must be propagated manually to web-client services.
  - Differences between server and web-client contracts may only become visible during integration or runtime.
  - Polymorphic responses and multipart make API maitanance particularly difficult. 
