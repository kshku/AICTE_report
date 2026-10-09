#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading, heading-style

#chapter-page[

  #show heading: heading-style(above: 24.9pt, below: 15.6pt)

  #chapter-heading[CHAPTER 3] <ch3>

  #v(4.6pt)
  #align(center, text(weight: "bold", size: 17pt)[OVERALL LEARNINGS])

  #set par(justify: true, spacing: 24.8pt, first-line-indent: 0pt)
#set list(indent: 18pt, body-indent: 14pt)

  #include "chapter3/overall-learnings.typ"

  #set par(justify: false)
]

#pagebreak()
