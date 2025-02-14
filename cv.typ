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

#let accent = luma(50%)

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
    text(header, luma(33%).mix(accent)), 
    value
  )
  #text(size: 10pt)[
    #grid(
      columns: (1fr, 1fr, 1fr),
      info([EMAIL], [bradley\@chatha.dev]),
      info([PHONE], [On request/already provided]),
    )
  ]
]

#let page1Summary = text(size: 10pt)[#box(width: 90%)[
  #v(8pt)
  "Everything Engineer" with 3 years of professional experience across eCommerce (B2B & B2C); FinTech, and agency work. I boast 12 years of programming-as-a-hobby, and have proven experience across cloud infrastructure; backend, and frontend development.

  The most common compliment I receive is my ability to learn new skills and technology to a productive level of depth in a short amount of time.
]]

#let experience(title, yearRange, company, points, tags) = [
  #grid(columns: (2fr, 1fr))[
    #text(title, weight: "bold", size: 12pt)
  ][
    #align(text(yearRange, luma(33%).mix(accent)), right)
  ]

  #v(-4pt)
  #text(company, luma(33%).mix(accent), size: 10pt)

  #let tag(value) = rect(text(value, 8pt, white), fill: luma(66%).mix(accent))
  #stack(
    dir: ltr,
    spacing: 4pt,
    ..tags.map(t => tag(t)),
  )

  #text(points, size: 10pt)
]

#let experience1 = experience(
  [DevOps Engineer], 
  [2023-now],
  [SOON\_ London Ltd, Remote - eCommerce & bespoke software support],
  [
    #list(
      spacing: 10pt,
      // TODO: Make it easier for me to tailor points down rather than having to comment them out and rearrange by hand.
      [Revamped their Kubernetes-based Gitlab CI setup to be managed in Terraform, and make use of Workload Identity instead of manually managed long-lived tokens.],
      [Took full ownership of their infrastructure and Kubernetes clusters; migrated ClickOps projects into Terraform, and setup a streamlined foundation for their infrastructure going forward, on top of creating several from-scratch GCP projects.],
      [Created an extensive suite of CI templates to streamline most of their pipelines.],
      [Provided a set of composable library Helm charts, to DRY up most of their standard charts.],
      [Adopted a client's AWS infrastructure, cutting their monthly cost by 72% (5 figures), alongside creating documentation and technical diagrams.],
      [Introduced misc but important tooling like Tilt and Renovate.],
      [Performed work on their backend Go services to introduce tracing, as well as optimise certain services under load.],
      [Introduced ArgoCD for specific codebases that benefited from separate CI and CD.],
      [Implemented a GraphQL caching layer within their TypeScript frontend codebase.],
      [Developed and maintained several Grafana dashboards.],
      [Implemented Managed Prometheus and Slack alerting.],
      [Created a "Cluster Downscaler" to downscale development clusters outside of work hours to save on costs.],
      [Wrote the "DevOps Catalogue" - extensive technical documentation on all DevOps related functions, stored in Notion.],
      [Introduced a monthly maintenance schedule to ensure all active codebases are kept up to date; monitor costs, etc.],
      [Setup the groundwork for using BigQuery to calculate costs-per-client for one of their SaaS products.],
    )
  ],
  ([GCP], [AWS], [Kubernetes], [Istio], [Terraform], [Helm], [Gitlab], [Golang], [ArgoCD], [Grafana])
)

#let experience2 = experience(
  [Junior Cloud Infrastructure Engineer], 
  [2021-2022 (11 months)],
  [Primer.io, Remote - FinTech low-code payment gateway],
  [
    #list(
      spacing: 10pt,
      // TODO: Make it easier for me to tailor points down rather than having to comment them out and rearrange by hand.
      [Lead their load testing initiative, working closely with the product teams to identify and optimise their code.],
      [Maintained their Terraformed AWS & Datadog infrastructure, mainly for smaller tasks.],
      [Implemented a few full Gitlab CI pipelines for Python and Go services.],
      [Acted as a one-man internal help desk for the infrastructure team.],
      [Implemented a Slack bot to automate tedious tasks such as onboarding; MR assignment, and "holding" environments for release.],
      [Created a Go service that partially implemented the Cypher graph langauge, as a frontend for an object-oriented Postgres database.],
      [Used an event-driven Python lambda function to generate human-friendly HTML reports for AWS Macie.],
      [Implemented metrics in their Python codebase for DyanmoDB calls.],
      [Created several Datadog dashboards that were referred to as high-quality.],
      [Authored several internal RFCs, as well as comprehensive technical documentation for both existing and R&D-related projects.],
      [Setup Renovate, and helped the engineering teams adopt it.],
    )
  ],
  ([AWS], [Terraform], [Kubernetes], [Helm], [Gitlab], [Golang], [Python], [Datadog])
)

#let page1Experience = [
  #heading([#text([EXPERIENCE], luma(20%).mix(accent))])
  #v(12pt)
  
  #grid(
    columns: (5%, 95%),
    [
      // TODO: Probably not worth the effort, but it'd be nice if I didn't have to manually align these things.
      #line(start: (20%, 0%), end: (20%, 76%), stroke: 3pt + luma(22%).mix(accent))
      
      #let point = circle(fill: luma(22%).mix(accent), radius: 5pt)
      #place(point, top + left, dx: -1.7%, dy: -0.5%)      
    ],
    [
      #experience1
    ]
  )
]

#let page2Experience = [
  #grid(
    columns: (5%, 95%),
    [
      // TODO: Probably not worth the effort, but it'd be nice if I didn't have to manually align these things.
      #line(start: (20%, 0%), end: (20%, 49%), stroke: 3pt + luma(22%).mix(accent))
      
      #let point = circle(fill: luma(22%).mix(accent), radius: 5pt)
      #place(point, top + left, dx: -1.7%, dy: -0.5%)      
    ],
    [
      #experience2
    ]
  )
]

#let page1Content = [
  #page1Summary
  #page1Experience
]
#let page2Content = [
  #page2Experience
]

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