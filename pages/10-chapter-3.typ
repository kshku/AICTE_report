#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading

#chapter-page[

  #chapter-heading[CHAPTER 3]

  #align(center, text(weight: "bold", size: 18pt)[OVERALL LEARNINGS])

  #set par(justify: true, spacing: 32pt, first-line-indent: 0pt)
#set list(indent: 18pt, body-indent: 14pt)

  #include "chapter3/overall-learnings.typ"

  #set par(justify: false)
]

#pagebreak()
