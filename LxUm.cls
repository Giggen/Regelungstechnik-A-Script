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
\usepackage{abstract}         % Abstract
\usepackage{graphicx}         % um Graphiken einzubinden
\usepackage[square,comma,numbers,sort,sort&compress]{natbib}
\usepackage{array}            % fuer aufwändigere Tabellen
\usepackage[usenames,dvipsnames]{color}           % Farbiger/grauer Text
\usepackage{colortbl}         % farbige Tabellen (v. D. Carlisle)
\usepackage{longtable}        % seitenübergreifende Tabellen
\usepackage{tabularx}         % automatische Spaltenbreite
\usepackage{verbatim}         % Quelltexte einbinden
\usepackage{fancyhdr}
\usepackage{wrapfig}          % Text neben schmale Abb. setzen, manuell anpassen
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
\usepackage{algorithmic}
\usepackage{algorithm}
\usepackage[raggedright,sf]{subfigure}
\usepackage{fancybox}         % für schattierte,ovale Boxen etc.
\usepackage[T1]{url}          % much like \verb allow line breaks for paths and URLs
\usepackage{setspace}         % Zeilenabstände
\usepackage{amsmath}          % mathematische Gleichungen
\usepackage{listings}         % Quellcode darstellen
\usepackage{xspace} 										% Fuer typographisch richtiges z.B.
\usepackage{color}   % für farbige Hyperlinks benötigt
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
	hyperfootnotes=false]{hyperref} % erzeuge Hyperlinks z.B. für pdflatex
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
\fancyfoot[RO,LE] {\thepage}
\fancypagestyle{plain}{%
	\fancyfoot[C]{Private Mitschrift WS09/10 - ohne Gewähr}
	\fancyfoot[RO,LE] {\thepage}
}

% ----------------------------------------------------------------
% Trennhinweise fuer Woerter
% ----------------------------------------------------------------
\hyphenation{
}

% ----------------------------------------------------------------
% MAKROS
% ----------------------------------------------------------------
\newcommand{\EMPTYPAGE}{\newpage\thispagestyle{empty}\null\newpage}
\newcommand{\mx}[1]{\mathbf{\bm{#1}}} % Matrix command
\newcommand{\vc}[1]{\mathbf{\bm{#1}}} % Vector command

% ----------------------------------------------------------------
% Graphics
% ----------------------------------------------------------------
% \input{graphics.tex}
