#import "../theme/styles.typ": *
#import "../vars.typ": *

// ACKNOWLEDGEMENT page — US Letter, positioned to the reference PDF.
// Body column is [72, 540.4]pt at 12pt, line pitch 21.6pt, paragraph gap
// ~33pt (line-top to line-top). No letterhead/logo on this page.
#set page(
  paper: "us-letter",
  margin: 0pt,
  header: none,
  footer: none,
)
#set text(font: "Times New Roman", size: 12pt, lang: "en")
#set par(leading: 0pt, justify: false)

#let Y(y, sz) = (y + 0.229 * sz) * 1pt

// --- heading (18pt bold) ---
#place(dx: 211.7pt, dy: Y(69.8, 18))[#text(size: 18pt, weight: "bold")[ACKNOWLEDGEMENT]]

// --- body (three paragraphs, each at its reference line-top) ---
#let ack-para(y, body) = place(dx: 72pt, dy: Y(y, 12), block(width: 468.4pt)[
  #set par(justify: true, leading: 13.4pt)
  #set text(size: 12pt, hyphenate: false)
  #body
])

#ack-para(114.7)[
  I extend my heartfelt gratitude to the *Management*, along with *Dr. Purushotham Chippar*, Principal of *Vivekananda College of Engineering & Technology, Puttur*, *Dr. Radhika Shetty D S*, HOD of *Artificial Intelligence & Machine Learning* and *Prof. Nidhishree M P*, AICTE Activity Points Department Coordinator at *Vivekananda College of Engineering & Technology, Puttur*, for their unwavering support and provision of essential resources for the successful execution of this program.
]

#ack-para(255.8)[
  I am also deeply thankful Akanksha Charitable Trust / Department of Tourism, Mangalore / Local rickshaw drivers / A local residence, interior Vitla / Shri Anjaneya Temple, Bolwar, Puttur for their invaluable support in offering meaningful volunteering opportunities and resources.
]

#ack-para(333.0)[
  Lastly, I would like to express my sincere appreciation and respect to my parents, the teaching and non-teaching staff of the Department, and all my friends who have supported me, directly or indirectly, throughout my AICTE Activity Point Programme journey.
]

// --- signature ---
#place(dx: 384.4pt, dy: Y(480.4, 11.5), block[
  #set par(leading: 12.75pt)
  #text(fill: rgb("#333399"), weight: "bold")[#name \
  #usn]
])

#pagebreak()
