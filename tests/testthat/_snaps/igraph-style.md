# igraph_style() works

    Code
      styler::style_text("A -- B -- C -- D", style = igraph_style)
    Output
      A -- B -- C -- D

---

    Code
      styler::style_text("A - +B:C", style = igraph_style)
    Output
      A - +B:C

---

    Code
      styler::style_text("A+-+B", style = igraph_style)
    Output
      A +-+ B

---

    Code
      styler::style_text("A+--+B", style = igraph_style)
    Output
      A +--+ B

---

    Code
      styler::style_text("A+---+B", style = igraph_style)
    Output
      A +---+ B

---

    Code
      styler::style_text("A+-B", style = igraph_style)
    Output
      A +- B

---

    Code
      styler::style_text("A+--B", style = igraph_style)
    Output
      A +-- B

---

    Code
      styler::style_text("A+---B", style = igraph_style)
    Output
      A +--- B

---

    Code
      styler::style_text("A-+B", style = igraph_style)
    Output
      A -+ B

---

    Code
      styler::style_text("A--+B", style = igraph_style)
    Output
      A --+ B

---

    Code
      styler::style_text("A---+B", style = igraph_style)
    Output
      A ---+ B

---

    Code
      styler::style_text("A----+B", style = igraph_style)
    Output
      A ----+ B

