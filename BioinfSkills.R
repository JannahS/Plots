install.packages("DiagrammeRsvg")
install.packages("rsvg")

# This code generates a flowchart of bioinformatics skills using the DiagrammeR package in R.

library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

graph <- grViz("
digraph bioinformatics_skills {
  
  graph [layout = dot, rankdir = TB, bgcolor = 'white', fontname = Helvetica, fontsize = 12]

  node [shape = box, style = filled, fontname = Helvetica, fontsize = 12]

  # Main categories 
  A [label = '🧬 Bioinformatics' fillcolor = '#FFDDC1' align=left]
  B [label = '📊 Data & Statistical Analysis' fillcolor = '#C1E1C1' align=left]
  C [label = '💻 Programming & Scripting' fillcolor = '#A1C6EA' align=left]
  D [label = '📉 Data Visualization' fillcolor = '#FFD1DC' align=left]
  E [label = '🗄️ Database Management' fillcolor = '#E2C1C1' align=left]
  F [label = '🤖 Machine Learning & AI' fillcolor = '#C1C8E4' align=left]
  G [label = '✍️ Scientific Writing' fillcolor = '#F4C2C2' align=left]
  H [label = '🤝 Soft Skills' fillcolor = '#C1E0F4' align=left]

  # Subcategories 
  A1 [label = 'NGS Analysis, WGS, LRS,\\nRNA-Seq Analysis, Epigenomics,\\nClinical Studies' fillcolor = '#D3D3D3']
  B1 [label = 'R, Python, SPSS, PRISM' fillcolor = '#D3D3D3']
  C1 [label = 'R, Bash, Python, HPC,\\nGitHub, Docker, WDL' fillcolor = '#D3D3D3']
  D1 [label = 'ggplot2, R Shiny Web,\\nMatplotlib, Seaborn, PowerPoint' fillcolor = '#D3D3D3']
  E1 [label = 'SQL, MongoDB' fillcolor = '#D3D3D3']
  F1 [label = 'TensorFlow, Scikit-learn, PyTorch' fillcolor = '#D3D3D3']
  G1 [label = 'Research Papers, Grant Writing,\\nISO Compliance SOPs' fillcolor = '#D3D3D3']
  H1 [label = 'Time Management, Teamwork,\\nOral Communication,\\nCritical Thinking, Creativity' fillcolor = '#D3D3D3']

  # main categories align to the left
  { rank = same; A A1 }
  { rank = same; B B1 }
  { rank = same; C C1 }
  { rank = same; D D1 }
  { rank = same; E E1 }
  { rank = same; F F1 }
  { rank = same; G G1 }
  { rank = same; H H1 }

  # Connecting main categories and subcategories with straight lines
  A -> A1 [arrowhead=none, weight=0]
  B -> B1 [arrowhead=none, weight=0]
  C -> C1 [arrowhead=none, weight=0]
  D -> D1 [arrowhead=none, weight=0]
  E -> E1 [arrowhead=none, weight=0]
  F -> F1 [arrowhead=none, weight=0]
  G -> G1 [arrowhead=none, weight=0]
  H -> H1 [arrowhead=none, weight=0]

  # Invisible helper nodes to push main categories to the left
  X1 [style=invis]
  X2 [style=invis]
  X3 [style=invis]
  X4 [style=invis]
  X5 [style=invis]
  X6 [style=invis]
  X7 [style=invis]
  X8 [style=invis]

  # Aligning invisible nodes with main categories to enforce left alignment
  X1 -> A [style=invis]
  X2 -> B [style=invis]
  X3 -> C [style=invis]
  X4 -> D [style=invis]
  X5 -> E [style=invis]
  X6 -> F [style=invis]
  X7 -> G [style=invis]
  X8 -> H [style=invis]

  # Vertical flow between main categories (No arrowheads)
  A -> B [arrowhead=none]
  B -> C [arrowhead=none]
  C -> D [arrowhead=none]
  D -> E [arrowhead=none]
  E -> F [arrowhead=none]
  F -> G [arrowhead=none]
  G -> H [arrowhead=none]
}
")



# Convert to SVG and Save as PNG
graph_svg <- export_svg(graph)
rsvg_png(charToRaw(graph_svg), "Jannah_bioinformatics_skills.png")
