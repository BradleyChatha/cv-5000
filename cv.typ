#set page(
  paper: "a4",
  numbering: "1"
)

// General Styling //

#set text(
  size: 11pt,
  fallback: false,
  font: "DejaVu Sans"
)

// Content //

#let page1Header = [
  #stack(
    dir: ttb,
    spacing: 5pt,
    box(width: 80%)[
      Remote (UK)
      #h(1fr)
      DevOps Engineer
    ],
    line(length: 80%),
  )

  #text(
    size: 18pt, 
    font: "Liberation Sans",
    weight: "bold",
    top-edge: 2pt,
  )[
    Bradley Chatha
  ]

  #v(-8pt)

  #let info(header, value) = stack(
    dir: ttb, 
    spacing: 6pt, 
    text(header, luma(33%)), 
    value
  )
  #text(size: 10pt)[
    #grid(
      columns: (40%, 40%),
      info([EMAIL], [bradley\@chatha.dev]),
      info([PHONE], [On request/already provided])
    )
  ]
]

#let page1Content = rect(height: 100%)[]
#let page2Content = rect(height: 100%)[]

// Overall Layout //

#grid(
  columns: (1fr),
  rows: (12%, 88%),
  page1Header,
  page1Content
)

#grid(
  columns: (1fr),
  rows: (100%),
  page2Content
)