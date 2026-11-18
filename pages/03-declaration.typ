#import "../theme/styles.typ": *
#import "../vars.typ": *

// DECLARATION page — US Letter, positioned to the reference PDF.
// Front-matter text column is [36, 594]pt, so "centred" headings sit at x=315,
// not the page centre (306). Body column is [96.1, 516.6]pt with a ~11.9pt
// first-line indent; list line pitch is 17.8pt.
#set page(
  paper: "us-letter",
  margin: 0pt,
  header: none,
  footer: none,
)
#set text(font: "Times New Roman", size: 11.5pt, lang: "en")
#set par(leading: 0pt, justify: false)

#let Y(y, sz) = (y + 0.229 * sz) * 1pt

// --- letterhead ---
#place(center + top, dy: Y(90.1, 13))[#text(fill: rgb("#BF0000"), weight: "bold", size: 13pt)[VIVEKANANDA COLLEGE OF ENGINEERING & TECHNOLOGY]]
#place(center + top, dy: Y(106.7, 10))[#text(size: 10pt)[[A Unit of Vivekananda Vidyavardhaka Sangha, Puttur (R)]]]
#place(center + top, dy: Y(119.8, 9))[#text(fill: rgb("#0000FF"), size: 9pt)[Affiliated to Visvesvaraya Technological University and Approved by AICTE New Delhi & Govt. of Karnataka]]
#place(center + top, dy: Y(132.0, 11.5))[#text(size: 11.5pt)[Nehru Nagara, Puttur – 574 203, DK, Karnataka, India]]
#place(center + top, dy: Y(163.9, 13))[#text(fill: rgb("#006EBF"), weight: "bold", size: 13pt)[DEPARTMENT OF ARTIFICIAL INTELLIGENCE & MACHINE LEARNING]]

// --- VCET logo (image extracted from the reference declaration page) ---
#place(dx: 235.2pt, dy: 180.72pt, image("/assets/vcet-logo-decl.png", width: 163.2pt, height: 119.76pt, fit: "stretch"))

// --- heading (centred in the [36,594] column ⇒ x≈315) ---
#place(center + top, dx: 8.9pt, dy: Y(313.9, 11.5))[#text(weight: "bold")[DECLARATION]]

// --- declaration body ---
#place(dx: 96.1pt, dy: Y(347.1, 11.5), block(width: 420.5pt)[
  #set par(justify: true, leading: 11.95pt)
  #set text(hyphenate: false)
  #h(11.9pt)I, *#name-title #name* bearing the *USN*:*#usn*, student of Bachelor of Engineering in *Artificial Intelligence & Machine Learning, Vivekananda College of Engineering & Technology, Puttur ,* hereby declare that the *AICTE Activity Point Programme* work has been carried out by me under the supervision and guidance of Department Staff Coordinators submitted by me as a partial fulfillment for the award of *Bachelor of Engineering* degree in *Artificial Intelligence & Machine Learning* from *Visvesvaraya Technological University, Belagavi* during year *2023-27.*
])

#place(dx: 96.1pt, dy: Y(505.8, 11.5), block(width: 420.5pt)[
  #set par(justify: true, leading: 11.95pt)
  #set text(hyphenate: false)
  #h(11.8pt)I hereby declared that the AICTE activity point work has been carried out at following partner organizations:
])

// --- partner organizations (our own list) ---
#place(dx: 96.1pt, dy: Y(560.7, 11.5), block(width: 420.5pt)[
  #set par(leading: 9.95pt, justify: false)
  1. Akanksha Charitable Trust \
  2. Department of Tourism, Mangalore \
  3. Local rickshaw drivers \
  4. A local residence, interior Vitla \
  5. Shri Anjaneya Temple, Bolwar, Puttur
])

// --- signature ---
#place(dx: 372.4pt, dy: Y(673.6, 11.5), block[
  #set par(leading: 12.75pt)
  #text(fill: rgb("#333399"), weight: "bold")[Signature with date: \
  #name \
  #usn]
])

#pagebreak()
