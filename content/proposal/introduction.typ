#import "/utils/todo.typ": TODO

= Introduction

Artemis is an open-source learning management system developed at the Technical University of Munich, supporting interactive exercises and formal examinations. A core component is the quiz module, which offers multiple-choice, drag-and-drop, and short-answer questions for various educational contexts.

The Artemis backend is implemented using Java, Spring Boot, and relational databases. While effective for flat data, this strictly relational approach introduces significant complexity when persisting deeply nested, aggregate-oriented structures like quiz questions.

Furthermore, the Angular web client communicates with the server via Representational State Transfer (REST) APIs using manually maintained Data Transfer Objects (DTOs). While other Artemis modules successfully utilize OpenAPI specifications for automated client generation, the quiz module remains coupled to manual integration processes.

Consequently, this thesis aims to address these architectural bottlenecks. The refactoring process shifts the quiz module towards an efficient JSON-based persistence model and seamlessly integrates it into the OpenAPI generation pipeline.