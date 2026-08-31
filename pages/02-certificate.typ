#import "../theme/styles.typ": *
#import "../theme/components.typ": dept-heading, signature-cell
#import "../vars.typ": *

#set par(leading: 0.65em)

#block[
  #set text(font: "Times New Roman")

  #align(center)[
    #text(fill: c-college, weight: "bold", size: 13pt)[VIVEKANANDA COLLEGE OF ENGINEERING & TECHNOLOGY] \
    #text(size: 10pt)[[A Unit of Vivekananda Vidyavardhaka Sangha, Puttur (R)]] \
    #text(fill: c-affil, size: 9pt)[Affiliated to Visvesvaraya Technological University and Approved by AICTE New Delhi & Govt. of Karnataka] \
    Nehru Nagara, Puttur – 574 203, DK, Karnataka, India
  ]

  #dept-heading()

  #v(-5mm)
  #align(center, image("/assets/vcet-logo2.png", height: 12%, fit: "stretch"))

  #align(center, text(fill: c-cert, weight: "bold", style: "italic")[AICTE Activity Point Programme CERTIFICATE])

  #v(4mm)
  #set par(justify: true)
  #block(inset: (left: 24.6pt, right: 24.6pt))[
    #set par(leading: 1em)
    #set text(hyphenate: false)
    #h(14.8pt)This is to certify that the *AICTE Activity Point Programme* has been successfully carried out by *#name-title #name* bearing *USN* *4VP23AI051*, bonafide student of *Vivekananda College of Engineering & Technology, Puttur* in partial fulfillment of the requirements for the award of degree of *Artificial Intelligence & Machine Learning* of *Visvesvaraya Technological University, Belagavi* during year 2027.
    It is certified that all corrections/suggestions indicated for Internal Assessment have been incorporated in the report. The AICTE Activity Point Programme report has been approved as it satisfies the academic requirements in respect of AICTE Activity Point Programme for the said degree.
  ]

  #set par(justify: false)

  #v(2.5cm)
  #move(
    dx: -1cm,
    box(
      width: 100% + 2cm,
      grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        column-gutter: 0pt,
        signature-cell[Prof. Nidhishree M P][Faculty Incharge],
        signature-cell[Dr. Radhika Shetty D S][HOD],
        signature-cell[Dr. Deepak K B][AICTE activity points][Coordinator of the college],
        signature-cell[Dr. Mahesh Prasanna K][Principal]
      )
    )
  )
]

#pagebreak()
