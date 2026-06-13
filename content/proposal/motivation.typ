#import "/utils/todo.typ": TODO


= Motivation

- *Vision*
  - Represent each quiz question as a coherent and independently manageable domain unit. 
  - Load and update complete question definitions without unnecessary relational operations. 
  - Preserve the correctness and reproducibility of historical submissions and statistics. 
  - Establish an explicit and machine-readable contract between the quiz server module and the Angular web client.
  - Enable future quiz-module changes without requiring synchronized manual updates across all application layers. 

- *Scientific Framing*
  - JSON provides a hierarchical data model suitable for representing nested and aggregate-oriented information #cite(<bourhis2020json>).
  - Embedding and denormalization decisions should be derived from application access patterns and introduce trade-offs between query efficiency, update behavior, and data integrity #cite(<mior2017nose>). 
  - Systems combining relational and semi-structured data require deliberate storage and query-design decisions #cite(<tahara2014sinew>).
  - Model-driven API generation can automate repetitive implementation tasks and improve consistency between API artifacts #cite(<eddouibi2016emfrest>).
  - Machine-readable OpenAPI descriptions enable automated testing and can reveal inconsistencies between specified and implemented API behavior #cite(<karlsson2020quickrest>).
- *Positive Framing*
  - *Students* benefit from reliable and responsive quiz-participation workflows. 
  - *Instructors* benefit from consistent questions editing and trustworthy historical results. 
  - *Developers* benefit from clearer ownership boundaries within the quiz domain. 
  - Stable component references allow the persistence model to evolve without losing historical associations. 
  - Explicit API contracts reduce accidental coupling between server-side persistence and web-client models.
  - Quantitative evaluation provides evidence about when JSON-based persistence is beneficial in established relational applications. 