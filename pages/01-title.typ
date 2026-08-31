#import "../theme/styles.typ": *
#import "../theme/components.typ": dept-heading, college-sub-block, college-name-block
#import "../vars.typ": *

#set par(leading: 0.65em)

#align(center)[
  #text(fill: c-vtu, weight: "bold")[VISVESVARAYA TECHNOLOGICAL UNIVERSITY \ JNANA SANGAMA, BELAGAVI- 590 018]

  #v(-3mm)
  #image("/assets/vtu_logo.png", height: 4.2cm, width: 20%, fit: "stretch")

  #v(-3.5mm)
  #text(fill: c-vtu, weight: "bold")["AICTE Activity Point Programme"]

  #v(5mm)
  #text(fill: c-red, weight: "bold", style: "italic")[Submitted in Partial Fulfilment for the Award of Degree of \ #text(fill: c-vtu)[Bachelor of Engineering] \ in \ #text(fill: c-vtu)[Artificial Intelligence & Machine Learning]]

  #v(2mm)
  #text(fill: c-red)[Submitted by ] \
  #text(fill: c-vtu, weight: "bold")[#name \ #usn]


  #v(1mm)
  #text(fill: c-red, weight: "bold")[Department AICTE Activity Faculty Incharge \
  ]
  #text(fill: c-vtu, weight: "bold")[Prof. Nidhishree M P \ Assistant Professor]

  #v(2mm)
  #text(fill: c-red, weight: "bold")[AICTE Co-ordinator of the college \
  ]
  #text(fill: c-vtu, weight: "bold")[Dr. Deepak K B \ Associate Professor]

  #v(-1.2mm)
  #image("/assets/vcet-logo1.png", height: 15%, fit: "stretch")
]

#v(-3mm)
#line(length: 100%, stroke: 1.3pt)
#v(-1em)
#dept-heading()
#v(-0.6em)
#college-name-block()
#v(-0.6em)
#college-sub-block()
#v(-0.6em)
#align(center, text(fill: c-college, weight: "bold", size: 13pt)[MAY 2027])

#pagebreak()
