#import "theme/styles.typ": *

#set page(..report-page)
#set text(font: "Times New Roman", size: body-size, lang: "en")
// Word 1.5 line spacing: Word's "1.5 lines" = 1.5 x the font's single-line
// height. For Times New Roman that is 1.15em x 1.5 = 1.725em = 19.8pt at
// 11.5pt body. Typst's `leading` is EXTRA space added to that, so 12pt
// yields the measured 20pt pitch (1.739em).
#set par(leading: 12pt)

// Section headings are native `= ` headings so Typst applies widow/orphan
// control (a heading is never left alone at the foot of a page).
//
// The `#show heading` rule lives per-chapter inside each chapter page file
// (via `heading-style()` from theme/components.typ) so heading-adjacent gaps can
// match the reference chapter by chapter. It must NOT live in theme/styles.typ:
// every page file does `#import "../theme/styles.typ": *`, and Typst's `import`
// only brings in `let` bindings -- set/show rules in an imported module are
// never applied. The block() must WRAP the heading body: `#show heading: set
// block(..)` has no effect on heading spacing.
#include "pages/01-title.typ"

#include "pages/02-certificate.typ"
#include "pages/02-certificate-list.typ"

#include "pages/03-declaration.typ"

#include "pages/04-acknowledgement.typ"

#include "pages/05-work-content.typ"

#include "pages/06-abstract.typ"

#include "pages/07-toc.typ"

#include "pages/08-chapter-1.typ"

#include "pages/09-chapter-2.typ"

#include "pages/10-chapter-3.typ"

#include "pages/11-chapter-4.typ"

#include "pages/12-chapter-5.typ"

#include "pages/13-references.typ"
