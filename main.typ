#import "@preview/stellar-springer-nature:0.1.0": article, bmhead
#import "annot.typ": annot
#import "chapters/frontmatter.typ": fm

#show: article.with(
  title: fm.title,
  short-title: fm.short_title,
  authors: fm.authors,
  affiliations: fm.affiliations,
  abstract: fm.abstract,
  keywords: fm.keywords,
)

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

If your article has accompanying supplementary file/s please state so here.

#bmhead[Acknowledgements]

Acknowledgements are not compulsory. Where included they should be brief. Grant or contribution numbers may be acknowledged.

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
