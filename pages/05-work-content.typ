#import "../theme/styles.typ": *
#import "../vars.typ": completed-activities

// WORK CONTENT — US Letter, positioned to the reference PDF.
// Everything is 8pt Times New Roman; the table is an absolute grid
// (borders drawn as filled rects) so every line matches the reference.
#set page(paper: "us-letter", margin: 0pt)
#set text(font: "Times New Roman", size: 8pt)

// Reference pdftotext line boxes sit 0.229em above Typst's placed top edge.
#let Y(y) = (y + 0.229 * 8) * 1pt
#let C(x, y, body) = place(center + top, dx: (x - 306) * 1pt, dy: Y(y))[#body]
#let L(x, y, body) = place(left + top, dx: x * 1pt, dy: Y(y))[#body]
#let CB(x, y, body) = place(center + top, dx: (x - 306) * 1pt, dy: Y(y))[#text(weight: "bold")[#body]]
#let LB(x, y, body) = place(left + top, dx: x * 1pt, dy: Y(y))[#text(weight: "bold")[#body]]

// Title (bold, underlined).
#place(center + top, dx: (298.85 - 306) * 1pt, dy: (72.7 + 0.229 * 15) * 1pt)[#text(weight: "bold", size: 15pt)[Work Content]]
#place(dx: 252.7pt, dy: 87.7pt)[#rect(width: 92.3pt, height: 1.5pt, fill: black)]

// Grid.
#let ys = (102.4, 139.8, 167.9, 200.6, 224.4, 248.0, 271.8, 295.6, 319.3, 342.7, 375.8, 408.6, 432.2, 456.0, 479.8, 512.5, 554.6, 587.4, 611.2, 634.9, 654.0)
#for y in ys { place(dx: 42.8pt, dy: y * 1pt)[#rect(width: 526.1pt, height: 0.5pt, fill: black)] }
#for x in (42.8, 330.7, 375.7, 424.1, 511.9, 568.9) { place(dx: x * 1pt, dy: 102.4pt)[#rect(width: 0.5pt, height: 551.6pt, fill: black)] }
#for x in (77.5, 272.4) { place(dx: x * 1pt, dy: 102.4pt)[#rect(width: 0.5pt, height: 532.5pt, fill: black)] }

// Column headers (bold).
#LB(43.3, 117.5)[Sl. No.]
#CB(176.6, 117.5)[Activity Heads]
#CB(302.4, 117.4)[From date- To]
#CB(303.2, 126.5)[date]
#CB(354.4, 112.7)[Number of]
#CB(355.0, 121.7)[Week]
#CB(401.1, 112.7)[Total No of]
#CB(401.7, 121.7)[Hours]
#CB(469.8, 103.5)[Performance Appraisal /]
#CB(469.9, 113.0)[Points earned]
#CB(470.3, 121.5)[(To be Filled by]
#CB(470.0, 130.0)[Coordinators)]
#CB(541.5, 117.5)[Remarks]

// Row numbers (bold, centred in column 1).
#CB(60.3, 150.3)[1]
#CB(60.3, 180.5)[2]
#CB(60.3, 209.0)[3]
#CB(60.3, 232.7)[4]
#CB(60.3, 256.0)[5]
#CB(60.3, 279.8)[6]
#CB(60.3, 303.5)[7]
#CB(60.3, 327.3)[8]
#CB(60.3, 355.7)[9]
#CB(59.9, 388.5)[10]
#CB(59.9, 416.8)[11]
#CB(59.9, 440.3)[12]
#CB(59.9, 464.0)[13]
#CB(59.9, 492.4)[14]
#CB(59.9, 529.8)[15]
#CB(59.9, 567.3)[16]

// Activity heads (regular, left aligned).
#L(83.6, 140.7)[Helping local schools to achieve good result & enhance]
#L(83.6, 149.7)[their enrolment in Higher/ Technical/ Vocational]
#L(83.6, 158.7)[Education]
#L(85.1, 176.0)[Preparing an actionable business proposal for enhancing]
#L(85.1, 185.2)[the village income]
#L(85.0, 209.0)[Developing Sustainable Water Management system]
#L(85.0, 232.7)[Tourism Promotion Innovative Approaches]
#L(85.0, 256.0)[Promotion of Appropriate Technologies]
#L(85.0, 279.8)[Reduction in Energy Consumption]
#L(85.0, 303.5)[To Skill rural population]
#L(85.0, 327.3)[Facilitating 100% Digitized money transactions]
#L(85.1, 350.9)[Setting of the information imparting club for women]
#L(85.1, 359.9)[leading to contribution in social and economic issues]
#L(85.1, 383.8)[Developing and managing efficient garbage disposal]
#L(85.1, 393.2)[system]
#L(85.0, 416.8)[To assist the marketing of rural produce]
#L(85.0, 440.3)[Food preservation/packaging]
#L(85.0, 464.0)[Automation of local activities]
#L(85.1, 487.7)[Spreading public awareness under rural outreach]
#L(85.1, 497.2)[programmes]
#L(85.1, 520.5)[Contribution to any national level initiative of]
#L(85.1, 530.0)[Government of India, For e.g. Digital India/ Skill India/]
#L(85.1, 539.2)[Swachh Bharat Internish etc]
#L(85.1, 562.6)[Creating an awareness regarding rain water harvesting]
#L(85.1, 572.0)[in urban and rural area]

// Completed activities: date (slash format, wrapped), weeks and hours.
#let acts = completed-activities
#let dateparts(r) = {
  let p = r.split("–")
  (p.at(0).trim().replace("-", "/"), p.at(1).trim().replace("-", "/"))
}
#let rows = ((top: 139.8, i: 0), (top: 224.4, i: 1), (top: 319.3, i: 2), (top: 375.8, i: 3), (top: 512.5, i: 4))
#for r in rows {
  let dp = dateparts(acts.at(r.i).date-range)
  L(280.8, r.top + 1.1)[#dp.at(0) –]
  L(280.8, r.top + 10.3)[#dp.at(1)]
  C(354.0, r.top + 8.2)[#str(acts.at(r.i).weeks)]
  C(400.5, r.top + 8.2)[#str(acts.at(r.i).hours)]
}

// Footer row (bold).
#CB(188.2, 640.7)[TOTAL ACTIVITY POINTS EARNED]

#pagebreak()
#set page(..report-page)
