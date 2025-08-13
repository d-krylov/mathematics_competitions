\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{problems_template}[problems_template class]

\LoadClass[oneside]{book}

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

\geometry{
  a4paper,
  left=1cm,
  right=1cm,
  top=1cm,
  bottom=1cm
}

\mdfdefinestyle{exercise_style}{
  linecolor=black,
  linewidth=2pt,
  frametitlerule=true,
  frametitlebackgroundcolor=green!20,
  innertopmargin=\topskip
}

\mdtheorem[style=exercise_style]{exercise}{Problem}[section]

\newenvironment{Solution}
  {\renewcommand{\qedsymbol}{$\triangle$}
   \begin{proof}[\bfseries\upshape\large Решение]}
  {\end{proof}}

\DeclareMathOperator{\lcm}{lcm}