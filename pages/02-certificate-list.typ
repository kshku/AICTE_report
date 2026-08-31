#import "../theme/styles.typ": *
#import "../vars.typ": *

#let certificate-photocopy(path) = (
  align(center, image(path, width: 165mm, height: 232mm, fit: "contain"))
)

#align(center, text(fill: c-gray, weight: "bold", size: 18pt)[CERTIFICATE PHOTOCOPY])

#for a in completed-activities {
  certificate-photocopy(a.certificate)
  pagebreak()
}
