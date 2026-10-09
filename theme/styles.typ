// Theme: colors, page geometry, shared sizes for the AICTE report.
// Values extracted from "AICTE report format.docx".

#let c-vtu = rgb("#2E5395") // VTU heading, programme title, names
#let c-red = rgb("#FF0000") // submission line, role labels
#let c-dept = rgb("#006FC0") // department heading
#let c-college = rgb("#C00000") // college name, month-year
#let c-affil = rgb("#0000FF") // affiliation line
#let c-gray = rgb("#434343") // photocopy title, abstract hint
#let c-sign = rgb("#333399") // student signature blocks
#let c-cert = rgb("#6F2F9F") // certificate heading

#let body-size = 11.5pt

#let report-page = (
  paper: "us-letter",
  margin: (top: 65.5pt, right: 94.2pt, bottom: 73.7pt, left: 110.2pt),
)
