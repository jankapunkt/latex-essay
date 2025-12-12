# latex-essay

A simple no-config LaTeX template for your essay, batteries included. Useful for your PhD application and other things.

## Features

- **A4 paper** with two-sided layout
- **1cm margins** on left and right sides  
- **11pt font size** for optimal readability
- **1.15 line height** for comfortable reading
- **Dark blue color scheme** for section headings and hyperlinks
- **Headers** displaying the current section title
- **Footers** with centered page numbers
- **Clean title page** without header or footer
- **BibTeX support** using IEEE transaction style (ieeetr)

## Usage

### Quick Start

1. Use the `essay` document class in your LaTeX document:

```latex
\documentclass{essay}

\title{Your Essay Title}
\author{Your Name}
\date{\today}

\begin{document}

\maketitle

\begin{abstract}
Your abstract text here.
\end{abstract}

\section{Introduction}
Your content here...

\bibliography{references}

\end{document}
```

2. Create a `references.bib` file for your bibliography entries.

3. Compile your document:

```bash
pdflatex essay.tex
bibtex essay
pdflatex essay.tex
pdflatex essay.tex
```

### Example

See `essay.tex` for a complete example document demonstrating all features of the template.

## Files

- **essay.cls** - The LaTeX class file containing all formatting rules
- **essay.tex** - Example document demonstrating the template
- **references.bib** - Example bibliography file

## Requirements

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Required packages (included in most LaTeX distributions):
  - geometry
  - setspace
  - fancyhdr
  - xcolor
  - hyperref
  - titlesec

## License

MIT License - see LICENSE file for details
