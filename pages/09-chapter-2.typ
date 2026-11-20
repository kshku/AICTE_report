#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading, heading-style

#chapter-page[
  #show heading: heading-style(above: 24.9pt, below: 15.6pt)

  #chapter-heading[CHAPTER 2] <ch2>

  #v(-4.4pt)

  #include "chapter2/activity-1.typ"
]

#pagebreak()
#set page(header: none, footer: none, margin: (x: 2.5cm, y: 2.5cm))
#include "chapter2/sdg-1.typ"

#pagebreak()
#chapter-page[
  #show heading: heading-style(above: 24.9pt, below: 15.6pt)
  #set par(justify: true, spacing: 24.8pt, first-line-indent: 0pt)
  #set list(indent: 18pt, body-indent: 14pt)
  #include "chapter2/activity-2.typ"
]

#pagebreak()
#set page(header: none, footer: none, margin: (x: 2.5cm, y: 2.5cm))
#include "chapter2/sdg-2.typ"

#pagebreak()
#chapter-page[
  #show heading: heading-style(above: 24.9pt, below: 15.6pt)
  #set par(justify: true, spacing: 24.8pt, first-line-indent: 0pt)
  #set list(indent: 18pt, body-indent: 14pt)
  #include "chapter2/activity-3.typ"
]

#pagebreak()
#set page(header: none, footer: none, margin: (x: 2.5cm, y: 2.5cm))
#include "chapter2/sdg-3.typ"

#pagebreak()
#chapter-page[
  #show heading: heading-style(above: 24.9pt, below: 15.6pt)
  #set par(justify: true, spacing: 24.8pt, first-line-indent: 0pt)
  #set list(indent: 18pt, body-indent: 14pt)
  #include "chapter2/activity-4.typ"
]

#pagebreak()
#set page(header: none, footer: none, margin: (x: 2.5cm, y: 2.5cm))
#include "chapter2/sdg-4.typ"

#pagebreak()
#chapter-page[
  #show heading: heading-style(above: 24.9pt, below: 15.6pt)
  #set par(justify: true, spacing: 24.8pt, first-line-indent: 0pt)
  #set list(indent: 18pt, body-indent: 14pt)
  #include "chapter2/activity-5.typ"
]

#pagebreak()
#set page(header: none, footer: none, margin: (x: 2.5cm, y: 2.5cm))
#include "chapter2/sdg-5.typ"

#pagebreak()
