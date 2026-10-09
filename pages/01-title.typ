#import "../theme/styles.typ": *
#import "../vars.typ": *

// Front matter is US Letter (matches the reference docx front sections).
// Every text line is positioned to reproduce the reference PDF's *visual*
// baseline: Word's reported yMin is the line-box top (ascent), which sits
// ~0.229em above the cap-height glyph top, so we add that offset.
#set page(
  paper: "us-letter",
  margin: 0pt,
  header: none,
  footer: none,
)
#set text(font: "Times New Roman", size: 12pt, lang: "en")
#set par(leading: 0pt, justify: false)

#let b = rgb("#2E5395")
#let red = rgb("#FF0000")
// y-position helper: reference line-box top + (Word ascent - cap height).
#let Y(y, sz) = (y + 0.229 * sz) * 1pt

// --- university header (Heading8 12pt bold #2E5395, hanging indent) ---
#place(dx: 182.15pt, dy: Y(73.4, 12))[
  #text(fill: b, weight: "bold")[VISVESVARAYA TECHNOLOGICAL UNIVERSITY]
]
#place(dx: 213.15pt, dy: Y(90.4, 12))[
  #text(fill: b, weight: "bold")[JNANA SANGAMA, BELAGAVI- 590 018]
]

// --- VTU logo (image extracted from the reference title page) ---
#place(dx: 268.92pt, dy: 106.44pt, image("/assets/vtu-logo-ref.png", width: 92.04pt, height: 119.4pt, fit: "stretch"))

#place(center + top, dy: Y(227.8, 12))[#text(fill: b, weight: "bold")["AICTE Activity Point Programme"]]

#place(center + top, dy: Y(257.3, 12))[#text(fill: red, weight: "bold", style: "italic")[Submitted in Partial Fulfillment for the Award of Degree of]]
#place(center + top, dy: Y(278.8, 12))[#text(fill: b, weight: "bold", style: "italic")[Bachelor of Engineering]]
#place(center + top, dy: Y(293.9, 12))[#text(fill: red, weight: "bold", style: "italic")[in]]
#place(center + top, dy: Y(309.1, 12))[#text(fill: rgb("#2D5294"), weight: "bold")[Artificial Intelligence & Machine Learning]]

#place(center + top, dy: Y(340.8, 12))[#text(fill: red)[Submitted by]]
#place(center + top, dy: Y(355.6, 12))[#text(fill: b, weight: "bold")[#name]]
#place(center + top, dy: Y(370.2, 12))[#text(fill: b, weight: "bold")[#usn]]

#place(center + top, dy: Y(399.8, 12))[#text(fill: red, weight: "bold")[Department AICTE Activity Faculty Incharge]]
#place(center + top, dy: Y(414.7, 12))[#text(fill: b, weight: "bold")[Prof. Nidhishree M P]]
#place(center + top, dy: Y(429.4, 12))[#text(fill: b, weight: "bold")[Assistant Professor]]

#place(center + top, dy: Y(459.0, 12))[#text(fill: red, weight: "bold")[AICTE Co-ordinator of the College]]
#place(center + top, dy: Y(473.9, 12))[#text(fill: b, weight: "bold")[Dr. Deepak K B]]
#place(center + top, dy: Y(488.6, 12))[#text(fill: b, weight: "bold")[Associate Professor]]

// --- college logo: image extracted from the reference title page ---
#place(dx: 244.92pt, dy: 517.68pt, image("/assets/vcet-logo1-ref.png", width: 140.04pt, height: 102.6pt, fit: "stretch"))

// horizontal rule above the department block
#place(dx: 70.56pt, dy: 625.44pt, line(length: 471pt, stroke: 1.44pt))

#place(center + top, dy: Y(626.9, 13))[#text(fill: rgb("#006EC0"), weight: "bold", size: 13pt)[DEPARTMENT OF ARTIFICIAL INTELLIGENCE & MACHINE LEARNING]]
#place(center + top, dy: Y(644.2, 14))[#text(fill: rgb("#C00000"), weight: "bold", size: 14pt)[VIVEKANANDA COLLEGE OF ENGINEERING & TECHNOLOGY]]
#place(center + top, dy: Y(662.5, 10))[#text(size: 10pt)[[A Unit of Vivekananda Vidyavardhaka Sangha, Puttur (R)]]]
#place(center + top, dy: Y(675.6, 9))[#text(fill: rgb("#0000FF"), size: 9pt)[Affiliated to Visvesvaraya Technological University and Approved by AICTE New Delhi & Govt. of Karnataka]]
#place(center + top, dy: Y(687.5, 11.5))[#text(size: 11.5pt)[Nehru Nagara, Puttur – 574 203, DK, Karnataka, India]]
#place(center + top, dy: Y(703.4, 12))[#text(fill: red, weight: "bold")[MAY 2027]]

#pagebreak()
