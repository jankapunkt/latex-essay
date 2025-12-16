# latex-essay

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub stars](https://img.shields.io/github/stars/jankapunkt/latex-essay.svg?style=social&label=Star)](https://github.com/jankapunkt/latex-essay)
[![GitHub issues](https://img.shields.io/github/issues/jankapunkt/latex-essay.svg)](https://github.com/jankapunkt/latex-essay/issues)
[![LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/)
[![GitHub last commit](https://img.shields.io/github/last-commit/jankapunkt/latex-essay.svg)](https://github.com/jankapunkt/latex-essay/commits/master)

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
- **BibTeX support** using alphaurl bibliography style (with DOI/URL support)

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

**Option 1: Using make (recommended)**
```bash
make all
```

**Option 2: Manual compilation**
```bash
pdflatex essay.tex
bibtex essay
pdflatex essay.tex
pdflatex essay.tex
```

To clean up auxiliary files:
```bash
make clean
```

### Example

See `src/essay.tex` for a complete example document demonstrating all features of the template.

## Files

- **src/essay.cls** - The LaTeX class file containing all formatting rules
- **src/essay.tex** - Example document demonstrating the template
- **src/references.bib** - Example bibliography file
- **src/Makefile** - Build automation for easy compilation

## Requirements

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Required packages (included in most LaTeX distributions):
  - geometry
  - setspace
  - fancyhdr
  - graphicx
  - xcolor
  - hyperref
  - titlesec
  - mathptmx

## License

GNU General Public License v3.0 (GPL-3.0) - see LICENSE file for details
