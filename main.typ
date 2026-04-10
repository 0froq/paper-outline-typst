#import "@preview/stellar-springer-nature:0.1.0": article, bmhead
#import "annot.typ": annot
#import "frontmatter.typ": fm

#show: article.with(
  title: fm.title,
  short-title: fm.short_title,
  authors: fm.authors,
  affiliations: fm.affiliations,
  abstract: fm.abstract,
  keywords: fm.keywords,
)

#show highlight: set highlight(
  fill: blue.transparentize(50%),
  top-edge: "x-height",
)
#show underline: set underline(
  stroke: green + 1pt,
)

#show link: it => {
  underline(
    stroke: blue + 1pt,
    it.body
  )
}

#metadata((
  created: fm.created,
  status: fm.status,
  last_modified: fm.last_modified,
)) <paper-meta>

// Include all chapter files
#include "chapters/intro.typ"
#include "chapters/methods.typ"
#include "chapters/results.typ"
#include "chapters/conclusions.typ"
#include "chapters/summary.typ"

#bmhead[Supplementary information]

_If your article has accompanying supplementary file/s please state so here._

#bmhead[Acknowledgements]

_Acknowledgements are not compulsory._
_Where included they should be brief._
_Grant or contribution numbers may be acknowledged._

#heading(numbering: none)[Declarations]

- *Funding*: Not applicable
- *Conflict of interest/Competing interests*: Not applicable
- *Ethics approval and consent to participate*: Not applicable
- *Consent for publication*: Not applicable
- *Data availability*: Not applicable
- *Materials availability*: Not applicable
- *Code availability*: Not applicable
- *Author contribution*: Not applicable

#bibliography("refs/zotero.bib", title: "References")
