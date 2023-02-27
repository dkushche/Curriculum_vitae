\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{variants/curriculum_vitae}[2023/02/25]

\LoadClass[11pt]{article}

\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage[a4paper, left=1in, right=1in, bottom=1in, top=0.6in]{geometry}
\RequirePackage{tikz}
\RequirePackage{mdframed}
\RequirePackage{fancyhdr}

\pagenumbering{Roman}

\setlength{\headheight}{45pt}

\pagestyle{fancy}
\fancyhf{}
\rhead{\includegraphics[scale=0.07]{logo}}
\cfoot{\thepage}

\definecolor{text_color}{RGB}{0, 1, 17}

\graphicspath{ {./graphics} }

\setmainfont{Audiowide}[
    Path=./fonts/audiowide/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Regular,
    Color=text_color,
  ]

\newcommand{\custombullet}{\includegraphics[width=0.5cm]{section}}

\titleformat{\section}
{\Large}
{$\custombullet$}
{1em}
{}
[\textcolor{text_color}{\rule{\textwidth}{0.4pt}}]

\titleformat{\subsection}
{\Large}
{\hspace{0.2in}$\bullet$}
{1em}
{}

\renewcommand{\maketitle} {
  \begin{center}
    \begin{tikzpicture}

      \clip (-0.5,0) circle (2cm);
      \node at (0,0) {\includegraphics[width=6cm]{picture}};

    \end{tikzpicture}
    \break
    \LARGE Dmytro Kushchevskyi
    \break
    \rule{\textwidth}{1.2pt}
  \end{center}
}
