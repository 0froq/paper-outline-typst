#import "@preview/cmarker:0.1.8": render, render-with-metadata
#import "@preview/stellar-springer-nature:0.1.0": article, bmhead
#import "annot.typ": annot

// Helper function to resolve image paths correctly
// cmarker evals code in its own package context, so we need to explicitly
// reference images from the project root
#let resolve-image(source, alt: none, format: auto) = {
  // If source is already absolute or starts with ./, use as-is
  // Otherwise, prepend ./ to make it relative to project root
  let path = if type(source) == str and not source.starts-with("/") and not source.starts-with("./") {
    "./" + source
  } else {
    source
  }
  image(path, alt: alt, format: format)
}

// Read the markdown file and extract metadata
#let (meta, body) = render-with-metadata(
  read("main.md"),
  metadata-block: "frontmatter-yaml",
  // Handle images with correct path resolution
  scope: (
    image: resolve-image,
    annot: annot,  // Pass the annot function to markdown
  ),
  // Enable raw Typst injection via HTML comments
  raw-typst: true,
  // Use h1-level: 0 so # Heading becomes title, ## becomes =, etc.
  h1-level: 0,
)

// Apply the Springer Nature template with metadata from markdown
#show: article.with(
  title: meta.at("title", default: [Untitled]),
  short-title: meta.at("short-title", default: meta.at("title", default: [Untitled])),
  authors: meta.at("authors", default: ((name: "Author", affiliations: (2,)),)),
  affiliations: meta.at("affiliations", default: ((id: 1, department: "", institution: "", address: ""),)),
  abstract: meta.at("abstract", default: "None"),
  keywords: meta.at("keywords", default: ("keyword1", "keyword2")),
)

// Render the markdown body
#body

// ========================================
// BACKMATTER
// ========================================

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
