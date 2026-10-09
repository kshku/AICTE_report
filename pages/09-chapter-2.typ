#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading, heading-style

#chapter-page[

  #show heading: heading-style(above: 24.9pt, below: 15.6pt)

  #chapter-heading[CHAPTER 2] <ch2>

  #v(-4.4pt)

  #include "chapter2/activity-1.typ"
  #pagebreak()

  #include "chapter2/activity-2.typ"
  #pagebreak()

  #include "chapter2/activity-3.typ"
  #pagebreak()

  #include "chapter2/activity-4.typ"
  #pagebreak()

  #include "chapter2/activity-5.typ"
  #pagebreak()
]

