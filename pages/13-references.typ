#import "../theme/components.typ": chapter-page

#chapter-page[

  #align(center, text(weight: "bold", size: 17pt)[REFERENCES]) <refs>

  #v(-7.6pt)
  #set par(justify: true, spacing: 24.8pt, leading: 10.6pt, first-line-indent: 0pt)
  #set enum(numbering: n => "[" + str(n) + "]", spacing: 10.7pt)
  #show link: it => underline(text(fill: rgb("#3737ff"), it))

  + Referred to an article titled "Career Options After 10th" on career guidance after schooling to guide students: #link("https://en.vikaspedia.in/viewcontent/education/career-guidance/career-options/career-options-after-10th?lgn=en")[https://en.vikaspedia.in/viewcontent/education/career-guidance/career-options/career-options-after-10th?lgn=en]

  + Referred to a website on digital payments for understanding cashless transaction systems: #link("https://www.cashfree.com/blog/digital-payment-system/")[https://www.cashfree.com/blog/digital-payment-system/]

  + Referred to a website on waste management practices for understanding garbage disposal systems: #link("https://picvisa.com/waste-management-system/")[https://picvisa.com/waste-management-system/]

  + Referred to a website on tourism and heritage preservation for understanding sustainable tourism promotion: #link("https://www.unwto.org/sustainable-development")[https://www.unwto.org/sustainable-development]

  #set par(justify: false)
]
