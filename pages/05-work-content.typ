#import "../theme/styles.typ": *

#set par(leading: 0.65em)

#let activities = (
  ("1", "Helping local schools to achieve good result & enhance their enrolment in Higher/ Technical/ Vocational Education", "05-05-2025 – 17-05-2025", "2", "80"),
  ("2", "Preparing an actionable business proposal for enhancing the village income", "", "", ""),
  ("3", "Developing Sustainable Water Management system", "", "", ""),
  ("4", "Tourism Promotion Innovative Approaches", "", "2", "80"),
  ("5", "Promotion of Appropriate Technologies", "", "", ""),
  ("6", "Reduction in Energy Consumption", "", "", ""),
  ("7", "To Skill rural population", "", "", ""),
  ("8", "Facilitating 100% Digitized money transactions", "20-11-2025 – 04-12-2025", "2", "80"),
  ("9", "Setting of the information imparting club for women leading to contribution in social and economic issues", "", "", ""),
  ("10", "Developing and managing efficient garbage disposal system", "13-12-2025 – 27-12-2025", "2", "80"),
  ("11", "To assist the marketing of rural produce", "", "", ""),
  ("12", "Food preservation/packaging", "", "", ""),
  ("13", "Automation of local activities", "", "", ""),
  ("14", "Spreading public awareness under rural outreach programmes", "", "", ""),
  ("15", "Contribution to any national level initiative of Government of India, For e.g. Digital India/ Skill India/ Swachh Bharat Internish etc", "07-10-2025 – 21-10-2025", "2", "80"),
  ("16", "Creating an awareness regarding rain water harvesting in urban and rural area", "", "", ""),
)

#set page(margin: 1.5cm)

#set text(size: 8pt)
#set table(stroke: 0.1mm)

#align(center, underline(text(weight: "bold", size: 15pt)[Work Content]))
#table(
  columns: (13mm, 66mm, 20mm, 15.5mm, 16mm, 30mm, 20mm),
  align: (center + horizon, left + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
  table.header(
    [*Sl. No.*], align(center)[*Activity Heads*], [*From date-To date*], [*Number of Week*], [*Total No of Hours*], [*Performance Appraisal / Points earned (To be Filled by Coordinators)*], [*Remarks*],
  ),
  ..activities.map(a => (
    table.cell(a.at(0)),
    table.cell(a.at(1)),
    table.cell(a.at(2)),
    table.cell(a.at(3)),
    table.cell(a.at(4)),
    table.cell[],
    table.cell[],
  )).flatten(),
  table.cell[ \  \ ], table.cell[], table.cell[], table.cell[], table.cell[], table.cell[], table.cell[],
  table.cell[ \  \ ], table.cell[], table.cell[], table.cell[], table.cell[], table.cell[], table.cell[],
  table.cell(colspan: 3)[*TOTAL ACTIVITY POINTS EARNED*], table.cell[], table.cell[], table.cell[], table.cell[],
)
