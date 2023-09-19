#let header(project: "", num: "") = align(center + bottom,text(20pt, [#project #num]))

#let template(project: none, class: "Háskóli Íslands", writer: "Þorvaldur T. Baldursson", doc) = {
  set document(
    author: writer
  )

  set grid(gutter: 16pt)

  set page(
    numbering: "1.", 
    header: counter(page).display(n => {
      box(
          inset: (bottom: 10pt), 
          stroke: (bottom: 1pt), 
          text(
            8pt, 
            align(center + bottom)[
              #grid(
                columns: (1fr, 3fr, 1fr), 
                class, 
                text(20pt, { if n < 2 [#project] }),
                writer
              )
            ]
          )
        )
      }
    )
  )

  set raw(theme: "./GruvBox.tmTheme")

  show raw.where(block: true): it => block(
    width: 100%, 
    fill: rgb("#282828"),
    inset: 16pt,
    radius: 5pt,
    text(size: 8pt, fill: rgb("#a2aabc"),it)
  )

  show raw.where(block: false): it => box(
    fill: rgb("#282828"),
    inset: (x: 4pt, y: 0pt),
    outset: (y: 4pt),
    radius: 2pt,
    text(size: 7pt, fill: rgb("#ebdbb2"), it)
  )

  doc
}

