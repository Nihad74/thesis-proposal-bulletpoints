#import "/utils/todo.typ": TODO

= Abstract

- Artemis supports multiple-choice questions, drag-and-drop, and short-answer questions.

- Their components are currently stored as independent relational entities, requiring multiple joins and persistence operations.

- This thesis embeds question-owned components into JSON columns while preserving references from submissions and statistics through stable component identifiers.

- The refactoring is evaluated regarding correctness, database performance, API-contract quality, and maintainability. 

