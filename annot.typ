#let annot(
  body,
  note,
  date: datetime.today().display("[year]-[month]-[day]"),
  pos: auto,
  color: rgb("#c0392b"),
) = context {
  let loc = here().position()
  let auto-pos = if loc != none and "page" in loc {
      [第 #loc.page 页]
    } else {
      [当前位置]
    }

  let final-pos = if pos == auto { auto-pos } else { pos }

  underline(
    stroke: (paint: color, thickness: 0.8pt),
    offset: 2pt,
    body,
  ) + footnote[
    #text(size: 0.9em, weight: "semibold", fill: color)[批注]
    \
    位置：#final-pos
    \
    日期：#date
    \
    内容：#note
  ]
}
