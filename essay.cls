\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{essay}[2025/12/12 A minimal LaTeX essay template]

% Base class: article with A4 paper, two-sided, 11pt font
\LoadClass[a4paper,twoside,11pt]{article}

% Required packages
\RequirePackage[left=1cm,right=1cm,top=2cm,bottom=2cm,headheight=14pt]{geometry}  % Page margins
\RequirePackage{setspace}                    % Line spacing
\RequirePackage{fancyhdr}                    % Headers and footers
\RequirePackage{xcolor}                      % Colors
\RequirePackage{hyperref}                    % Hyperlinks
\RequirePackage{titlesec}                    % Section formatting

% Define dark blue color
\definecolor{darkblue}{RGB}{0,0,139}

% Set line spacing to 1.15
\setstretch{1.15}

% Configure hyperlinks with dark blue color
\hypersetup{
    colorlinks=true,
    linkcolor=darkblue,
    urlcolor=darkblue,
    citecolor=darkblue,
    filecolor=darkblue
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
\bibliographystyle{ieeetr}
