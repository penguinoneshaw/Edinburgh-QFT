\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{tutorial}

\LoadClass{scrartcl}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage[UKenglish]{babel}
\RequirePackage[UKenglish]{isodate}
\RequirePackage{csquotes}

\RequirePackage{graphicx}
\RequirePackage[arrowdel]{physics}

\RequirePackage{nicefrac}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{relsize}
\RequirePackage{booktabs}
\RequirePackage{bbm}
\RequirePackage{cancel}
\RequirePackage{slashed}
\RequirePackage[sorting=none,bibencoding=utf8,giveninits,uniquename=init]{biblatex}
\RequirePackage{enumitem}

\KOMAoptions{
paper=a4,
fontsize=11pt,
parskip=half-,
BCOR=.5cm,
pagesize=auto,
pagesize=pdftex,
DIV=14
}

\RequirePackage[hidelinks, pdfusetitle]{hyperref}

\RequirePackage{mathtools}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\RequirePackage{mathrsfs}
\newcommand{\fourier}[1]{\ensuremath{\mathlarger{\mathcal{F}}\!\!\left[#1 \right]}}
\newcommand{\inversefourier}[1]{\ensuremath{\mathlarger{\mathcal{F}^{-1}}\!\!\left[#1 \right]}}
\newcommand{\laplace}[1]{\ensuremath{\mathlarger{L}\!\!\left[#1 \right]}}
\DeclareMathOperator{\erfc}{erfc}

\setkomafont{disposition}{\rmfamily\scshape\bfseries}


\RequirePackage[largesc]{newpxtext}
\RequirePackage{newpxmath}
\setkomafont{descriptionlabel}{\rmfamily\bfseries}
\linespread{1.05}

\RequirePackage[tikz]{mdframed}
\newmdenv[frametitle=Example,roundcorner=5pt]{example}
\newmdenv[frametitle=Note,roundcorner=5pt]{note}
\renewcommand\hbar\hslash
\newcommand{\DD}[1]{\ensuremath{\mathcal{D} #1\,}}

\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}
%\renewcommand{\vec}{\vb*}
\setcounter{tocdepth}{2}

%\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,shrink=10]{microtype}
\RequirePackage[activate={true,nocompatibility},kerning=true,spacing=true,final]{microtype}
\microtypecontext{spacing=nonfrench}

\RequirePackage[headsepline]{scrlayer-scrpage}
\clearscrheadfoot

\automark{section}

\ohead{\@subject}
\ofoot{\thepage}
\ihead{\@subtitle: \@title}

\usepackage[framed]{ntheorem}
\usepackage{framed}
%\usepackage{showlabels}
\usepackage{makeidx}
\usepackage{simplewick}
\usepackage[compat=1.1.0]{tikz-feynman}

\def\@maketitle{
  \global \@topnum =\z@ \setparsizes {\z@ }{\z@ }{\z@ \@plus 1fil}
  \par@updaterelative 
  \ifx \@titlehead 
    \@empty 
  \else 
    \begin {minipage}[t]{\textwidth } 
      \usekomafont {titlehead}{\@titlehead \par }
      \end {minipage}\par 
      \null 
      \vskip 2em
      \fi 
    \begin {center}
    {\usekomafont {title}{\LARGE\ifx \@subject \@empty \else \@subtitle: \fi
    \@title \par }}
    \vskip .5em {\ifx \@subtitle \@empty \else \usekomafont {subject}\@subject \par \vskip 1em\fi } 
    {{\lineskip .5em\begin {tabular}[t]{l r} {\usekomafont{author} \small \@author} & \usekomafont {date} \small \@date \end {tabular}\par \vskip 1em}}
    {\usekomafont {publishers}{\@publishers \par }}
  \ifx \@dedication \@empty \else \vskip 2em {\usekomafont {dedication}{\@dedication \par }}\fi \end {center}\par \vskip 1ex
}

\newcommand{\tphi}{\tilde{\phi}}
\newcommand{\tj}{\tilde{J}}
\newcommand{\tchi}{\tilde{\chi}}
\newcommand{\psibar}{\bar{\psi}}
\newcommand{\etabar}{\bar{\eta}}
\newcommand{\munu}{{\mu\nu}}
\newcommand\ie{\textit{ i.e.}\ }
