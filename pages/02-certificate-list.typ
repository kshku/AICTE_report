#import "../theme/styles.typ": *
#import "../vars.typ": *

// CERTIFICATE PHOTOCOPY pages. Reference is US Letter with no header/footer;
// the heading is 18pt bold #434343 with its glyph top at ~95.5pt. The
// certificates themselves are our own (the reference's are different people's),
// so we only reproduce the heading position and keep each certificate centred.
#set page(
  paper: "us-letter",
  margin: 0pt,
  header: none,
  footer: none,
)

#place(dx: 193.2pt, dy: 95.52pt)[
  #text(fill: rgb("#434343"), weight: "bold", size: 18pt)[CERTIFICATE PHOTOCOPY]
]

#for a in completed-activities [
  #place(center + top, dy: 130pt, box(
    width: 541.2pt,
    height: 600pt,
    image(a.certificate, width: 100%, height: 100%, fit: "contain"),
  ))
  #pagebreak()
]
