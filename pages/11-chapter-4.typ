#import "../theme/styles.typ": *
#import "../theme/components.typ": chapter-page, chapter-heading
#import "../vars.typ": completed-activities

#chapter-page[
  #chapter-heading[CHAPTER 4]
  #align(center, text(weight: "bold", size: 18pt)[DOCUMENTATION OF ACTIVITIES])
]

#for a in completed-activities {
  pagebreak()
  chapter-page[
    #set par(justify: true)
    #text(weight: "bold", size: 16pt)[4.#a.report-num Activity #a.report-num: #a.title]
    #v(3mm)
    #align(center, text(size: 10pt)[#a.caption])
    #v(4mm)
    #align(center, image(a.image, width: 150mm, fit: "contain"))
    #v(1fr)
  ]
}

#pagebreak()
