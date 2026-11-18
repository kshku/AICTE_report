#import "../theme/styles.typ": *

#set page(margin: (x: 3cm))

#align(center, text(weight: "bold", size: 18pt)[TABLE OF CONTENTS])

#set text(size: 12pt)

// Auto page numbers: read the page counter at a labelled heading/banner.
// `numbering("00", ..)` zero-pads to two digits like the reference TOC.
#let pg(l) = context {
  let n = counter(page).at(locate(l)).first()
  if n < 10 { "0" + str(n) } else { str(n) }
}

#grid(
  columns: (1fr, auto),
  row-gutter: 16.5pt,
  align: (left, right),
  text(weight: "bold")[Title], text(weight: "bold")[Page No],
  text(weight: "bold", size: 14pt)[CHAPTER 1], text(weight: "bold", size: 14pt)[#pg(<ch1>)],
  text(weight: "bold", size: 14pt)[INTRODUCTION], text(weight: "bold", size: 14pt)[#pg(<intro>)],
  text(weight: "bold", size: 14pt)[CHAPTER 2], text(weight: "bold", size: 14pt)[#pg(<ch2>)],
  text(weight: "bold")[Helping Local Schools to Achieve Good Results and Enhance Enrolment in Higher, Technical and Vocational Education], text(weight: "bold")[#pg(<act1>)],
  [2.1  Overview], [#pg(<s2-1>)],
  [2.2  Use of Technology], [#pg(<s2-2>)],
  [2.3  Sustainable Development Best Practices], [#pg(<s2-3>)],
  [2.4  Outcome of the Activity], [#pg(<s2-4>)],
  [#text(weight: "bold")[Tourism Promotion and Innovative Approaches]], [#text(weight: "bold")[#pg(<act2>)]],
  [2.5  Overview], [#pg(<s2-5>)],
  [2.6  Use of Technology], [#pg(<s2-6>)],
  [2.7  Sustainable Development Best Practices], [#pg(<s2-7>)],
  [2.8  Outcome of the Activity], [#pg(<s2-8>)],
  [#text(weight: "bold")[Facilitating 100% Digitized Money Transactions]], [#text(weight: "bold")[#pg(<act3>)]],
  [2.9  Overview], [#pg(<s2-9>)],
  [2.10  Use of Technology], [#pg(<s2-10>)],
  [2.11  Sustainable Development Best Practices], [#pg(<s2-11>)],
  [2.12  Outcome of the Activity], [#pg(<s2-12>)],
  [#text(weight: "bold")[Managing and Developing Garbage Disposal Systems]], [#text(weight: "bold")[#pg(<act4>)]],
  [2.13  Overview], [#pg(<s2-13>)],
  [2.14  Use of Technology], [#pg(<s2-14>)],
  [2.15  Sustainable Development Best Practices], [#pg(<s2-15>)],
  [2.16  Outcome of the Activity], [#pg(<s2-16>)],
  [#text(weight: "bold")[Contribution to Swachh Bharat Initiative – Beach Cleanliness and Environmental Awareness]], [#text(weight: "bold")[#pg(<act5>)]],
  [2.17  Overview], [#pg(<s2-17>)],
  [2.18  Use of Technology], [#pg(<s2-18>)],
  [2.19  Sustainable Development Best Practices], [#pg(<s2-19>)],
  [2.20  Outcome of the Activity], [#pg(<s2-20>)],
  [#text(weight: "bold", size: 14pt)[CHAPTER 3: OVERALL LEARNINGS]], [#text(weight: "bold", size: 14pt)[#pg(<ch3>)]],
  [3.1  Innovative approaches taken], [#pg(<s3-1>)],
  [3.2  Research done], [#pg(<s3-2>)],
  [3.3  Knowledge and Understanding gained], [#pg(<s3-3>)],
  [3.4  Professional Values and best practices incorporated], [#pg(<s3-4>)],
  [3.5  Areas for further development], [#pg(<s3-5>)],
  [3.6  Challenges and solutions], [#pg(<s3-6>)],
  [3.7  Feedback and continuous improvement], [#pg(<s3-7>)],
  [#text(weight: "bold", size: 14pt)[CHAPTER 4: DOCUMENTATION OF ACTIVITIES]], [#text(weight: "bold", size: 14pt)[#pg(<ch4>)]],
  [4.1 Activity 1: Helping Local Schools to Achieve Good Results and Enhance Enrolment ], [#pg(<s4-1>)],
  [4.2 Activity 2: Tourism Promotion and Innovative Approaches], [#pg(<s4-2>)],
  [4.3 Activity 3: Facilitating 100% Digitized Money Transactions], [#pg(<s4-3>)],
  [4.4 Activity 4: Managing and Developing Garbage Disposal Systems], [#pg(<s4-4>)],
  [4.5 Activity 5: Contribution to Swachh Bharat Initiative – Beach Cleanliness and Environmental Awareness], [#pg(<s4-5>)],
  [#text(weight: "bold", 14pt)[CHAPTER 5]], [#text(weight: "bold", 14pt)[#pg(<ch5>)]],
  [5.1 Conclusion], [#pg(<s5-1>)],
  [#text(weight: "bold")[REFERENCES]], [#text(weight: "bold")[#pg(<refs>)]],
)
