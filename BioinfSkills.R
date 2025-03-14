
install.packages("DiagrammeR")
install.packages("rsvg")
# This code generates a flowchart of bioinformatics skills using the DiagrammeR package in R.

library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)



graph <- grViz("
digraph bioinformatics_skills {
  
  graph [layout = dot, rankdir = TB, bgcolor = 'white', fontname = Helvetica, fontsize = 12]

  node [shape = box, style = filled, fontname = Helvetica, fontsize = 12]

  # Main categories (Colored)
  A [label = '🧬 Bioinformatics' fillcolor = '#FFDDC1']
  B [label = '📊 Data & Statistical Analysis' fillcolor = '#C1E1C1']
  C [label = '💻 Programming & Scripting' fillcolor = '#A1C6EA']
  D [label = '📉 Data Visualization' fillcolor = '#FFD1DC']
  E [label = '🗄️ Database Management' fillcolor = '#E2C1C1']
  F [label = '🤖 Machine Learning & AI' fillcolor = '#C1C8E4']
  G [label = '✍️ Scientific Writing' fillcolor = '#F4C2C2']
  H [label = '🤝 Soft Skills' fillcolor = '#C1E0F4']

  # Subcategories (Grey-filled rectangular boxes)
  A1 [label = 'NGS Analysis, WGS, LRS,\\nRNA-Seq Analysis, Epigenomics,\\nClinical Studies' fillcolor = '#D3D3D3']
  B1 [label = 'R, Python, SPSS, PRISM' fillcolor = '#D3D3D3']
  C1 [label = 'R, Bash, Python, HPC,\\nGitHub, Docker, WDL' fillcolor = '#D3D3D3']
  D1 [label = 'ggplot2, R Shiny Web,\\nMatplotlib, Seaborn, PowerPoint' fillcolor = '#D3D3D3']
  E1 [label = 'SQL, MongoDB' fillcolor = '#D3D3D3']
  F1 [label = 'TensorFlow, Scikit-learn, PyTorch' fillcolor = '#D3D3D3']
  G1 [label = 'Research Papers, Grant Writing,\\nISO Compliance SOPs' fillcolor = '#D3D3D3']
  H1 [label = 'Time Management, Teamwork,\\nOral Communication,\\nCritical Thinking, Creativity' fillcolor = '#D3D3D3']

  # Ensuring subcategories align horizontally with main categories
  { rank = same; A A1 }
  { rank = same; B B1 }
  { rank = same; C C1 }
  { rank = same; D D1 }
  { rank = same; E E1 }
  { rank = same; F F1 }
  { rank = same; G G1 }
  { rank = same; H H1 }

  # Connecting main categories and subcategories with straight lines (No arrowheads)
  A -> A1 [arrowhead=none]
  B -> B1 [arrowhead=none]
  C -> C1 [arrowhead=none]
  D -> D1 [arrowhead=none]
  E -> E1 [arrowhead=none]
  F -> F1 [arrowhead=none]
  G -> G1 [arrowhead=none]
  H -> H1 [arrowhead=none]

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
