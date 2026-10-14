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

#let frame-rule-color = rgb("#5f1f1f")

#let frame-double-rule() = box(width: 100%, height: 5.4pt)[
  #place(top + left, rect(width: 100%, height: 3pt, fill: frame-rule-color))
  #place(top + left, dy: 4.6pt, rect(width: 100%, height: 0.75pt, fill: frame-rule-color))
]

#let chapter-header() = {
  set text(size: 10pt)
  grid(
    columns: (1fr, auto),
    align(left)[AICTE ACTIVITY POINTS REPORT],
    align(right)[2026-27],
  )
  v(-10.2pt)
  frame-double-rule()
  v(-17.38pt)
}

#let chapter-footer() = {
  set text(size: 10pt)
  v(-16.73pt)
  frame-double-rule()
  v(-9.3pt)
  grid(
    columns: (1fr, auto),
    align(left)[Department of Artificial Intelligence & Machine Learning, V. C. E. T, Puttur.],
    align(right)[Page #context counter(page).display("1")],
  )
}

#let chapter-heading(label) = align(left)[
  #text(weight: "bold", size: 15pt)[#label]
]

#let activity-title(label, centered: false) = align(if centered {center} else {left})[
  #text(weight: "bold", size: 17pt)[#label]
]

// Scoped `#show heading` rule for the chapters. The block spacing values are
// tuned per chapter so the heading-adjacent gaps match the reference page by
// page (body->heading and heading->body stay uniform, while the chapter-opening
// banner/title gaps are handled with `#v()` in the page files).
#let heading-style(above: 24.9pt, below: 15.6pt) = it => block(above: above, below: below)[#text(weight: "bold", size: 15pt)[#it.body]]

#let chapter-page(body, start: none) = {
  set page(
    numbering: "1",
    margin: (top: 68.1pt, right: 94.2pt, bottom: 62pt, left: 110.2pt),
    header: chapter-header(),
    footer: chapter-footer(),
  )
  set par(leading: 11.4pt)
  if start != none {
    counter(page).update(start)
  }
  body
}
