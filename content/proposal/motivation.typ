#import "/utils/todo.typ": TODO


= Motivation

- *Vision*
  - Represent each quiz question as a coherent and independently manageable domain unit. 
  - Load and update complete question definitions without unnecessary relational operations. 
  - Preserve the correctness and reproducibility of historical submissions and statistics. 
  - Establish an explicit and machine-readable contract between the quiz server module and the Angular web client.
  - Enable future quiz-module changes without requiring synchronized manual updates across all application layers. 

- *Scientific Framing*
  - JSON provides a hierarchical data model suitable for representing nested and aggregate-oriented information #cite(<bourhis2017json>).
  - Embedding related data can reduce relational joins but introduces trade-offs concerning referential integrity, update behavior, and querying #cite(<fowler2012aggregate>). 
  - The suitability of relational or JSON-based persistence depends on actual access patterns and must therefore be evaluated empirically #cite(<postgresql_json>).
  - Model-driven API generation can reduce repetitive integration work and improve consistency between system components #cite(<edouibi2015emfrest>).
  - OpenAPI descriptions can additionally support automated validation and expose differences between documented and implemented API behavior #cite(<karlsson2019quickrest>).
  - The Artemis quiz module provides a production-scale case study combining complex persistence relationships, polymorphic APIs, and long-lived assessment data.
- *Positive Framing*
  - *Students* benefit from reliable and responsive quiz-participation workflows. 
  - *Instructors* benefit from consistent questions editing and trustworthy historical results. 
  - *Developers* benefit from clearer ownership boundaries within the quiz domain. 
  - Stable component references allow the persistence model to evolve without losing historical associations. 
  - Explicit API contracts reduce accidental coupling between server-side persistence and web-client models.
  - Quantitative evaluation provides evidence about when JSON-based persistence is beneficial in established relational applications. 