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

// --- body (paragraphs, each at its reference line-top) ---
#let ack-para(y, body) = place(dx: 72pt, dy: Y(y, 12), block(width: 468.4pt)[
  #set par(justify: true, leading: 13.4pt)
  #set text(size: 12pt, hyphenate: false)
  #body
])

#ack-para(114.7)[
  I express my heartfelt gratitude to the *Management* of *Vivekananda College of Engineering & Technology (VCET), Puttur*, for providing the necessary support and resources for the successful completion of my AICTE Activity Point Programme. I sincerely thank *Dr. Purushothama Chippar*, Principal, VCET, Puttur, for his valuable guidance and encouragement. I am also grateful to *Dr. Radhika Shetty D S*, Head of the Department of *Artificial Intelligence & Machine Learning*, for her constant support and guidance throughout the programme.
]

#ack-para(240.0)[
  I extend my sincere thanks to *Dr. Deepak K B*, AICTE Activity Points Coordinator of the College, and *Prof. Nidhishree M P*, AICTE Activity Points Department Coordinator, for their valuable coordination, guidance, and support. I am thankful to *Akanksha Charitable Trust, Puttur*, *Shri Anjaneya Temple, Bolwar, Puttur*, the *local rickshaw drivers*, a *local residence in interior Vitla*, and the *Department of Tourism, Mangalore* for providing meaningful opportunities and necessary support for the successful execution of the activities.
]

#ack-para(365.0)[
  Finally, I express my sincere gratitude to my parents, the teaching and non-teaching staff, and my friends for their constant encouragement and support throughout my AICTE Activity Point Programme journey. I sincerely acknowledge everyone who contributed to making this programme a successful and enriching experience.
]

// --- signature ---
#place(dx: 384.4pt, dy: Y(480.4, 11.5), block[
  #set par(leading: 12.75pt)
  #text(fill: rgb("#333399"), weight: "bold")[#name \
  #usn]
])

#pagebreak()
