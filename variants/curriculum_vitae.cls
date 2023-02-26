\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{variants/curriculum_vitae}[2023/02/25]

\LoadClass[11pt]{article}

\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage[a4paper, left=1in, right=1in, bottom=1in, top=0.2in]{geometry}
\RequirePackage{tikz}
\RequirePackage{mdframed}

\definecolor{custom_black}{RGB}{0, 1, 17}

\graphicspath{ {./graphics} }

\setmainfont{Audiowide}[
    Path=./fonts/audiowide/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Regular,
    Color=custom_black,
  ]

\newcommand{\custombullet}{\includegraphics[width=0.5cm]{section}}

\titleformat{\section}
{\Large}
{$\custombullet$}
{1em}
{}
[\rule{\textwidth}{0.4pt}]

\titleformat{\subsection}
{\Large}
{$\bullet$}
{3em}
{}

\renewcommand{\maketitle} {
  \begin{center}
    \begin{tikzpicture}

      \clip (0,0) circle (2cm);
      \node at (0,0) {\includegraphics[width=4cm]{picture}};

    \end{tikzpicture}
    \break
    \LARGE Dmytro Kushchevskyi
    \break
    \rule{\textwidth}{1.2pt}
  \end{center}
}

\pagenumbering{Roman}
