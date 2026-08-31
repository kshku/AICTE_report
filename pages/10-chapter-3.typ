#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading

#chapter-page[

  #chapter-heading[CHAPTER 3]

  #align(center, text(weight: "bold", size: 18pt)[OVERALL LEARNINGS])

  #set par(justify: true)

  #include "chapter3/overall-learnings.typ"

  #set par(justify: false)
]

#pagebreak()
