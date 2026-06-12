#import "/utils/todo.typ": TODO


= Introduction

- Artemis is an open-source learning management system developed at Technical University of Munich.

- It supports interactive exercises, automate assessment, examinations, and learning analytics.

- The quiz module provides three question types: 
  - Multiple-choice questions
  - Drag-and-drop questions
  - Short-answer questions

- Questions are used in regular exercises, practice sessions, live quizzes, ans examinations.

- The server is implemented using Java, Spring Boot, Hibernate and relational databases.

- The Angular web client communicates with the server through REST APIs. 

- Data Transfer Objects define most of the existing quiz API contracts. 

- Other Artemis modules already use OpenAPI to generate TypeScript-Angular clients. 