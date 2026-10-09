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
// This rule must live HERE, not in theme/styles.typ: every page file does
// `#import "../theme/styles.typ": *`, and Typst's `import` only brings in
// `let` bindings -- set/show rules in an imported module are never applied.
// It restores the manual look (16pt bold) and pins the two heading-adjacent
// gaps to the same values used everywhere else. `below: 12pt` was measured to
// land every heading->body gap on a single 22.8pt value (Typst adds ~8pt of
// leading on top of the block spacing, so 12pt + ~10.8pt = 22.8pt); any smaller
// value splits the headings into two clusters 12pt apart, because headings that
// open with a `#block(spacing: 12pt)` lead-in get that block's spacing on top of
// this one. `above: 32pt` gives the same 40pt blank line as a paragraph break.
// The block() must WRAP the heading body: `#show heading: set block(..)`
// has no effect on heading spacing.
#show heading: it => block(above: 32pt, below: 12pt)[#text(weight: "bold", size: 16pt)[#it.body]]

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
