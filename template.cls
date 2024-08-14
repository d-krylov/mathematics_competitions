\ProvidesClass{mathematics}[mathematics class]
\LoadClass[oneside]{book}
\NeedsTeXFormat{LaTeX2e} 

\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{lipsum}
\RequirePackage{anyfontsize}
\usepackage{progressbar}
\RequirePackage{geometry}
\RequirePackage{paracol}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{xpatch}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{fontawesome5}
\RequirePackage[framemethod=default]{mdframed}
\RequirePackage[hidelinks, colorlinks=true, urlcolor=blue]{hyperref}
\RequirePackage[T1,T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian, english]{babel}
\RequirePackage{mmap}

\RequirePackage{etoolbox}
\patchcmd{\part}{\thispagestyle{plain}}{\thispagestyle{empty}}{}{}

\geometry{a4paper, left=1cm, right=1cm, top=1cm, bottom=1cm}

\setlength{\parindent}{0pt}

\pagestyle{empty}

\mdfdefinestyle{exerciseStyle}{
  skipabove=5pt,
  skipbelow=5pt,
  linecolor=black,
  linewidth=1pt,
  rightline=true,
  leftline=true, 
  topline=true, 
  bottomline=true, 
  innerleftmargin=5pt,
  innerrightmargin=5pt,
  innertopmargin=5pt,
  innerbottommargin=5pt,
  leftmargin=0cm,
  rightmargin=0cm,
  subtitlebelowline=true,
  subtitleaboveline=true,
  frametitleaboveskip = 1pt,
  frametitlebelowskip = 1pt,
  subtitlebackgroundcolor=gray!70!white,
  frametitlebackgroundcolor=black!10!white,
  frametitlerule=true
}

\mdtheorem[style=exerciseStyle]{exercise}{Exercise}[section]

\newcommand{\header}[1]{%
  {\color{black!90} \large #1}
}

\xapptocmd{\proof}{\mbox{}\par\nobreak}{}{}

\newenvironment{solution}
	{\let\oldqedsymbol=\qedsymbol
     \renewcommand{\qedsymbol}{$\blacktriangleleft$}
     \begin{proof}[\bfseries\upshape Решение]}
    {\end{proof}
     \renewcommand{\qedsymbol}{\oldqedsymbol}}

\DeclareMathOperator{\lcm}{lcm}

\newcommand{\bigp}[1]{\left(#1\right)}