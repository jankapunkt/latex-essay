\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{essay}[2025/12/12 A minimal LaTeX essay template]

% Base class: article with A4 paper, two-sided, 11pt font
\LoadClass[a4paper,twoside,11pt]{article}

% geometry, spacing, lengths
\RequirePackage{geometry}  % Page margins
\setlength{\textwidth}{420pt}
\setlength{\headheight}{35pt}
\setlength{\oddsidemargin}{16pt}
\setlength{\evensidemargin}{16pt}
\setlength{\parindent}{1em}
\setlength{\parskip}{0pt}

% Required packages
\RequirePackage{setspace}                    % Line spacing
\RequirePackage{fancyhdr}                    % Headers and footers
\RequirePackage{graphicx}                    % figures ad images etc.
\RequirePackage{xcolor}                      % Colors
\RequirePackage{hyperref}                    % Hyperlinks
\RequirePackage{titlesec}                    % Section formatting
\RequirePackage{mathptmx}                    % font¸

% Define dark blue color
\definecolor{darkblue}{HTML}{000044}
\definecolor{blue}{HTML}{000099}

% Set line spacing to 1.15
\setstretch{1.15}

% Configure hyperlinks with dark blue color
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    citecolor=blue,
    filecolor=blue
}

% Format section headings in dark blue
\titleformat{\section}
    {\normalfont\Large\bfseries\color{darkblue}}
    {\thesection}{1em}{}
\titleformat{\subsection}
    {\normalfont\large\bfseries\color{darkblue}}
    {\thesubsection}{1em}{}
\titleformat{\subsubsection}
    {\normalfont\normalsize\bfseries\color{darkblue}}
    {\thesubsubsection}{1em}{}

% Configure page style with header and footer
\pagestyle{fancy}
\fancyhf{}  % Clear all header and footer fields
\fancyhead[L]{\leftmark}  % Section title on the left of header
\fancyfoot[C]{\thepage}   % Page number centered in footer
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% Define plain page style for title page (no header/footer)
\fancypagestyle{plain}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% Redefine \maketitle to use plain page style
\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{
    \thispagestyle{plain}
    \oldmaketitle
}

% Bibliography style
\bibliographystyle{ieeetr}                    % change to your preferred style		
\newcommand*{\doi}[1]{\href{http://dx.doi.org/#1}{doi: #1}}