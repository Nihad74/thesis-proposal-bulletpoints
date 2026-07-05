# Proposal Review Results
**File:** proposal (6).pdf
**Date:** 7/3/2026

## Overall Assessment: Significant Issues

The proposal has a clear technical focus and a plausible implementation direction, but it still falls short of several formal submission requirements. The most important weaknesses are structural non-compliance in the Motivation and paragraph organization, an incomplete AI transparency statement, and multiple presentation issues in objectives, figures, and sentence style. Addressing these items should substantially improve both compliance and readability before submission.

**5** major | **2** minor

## Major (5)

### Motivation and paragraph structure do not meet proposal length and coherence requirements

Revise the section structure to comply with the formal guidelines. The Motivation section appears to exceed the allowed maximum length of 3/4 page, several body paragraphs are longer than the 10-line maximum, and one Motivation paragraph mixes distinct topics instead of developing a single idea. Condense the Motivation to its core rationale and impact, split the overlong Introduction and Motivation paragraphs into shorter 5-8-line units, and separate the JSON/semi-structured persistence discussion from the OpenAPI/model-driven API discussion.

> **p. 4 - Motivation:** "The vision for this refactoring is to represent each quiz question as a coherent and independently manageable domain unit. By eliminating the need for expensive SQL joins and multiple write operations, **this approach drastically reduces the database load and speeds up the retrieval and updating of complete question definitions.**"
> **p. 5 - Motivation:** "Scientifically, **this work is framed around the transition from strictly relational schemas to semi-structured data models. Integrating JSON within traditional relational database management systems enables the efficient handling of schema-less, aggregate-oriented information without sacrificing transactional integrity [LHM14], [BRV20].**"
> **p. 5 - Motivation:** "This refactoring delivers substantial positive outcomes. By significantly lowering database demands, students will experience much faster load times and highly responsive quiz-participation workflows, even during peak server usage. Instructors will similarly benefit from accelerated quiz editing and the reliable retrieval of trustworthy historical results. For developers, **this transition establishes clearer ownership boundaries within the quiz domain.**"
> **p. 3 - Introduction:** "**From a technical perspective, the Artemis backend is implemented using Java and the Spring Boot framework. For data persistence, it currently relies entirely on Hibernate and relational databases. While effective for flat data, this relational approach introduces significant complexity when storing deeply nested, aggregate- oriented structures like quiz questions and their numerous sub-components. On the frontend side, an Angular web client communicates with the server via REST APIs. Currently, the API contracts within the quiz module are predominantly defined by manually maintained Data Transfer Objects (DTOs). While several other modules within the Artemis ecosystem have already successfully transitioned to utilizing OpenAPI specifications for the automated generation of TypeScript- Angular clients, the quiz module remains coupled to these manual processes. Consequently, this thesis aims to address these architectural bottlenecks by refac- toring the quiz module towards a more efficient JSON-based persistence model and seamlessly integrating it into the OpenAPI generation pipeline.**"
> **p. 5 - Motivation:** "**This refactoring delivers substantial positive outcomes. By significantly low- ering database demands, students will experience much faster load times and highly responsive quiz-participation workflows, even during peak server usage. Instructors will similarly benefit from accelerated quiz editing and the reliable retrieval of trustworthy historical results. For developers, this transition establishes clearer ownership boundaries within the quiz domain. Stable component references allow the persistence model to evolve without breaking historical associations. Finally, explicit API contracts reduce accidental coupling between server and client models, and the quantitative evaluation will provide valuable evidence regarding the performance benefits of JSON-based persistence in established relational applications.**"
> **p. 5 - Motivation:** "Furthermore, combining relational and semi-structured data demands deliberate storage and query-design decisions [TDA14]. **Regarding the API architecture, model-driven API generation automates repetitive tasks and improves consistency across artifacts [Ed-+16]. Utilizing machine-readable OpenAPI descriptions also enables automated testing and reveals inconsistencies between specified and implemented behaviors [KČS20], [Hos+18].**"

### AI transparency statement does not identify the exact proposal sections supported by AI

The transparency statement names the tools and general purposes, but it does not specify which concrete sections of the proposal were drafted, refined, or otherwise supported by each tool. Update the statement to explicitly list the affected sections, such as the Abstract, Introduction, Problem, Motivation, and Objective sections where applicable.

> **p. 11 - Transparency in the Use of AI Tools:** "I used them to analyze the existing Artemis quiz-module architecture, structure the problem space, refine the thesis scope, and produce early drafts of **the proposal sections**."

### Objective 1 should be phrased with a single action verb and used consistently

The first objective currently uses two verbs ("Refactor" and "Reflect"), but the Section 4 guidelines require a single action verb per objective formulation. Rephrase the objective to use one action verb only, and apply the revised wording consistently in both the overview bullet and the subsection heading.

> **p. 6 - 4 Objective:** "1. **Refactor** Domain Model to **Reflect** Aggregated Quiz Structures"
> **p. 7 - 4.1 Refactor Domain Model to Reflect Aggregated Quiz Structures:** "4.1 **Refactor** Domain Model to **Reflect** Aggregated Quiz Structures"

### Figures need descriptive captions and explicit discussion in the running text

Both figures currently function more like titled labels than fully explained thesis figures. Expand each caption so it describes the content and main takeaway, and explicitly reference each figure in the surrounding prose (for example, "Figure 1 shows ...") with a brief explanation of why it matters to the thesis argument.

> **p. 7 - 4.1 Refactor Domain Model to Reflect Aggregated Quiz Structures:** "Figure 1: **Refactored JSON Aggregate Architecture**"
> **p. 8 - 4.2 Enable OpenAPI Generation for the Quiz Module:** "Figure 2: **OpenAPI Generation Workflow**"

### Several key sentences should be rewritten to follow clarity and style guidelines

Rewrite central method and objective statements in active voice with explicit actors, because repeated agentless passive voice obscures who performs the action. Also avoid sentence openings beginning with "To ...", which the writing guidelines explicitly forbid. The listed examples are representative, so review the Abstract, Objective section, and Sections 4.1-4.3 for the same pattern.

> **p. 2 - Abstract:** "First, concrete quiz questions **are redesigned as aggregate roots**, embedding their exclusively owned components directly into JSON columns."
> **p. 6 - Objective:** "This process **is executed in three stages**:"
> **p. 7 - 4.1 Refactor Domain Model to Reflect Aggregated Quiz Structures:** "Following the conceptual redesign, JSON persistence **will be implemented** for all question-component relationships across MySQL and PostgreSQL."
> **p. 8 - 4.2 Enable OpenAPI Generation for the Quiz Module:** "This specification **will be utilized** to automatically generate TypeScript-Angular models and API services."
> **p. 8 - 4.3 Evaluate the Refactored Quiz Module:** "Furthermore, the success of the API modernization **will be assessed by analyzing** the overall OpenAPI coverage and quantifying the amount of remaining manually maintained web-client integration code."
> **p. 6 - Objective:** "**To address** the outlined limitations, this thesis proposes a comprehensive refactoring of the Artemis quiz module."
> **p. 8 - 4.2 Enable OpenAPI Generation for the Quiz Module:** "**To achieve** this, the server will expose stable, DTO-based API contracts that are strictly independent of the underlying persistence model."
> **p. 8 - 4.3 Evaluate the Refactored Quiz Module:** "**To ensure** objective results, this comparison will utilize reproducible quiz workflows that encompass all supported question types."

## Minor (2)

### Define abbreviations on first use and standardize quiz terminology

Expand recurring abbreviations such as JSON, API, REST, and SQL at their first occurrence, and use one consistent term for the three quiz categories instead of alternating between "question types" and "question formats". If required by the template, also add the abbreviations to the abbreviations list.

> **p. 2 - Abstract:** "First, concrete quiz questions are redesigned as aggregate roots, embedding their exclusively owned components directly into **JSON** columns."
> **p. 2 - Abstract:** "Furthermore, the module relies on manually maintained **API** contracts, leading to error-prone synchronization between the server and the web client."
> **p. 3 - Introduction:** "On the frontend side, an Angular web client communicates with the server via **REST APIs**."
> **p. 4 - Problem:** "Complex **SQL** joins slow down read operations, while tightly coupled database write operations create a massive regression surface."
> **p. 3 - Introduction:** "A core component of this system is the quiz module, which offers three distinct **question types**: multiple-choice, drag-and-drop, and short-answer questions."
> **p. 3 - Introduction:** "These **question formats** are highly versatile and are utilized across various educational contexts, including regular exercises, practice sessions, live quizzes during lectures, and graded examinations."

### Schedule table caption should be converted to title case

The schedule table caption is written in sentence case rather than English title case. Rewrite it in title case, for example: "Iteration Plan with Deliverables and Associated Objectives."

> **p. 9 - Schedule:** "Table 1: **Iteration plan with deliverables and associated objectives.**"