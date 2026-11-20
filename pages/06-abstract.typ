#import "../theme/styles.typ": *

// ABSTRACT — US Letter, positioned to the reference PDF.
// Body column is [71.4, 538.9]pt at 11.5pt, justified, with a uniform
// 19.8pt line pitch and no extra gap between paragraphs.
#set page(
  paper: "us-letter",
  margin: (top: 127.53pt, bottom: 20pt, left: 71.4pt, right: 73.1pt),
)
#set text(font: "Times New Roman", size: 11.5pt)
#set par(justify: true, leading: 11.8pt, spacing: 11.8pt)

// Reference pdftotext line boxes sit 0.229em above Typst's placed top edge.
#let Y(y, sz) = (y + 0.229 * sz) * 1pt

// `place` is relative to the content area (inside the page margins).
#place(left + top, dx: 249.8pt - 71.4pt, dy: Y(91.6, 14) - 127.53pt)[#text(weight: "bold", size: 14pt)[ABSTRACT]]

The AICTE Activity Point Programme is a structured non-credit initiative aimed at connecting academic learning with community engagement and societal development. It focuses on developing practical skills, teamwork, communication, environmental responsibility, and social awareness through participation in real-world activities.

Activity 1 involved helping local schools to achieve good results and enhance enrolment in higher, technical, and vocational education through a summer camp at Vivekananda College of Engineering and Technology, Puttur, organized by Akanksha Charitable Trust, Puttur, with VCET and Tata Consultancy Services (TCS). The activity provided rural students with practical exposure to HTML, CSS, Canva, Office Tools, G-Suite, and the Sustainable Development Goals (SDGs), along with guidance on higher education, career opportunities, and hackathon participation.

Activity 2 focused on tourism promotion and innovative approaches through a visit to Shri Anjaneya Temple, Bolwar, Puttur. The activity involved exploring and documenting a lesser-known heritage site and understanding how digital awareness, photography, online information sharing, and social media can be used to promote local cultural and religious tourism while encouraging responsible tourism practices.

Activity 3 dealt with facilitating 100% digitized money transactions among local rickshaw drivers. The activity provided practical exposure to digital payment methods such as UPI, QR-code payments, and mobile banking, and helped in understanding the importance of digital literacy, basic security precautions, and the advantages of cashless transactions in everyday life.

Activity 4 addressed managing and developing garbage disposal systems at a local residence in interior Vitla. The activity provided practical understanding of household waste management through a biogas compost unit, highlighting its role in sustainable waste disposal, renewable energy generation, and the production of organic manure.

Activity 5 focused on contributing to the Swachh Bharat Initiative through a beach cleanliness and environmental awareness activity at Tannirbhavi Beach, Mangaluru, in association with the Department of Tourism, Mangalore. The activity involved active participation in cleaning the beach and created awareness about proper waste disposal, civic responsibility, and the protection of coastal and marine environments.

These activities helped in enhancing practical knowledge, improving awareness of educational, environmental, financial, and societal issues, and developing essential skills such as teamwork, communication, problem-solving, responsibility, and social awareness.

#pagebreak()
#set page(..report-page)
