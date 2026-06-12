#import "/utils/todo.typ": 
#import "@preview/tablem:0.3.0": three-line-table

= Schedule
- *Start date:* To be confirmed \
- *Planned duration:* Approximately 20 weeks

#figure(
  table(
    columns: (0.8fr, 0.9fr, 5fr, 1fr),
    align: (center, center, left, center),
    inset: 6pt,
    stroke: 0.5pt,

    // Explicit vertical separators
    table.vline(x: 0, stroke: 0.5pt),
    table.vline(x: 1, stroke: 0.5pt),
    table.vline(x: 2, stroke: 0.5pt),
    table.vline(x: 3, stroke: 0.5pt),
    table.vline(x: 4, stroke: 0.5pt),

    // Explicit horizontal separators
    table.hline(y: 0, stroke: 0.5pt),
    table.hline(y: 1, stroke: 0.5pt),
    table.hline(y: 2, stroke: 0.5pt),
    table.hline(y: 3, stroke: 0.5pt),
    table.hline(y: 4, stroke: 0.5pt),
    table.hline(y: 5, stroke: 0.5pt),
    table.hline(y: 6, stroke: 0.5pt),
    table.hline(y: 7, stroke: 0.5pt),
    table.hline(y: 8, stroke: 0.5pt),
    
    table.header(
      repeat: true,
      [*Iteration*],
      [*Duration*],
      [*Work Items and Deliverables*],
      [*Objectives*],
    ),

    [1],
    [3 weeks],
    [Implement a complete multiple-choice JSON-persistence slice; preserve answer-option identifiers; establish baseline measurements and regression tests.],
    [1, 2, 4],

    [2],
    [3 weeks],
    [Implement the drag-and-drop JSON-persistence slice; migrate items, locations, and mappings; validate affected submissions and statistics.],
    [1, 2],

    [3],
    [3 weeks],
    [Implement the short-answer JSON-persistence slice; migrate spots, solutions, and mappings; validate assessment behavior.],
    [1, 2],

    [4],
    [3 weeks],
    [Complete the cross-type Liquibase migration; validate historical references and database compatibility with MySQL and PostgreSQL.],
    [2, 4],

    [5],
    [3 weeks],
    [Integrate quiz endpoints into OpenAPI generation; generate models and migrate one central read workflow end-to-end.],
    [3],

    [6],
    [3 weeks],
    [Migrate central create and update workflows to generated clients; implement required multipart facades; complete client regression tests.],
    [3],

    [7],
    [2 weeks],
    [Execute the final relational-versus-JSON comparison; evaluate OpenAPI integration; resolve identified regressions.],
    [4],
  ),
  caption: [Iteration plan with deliverables and associated objectives.],
)
