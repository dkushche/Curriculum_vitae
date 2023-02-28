\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{variants/curriculum_vitae}[2023/02/25]

\LoadClass[11pt]{article}

\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage[a4paper, left=1in, right=1in, bottom=1in, top=0.6in]{geometry}
\RequirePackage{tikz}
\RequirePackage{mdframed}
\RequirePackage{fancyhdr}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{xpatch}
\RequirePackage{hyperref}

\definecolor{primary_text_color}{RGB}{204, 204, 204}
\definecolor{secondary_text_color}{RGB}{153, 153, 153}
\definecolor{background_color}{RGB}{33, 33, 33}

\hypersetup{
  pdfborderstyle={/S/U/W 1},
  linkbordercolor=primary_text_color,
  citebordercolor=primary_text_color,
  filebordercolor=primary_text_color,
  urlbordercolor=primary_text_color
}

\onehalfspacing

\pagenumbering{Roman}

\setlength{\headheight}{45pt}
\xpretocmd\headrule{\color{primary_text_color}}{}{\PatchFailed}

\pagecolor{background_color}

\pagestyle{fancy}
\fancyhf{}

\rhead{\includegraphics[scale=0.07]{logo}}

\cfoot{\thepage}

\graphicspath{ {./graphics} }

\setmainfont{Montserrat}[
    Path=./fonts/montserrat/static/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    Color=secondary_text_color,
]

\setsansfont{LibreBaskerville}[
    Path=./fonts/libre_baskerville/,
    Scale=1,
    Extension = .ttf,
    UprightFont=*-Bold,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    Color=primary_text_color,
]

\newcommand{\custombullet}{\includegraphics[width=0.5cm]{section}}

\titleformat{\section}
{\sffamily\Large}
{\textcolor{primary_text_color}{$\custombullet$}}
{1em}
{}
[\textcolor{primary_text_color}{\rule{\textwidth}{0.4pt}}]

\titleformat{\subsection}
{\sffamily\Large}
{\hspace{0.05in}\textcolor{secondary_text_color}{$\bullet$}}
{1em}
{}

\renewcommand{\maketitle} {
  \begin{center}
    \begin{tikzpicture}

      \clip (-0.5,0) circle (2cm);
      \node at (0,0) {\includegraphics[width=6cm]{picture}};

    \end{tikzpicture}
    \break
    \LARGE\sffamily Dmytro Kushchevskyi
    \break
    \textcolor{primary_text_color}{\rule{\textwidth}{1.2pt}}
  \end{center}
}

\newcommand{\vintent}{\vspace{0.2in}}
