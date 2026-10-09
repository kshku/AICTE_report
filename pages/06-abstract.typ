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

The AICTE Activity Point Programme connects classroom learning with service-oriented work in the community. It gives students an opportunity to learn from real situations while strengthening communication, teamwork, problem-solving, environmental awareness, digital literacy, and social responsibility.

Activity 1 supported rural students through a Summer Camp at Vivekananda College of Engineering and Technology (VCET), Puttur. Training in HTML, CSS, Canva, Office Tools, G-Suite, and SDGs was combined with guidance on higher education, careers, and future planning. Hackathon guidance further encouraged problem-solving, teamwork, communication, and digital skills.

Activity 2 contributed to the Swachh Bharat Initiative at Tannirbhavi Beach, Mangaluru. Students participated in cleaning the beach and discussed responsible waste disposal, civic duty, and the protection of coastal environments.

Activity 3 addressed 100% digitized money transactions among local rickshaw drivers. The activity demonstrated UPI, QR-code payments, mobile banking, and other digital payment methods, along with basic security precautions and the advantages of cashless transactions.

Activity 4 focused on managing and developing garbage disposal systems at a local residence in interior Vitla. The activity introduced biogas compost units as a sustainable method for waste disposal, renewable energy generation, and production of organic manure.

Activity 5 focused on tourism promotion and innovative approaches at Shri Anjaneya Temple, Bolwar, Puttur. The activity involved exploring and documenting a lesser-known heritage site and understanding the use of digital awareness, photography, online information sharing, and social media promotion.

Overall, these five activities provided meaningful practical and community-based learning experiences. They enhanced awareness about education, environmental protection, digital financial systems, sustainable waste management, renewable energy, and cultural heritage while developing essential skills such as communication, teamwork, problem-solving, adaptability, and social responsibility.

#pagebreak()
#set page(..report-page)
