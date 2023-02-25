\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{variants/curriculum_vitae}[2023/02/25]

\LoadClass{article}

\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage[margin=0.2in]{geometry}
\RequirePackage{tikz}

\graphicspath{ {./graphics} }

\setmainfont{Audiowide}[
    Path=./fonts/audiowide/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Regular,
  ]

\newcommand{\custombullet}{\includegraphics[width=0.5cm]{section}}

\titleformat{\section}
{\Large}
{$\custombullet$}
{1em}
{}

\titleformat{\subsection}
{\Large}
{$\bullet$}
{2em}
{}

\renewcommand{\maketitle} {
  \begin{center}
    \begin{tikzpicture}

      \clip (0,0) circle (1.5cm);
      \node at (0,0) {\includegraphics[width=3cm]{picture}};

    \end{tikzpicture}
    \break
    \huge Dmytro Kushchevskyi
  \end{center}
}
