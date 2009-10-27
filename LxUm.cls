% ----------------------------------------------------------------
% LateXUm - FORMATKLASSE
% ----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{LxUm}[2002/10/09 Florian Schuh]
\LoadClass[a4paper,%
           12pt,%
           twoside,%
           openany,%
           abstractoff,%
           titlepage,%
           headsepline,%
           BCOR10mm,%
           final]{scrreprt}
\ProcessOptions

% ----------------------------------------------------------------
% Dokumentendaten
% ----------------------------------------------------------------
\newcommand{\MYTITLE}{}
\newcommand{\MYAUTHOR}{}
\newcommand{\MYSUBJECT}{}
\newcommand{\MYKEYWORDS}{}
\newcommand{\MYCREATOR}{}
\newcommand{\MYPRODUCER}{}

% ----------------------------------------------------------------
% Seiteneinstellung
% ----------------------------------------------------------------
\usepackage{geometry}
\geometry{paper=a4paper,
          left=20mm,
          right=20mm,
          top=30mm,
          bottom=35mm,
          headheight=10mm,
          headsep=10mm,
          footskip=10mm,
          bindingoffset=5mm, % Abstand zur Klebestelle fuer Buchbindung
          showframe=false
          }
\setlength\parindent{0pt}
\usepackage[ngerman]{babel}   % Umlaute
\usepackage[T1]{fontenc}      % Eingabe
\usepackage[ansinew]{inputenc}% Eingabe
\usepackage{marvosym}	        % Euro-Symbol
\usepackage{graphicx}         % um Graphiken einzubinden
\usepackage[square,comma,numbers,sort,sort&compress]{natbib}
\usepackage{array}            % fuer aufw?ndigere Tabellen
\usepackage[usenames,dvipsnames]{color}           % Farbiger/grauer Text
\usepackage{colortbl}         % farbige Tabellen (v. D. Carlisle)
\usepackage{fancyhdr}
\usepackage{framed} % Boxen
% \usepackage{tikz}
%   \usetikzlibrary{plotmarks}
%   \usetikzlibrary{arrows,automata}
%   \usetikzlibrary{positioning}
% \usepackage{pgf}
% \usepackage{pgfplots}
%   \pgfkeys{/pgf/number format/use comma}
%   \pgfplotsset{
%     every axis x label/.append style={font=\footnotesize\sffamily},
%     every axis y label/.append style={font=\footnotesize\sffamily},
%   		every tick label/.append style={font=\footnotesize\sffamily},
%     every xlabel/.append style={font=\small\sffamily},
%     every ylabel/.append style={font=\small\sffamily},
%     every legend/.append style={font=\footnotesize\sffamily},
%   }
\usepackage[raggedright,sf]{subfigure}
\usepackage[T1]{url}          % much like \verb allow line breaks for paths and URLs
\usepackage{setspace}         % Zeilenabst?nde
\usepackage{amsmath}          % mathematische Gleichungen
\usepackage{xspace} 	      % Fuer typographisch richtiges z.B.
\usepackage{txfonts}	      % Für Transformationssymbol
\usepackage[pdftex,
	raiselinks=false,%
	bookmarks=true,%
	bookmarksopenlevel=10,%
	bookmarksopen=true,%
	bookmarksnumbered=true,%
	hyperindex=true,% 
	plainpages=false,% correct hyperlinks
	pageanchor=true,%
	linktocpage=true,%
	pdfpagelabels,%
	colorlinks=false,%
	citecolor=black,%
	urlcolor=blue,%
	pdfborder={0 0 0},%
	pdffitwindow=true,%
	pdftitle={\MYTITLE},%
	pdfauthor={\MYAUTHOR},%
	pdfsubject={\MYSUBJECT},%
	pdfcreator={\MYCREATOR},%
	pdfproducer={\MYPRODUCER},%
	pdfkeywords={\MYKEYWORDS},%
	hyperfootnotes=false]{hyperref} % erzeuge Hyperlinks z.B. f?r pdflatex
\pdfcompresslevel=9

% ----------------------------------------------------------------
% Schusterjungen und Hurenkinder verhindern. Siehe deutsches TeX-FAQ (6.1.3)
% ----------------------------------------------------------------
\clubpenalty = 10000
\widowpenalty = 10000
\displaywidowpenalty = 10000

% ----------------------------------------------------------------
% KOMA-Optionen
% ----------------------------------------------------------------
\addtokomafont{caption}{\small\sffamily} % Captions small
\setkomafont{captionlabel}{\sffamily\bfseries} % Captions serifenlos und fett

% ----------------------------------------------------------------
% Grafiken
% ----------------------------------------------------------------
\usepackage{ifpdf}
\ifpdf
 \DeclareGraphicsExtensions{.pdf}
\else
 \DeclareGraphicsExtensions{.eps}
\fi

% ----------------------------------------------------------------
% Stil des Literaturverzeichnis
% ----------------------------------------------------------------
\bibliographystyle{alphadin}

% ----------------------------------------------------------------
% Dokument
% ----------------------------------------------------------------
\author{\MYAUTHOR}
\title{\MYTITLE}

% ----------------------------------------------------------------
% List spacing
% ----------------------------------------------------------------
\newenvironment{itemize*}%
  {\begin{itemize}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parskip}{0pt}}%
  {\end{itemize}}
  
\newenvironment{itemizenoindent*}%
  {\begin{list}{\textbullet}{%
    \setlength{\itemsep}{0pt}%
    %\setlength{\parskip}{0pt}%
    \setlength{\topsep}{5pt}
    \setlength{\leftmargin}{0pt}%
  }}{\end{list}}

% ----------------------------------------------------------------
% Fusszeile
% ----------------------------------------------------------------
\fancyfoot[C]{Private Mitschrift WS09/10 - ohne Gewähr}
\fancyhead{}
\fancyfoot[RO,LE] {\thepage}
\fancypagestyle{plain}{%
	\fancyhead{}
	\fancyfoot[C]{Private Mitschrift WS09/10 - ohne Gewähr}
	\fancyfoot[RO,LE] {\thepage}
}

% ----------------------------------------------------------------
% Trennhinweise fuer Woerter
% ----------------------------------------------------------------
\hyphenation{
}

% ----------------------------------------------------------------
% Graphics
% ----------------------------------------------------------------
% \input{graphics.tex}

% ----------------------------------------------------------------
% Farben
% ----------------------------------------------------------------
\definecolor{blau}{rgb}{0.20,0.40,0.65}
\definecolor{orange}{rgb}{0.95,0.55,0.15}
\definecolor{gruen}{rgb}{0.30,0.65,0.15}
\definecolor{rot}{rgb}{0.95,0.20,0.20}

% ----------------------------------------------------------------
% MAKROS
% ----------------------------------------------------------------
\newcommand{\EMPTYPAGE}{\newpage\thispagestyle{empty}\null\newpage}
\newcommand{\mx}[1]{\mathbf{\bm{#1}}} % Matrix command
\newcommand{\vc}[1]{\mathbf{\bm{#1}}} % Vector command
\newcommand{\bb}[1]{{\color{rot}{Beiblatt: #1}}} % Beiblatt
\newcommand{\TODO}[1]{{\color{orange}{TODO: #1}}} % TODO

% ----------------------------------------------------------------
% Umgebungen
% ----------------------------------------------------------------
\usepackage{shadethm}
\newshadetheorem{thms}{Satz}[chapter]
\newshadetheorem{definitions}{Definition}[chapter]
\newshadetheorem{cors}{Korollar}[chapter]
\newshadetheorem{zuss}{Zusammenfassung}[chapter]
\newshadetheorem{axioms}{Axiom}[chapter]
\newshadetheorem{hinweise}{Hinweis}[chapter]

\newenvironment{thm}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{thms}[#1]\hspace*{1mm}%
}{\end{thms}}

\newenvironment{definition}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{definitions}[#1]\hspace*{1mm}%
}{\end{definitions}}

\newenvironment{corr}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{cors}[#1]\hspace*{1mm}%
}{\end{cors}}

\newenvironment{summary}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{zuss}[#1]\hspace*{1mm}%
}{\end{zuss}}

\newenvironment{axiom}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{axioms}[#1]\hspace*{1mm}%
}{\end{axioms}}

\newenvironment{hinweis}[1][]{%
  \definecolor{shadethmcolor}{rgb}{.9,.9,.95}%
  \definecolor{shaderulecolor}{rgb}{0.0,0.0,0.4}%
%   \setlength{\shadeboxrule}{1.5pt}%
  \begin{hinweise}#1\hspace*{1mm}%
}{\end{hinweise}}