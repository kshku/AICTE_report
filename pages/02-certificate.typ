#import "../theme/styles.typ": *
#import "../vars.typ": *

// Certificate page — US Letter, every element positioned to the reference PDF.
// PDF yMins are Word line-box tops; glyph cap tops sit ~0.229em lower, so Y()
// adds that offset to land on the reference's *visual* position.
#set page(
  paper: "us-letter",
  margin: 0pt,
  header: none,
  footer: none,
)
#set text(font: "Times New Roman", size: 11.5pt, lang: "en")
#set par(leading: 0pt, justify: false)

#let Y(y, sz) = (y + 0.229 * sz) * 1pt

// --- letterhead (centred on the 612pt page) ---
#place(center + top, dy: Y(72.8, 13))[#text(fill: rgb("#BF0000"), weight: "bold", size: 13pt)[VIVEKANANDA COLLEGE OF ENGINEERING & TECHNOLOGY]]
#place(center + top, dy: Y(89.4, 10))[#text(size: 10pt)[[A Unit of Vivekananda Vidyavardhaka Sangha, Puttur (R)]]]
#place(center + top, dy: Y(102.5, 9))[#text(fill: rgb("#0000FF"), size: 9pt)[Affiliated to Visvesvaraya Technological University and Approved by AICTE New Delhi & Govt. of Karnataka]]
#place(center + top, dy: Y(115.0, 11.5))[#text(size: 11.5pt)[Nehru Nagara, Puttur – 574 203, DK, Karnataka, India]]
#place(center + top, dy: Y(146.6, 13))[#text(fill: rgb("#006EBF"), weight: "bold", size: 13pt)[DEPARTMENT OF ARTIFICIAL INTELLIGENCE & MACHINE LEARNING]]

// --- VCET logo (image extracted from the reference certificate page) ---
#place(dx: 227.76pt, dy: 162.72pt, image("/assets/vcet-logo-cert.png", width: 163.44pt, height: 119.76pt, fit: "stretch"))

// --- term heading ---
#place(center + top, dy: Y(292.3, 11.5))[#text(fill: rgb("#6E2E9F"), weight: "bold", style: "italic", size: 11.5pt)[AICTE Activity Point Programme CERTIFICATE]]

// --- body paragraph 1 (justified, width matches ref x=96.1..516.5) ---
#place(dx: 96.1pt, dy: Y(325.8, 11.5), block(width: 420.4pt)[
  #set par(justify: true, leading: 12.65pt)
  #set text(hyphenate: false)
  This is to certify that the *AICTE Activity Point Programme* has been successfully carried out by *#name-title #name* bearing *USN #usn,* bonafide student of *Vivekananda College of Engineering & Technology, Puttur* in partial fulfillment of the requirements for the award of degree of *Artificial Intelligence & Machine Learning* of *Visvesvaraya Technological University, Belagavi* during year *2023-27*.
])

// --- body paragraph 2 (justified) ---
#place(dx: 96.1pt, dy: Y(441.8, 11.5), block(width: 420.4pt)[
  #set par(justify: true, leading: 12.65pt)
  #set text(hyphenate: false)
  It is certified that all corrections/suggestions indicated for Internal Assessment have been incorporated in the report. The AICTE Activity Point Programme report has been approved as it satisfies the academic requirements in respect of AICTE Activity Point Programme for the said degree.
])

// --- signature grid (4 columns, centred at the reference x positions) ---
#let cx = (96.0, 233.0, 378.0, 521.0)
#let C(i, y, t) = place(center + top, dx: (cx.at(i) - 306) * 1pt, dy: Y(y, 11.5))[
  #text(weight: "bold", size: 11.5pt)[#t]
]

#for i in range(4) [#C(i, 581.0)[…………………]]
#for i in range(4) [#C(i, 600.4)[Signature]]
#C(0, 619.9)[Prof. Nidhishree M P]
#C(1, 619.9)[Dr. Radhika Shetty D S]
#C(2, 619.9)[Dr. Deepak K B]
#C(3, 619.9)[Dr. Purushothama Chippar]
#C(0, 639.4)[Faculty Incharge,]
#C(1, 639.4)[HOD]
#C(2, 640.2)[AICTE activity points]
#C(3, 639.3)[Principal]
#C(0, 659.0)[Dept. of AI]
#C(1, 659.2)[Dept. of AI]
#C(2, 659.5)[Coordinator of the college]
#C(3, 659.0)[VCET, Puttur]

#pagebreak()
