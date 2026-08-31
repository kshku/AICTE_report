// Reusable letterhead and signature building blocks.
#import "styles.typ": *

#let college-name-block() = align(center)[
  #text(fill: c-college, weight: "bold", size: 13pt)[
    VIVEKANANDA COLLEGE OF ENGINEERING & TECHNOLOGY
  ]
]

#let college-sub-block() = align(center)[
  #text(size: 10pt)[[A Unit of Vivekananda Vidyavardhaka Sangha, Puttur (R)] \
  ]
  #text(fill: c-affil, size: 9pt)[Affiliated to Visvesvaraya Technological University and Approved by AICTE New Delhi & Govt. of Karnataka \
  ]
  Nehru Nagara, Puttur – 574 203, DK, Karnataka, India
]

#let dept-heading() = align(center)[
  #text(fill: c-dept, weight: "bold", size: 13pt)[
    DEPARTMENT OF ARTIFICIAL INTELLIGENCE & MACHINE LEARNING
  ]
]

#let signature-cell(..lines) = align(center)[
  #text(weight: "bold")[
    ………………… \
    Signature \
    #lines.pos().join("\n")
  ]
]

#let frame-rule-color = rgb("#622423")

#let frame-double-rule() = {
  line(length: 100%, stroke: 0.75pt + frame-rule-color)
  v(-1.45em)
  line(length: 100%, stroke: 3pt + frame-rule-color)
}

#let chapter-header() = {
  set text(size: 10pt)
  align(right)[2026-27]
  v(-5pt)
  frame-double-rule()
}

#let chapter-footer() = {
  set text(size: 10pt)
  frame-double-rule()
  v(-5pt)
  grid(
    columns: (1fr, auto),
    align(left)[Department of Artificial Intelligence & Machine Learning, V. C. E. T, Puttur.],
    align(right)[Page #context counter(page).display("1")],
  )
}

#let chapter-heading(label) = align(left)[
  #text(weight: "bold", size: 16pt)[#label]
]

#let activity-title(label, centered: false) = align(if centered {center} else {left})[
  #text(weight: "bold", size: 18pt)[#label]
]

#let chapter-page(body, start: none) = {
  set page(
    numbering: "1",
    header: chapter-header(),
    footer: chapter-footer(),
  )
  if start != none {
    counter(page).update(start)
  }
  body
}
