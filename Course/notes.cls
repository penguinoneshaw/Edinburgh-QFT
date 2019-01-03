\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{notes}

\LoadClass{scrreprt}

% LaTeX required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage[UKenglish]{babel}
\RequirePackage[UKenglish]{isodate}
\RequirePackage{csquotes,xpatch}
\RequirePackage{graphicx}
\RequirePackage{subfiles}
\RequirePackage[hidelinks, pdfusetitle, plainpages=false]{hyperref}
\urlstyle{same}
\RequirePackage[sorting=ynt,style=authoryear,bibencoding=utf8,giveninits,uniquename=init,backend=biber,defernumbers=true]{biblatex}
\RequirePackage{appendix}
\RequirePackage{makeidx}


% Maths Packages
\RequirePackage[arrowdel]{physics}
\RequirePackage{nicefrac}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{bbm}
\RequirePackage{cancel}
\RequirePackage{slashed}
\RequirePackage{dsfont}
\RequirePackage{pifont}
\RequirePackage[framed]{ntheorem}
\RequirePackage{simplewick}
\RequirePackage[compat=1.1.0]{tikz-feynman}

% Formatting Packages
\RequirePackage{relsize}
\RequirePackage{booktabs}
\RequirePackage{framed}

\KOMAoption{chapterprefix}{true}

\KOMAoptions{
paper=a4,
fontsize=11pt,
parskip=half-,
pagesize=auto,
pagesize=pdftex,
headinclude=false,
footinclude=false,
DIV=12,
captions=tableheading
}


\renewcommand*\raggedchapter{\centering}
\RedeclareSectionCommand[beforeskip=0pt,afterskip=1\baselineskip]{chapter}
\setkomafont{chapterprefix}{\normalsize\mdseries}

\renewcommand*{\chapterformat}{%
  \chapappifchapterprefix{\nobreakspace}\thechapter\autodot%
  \IfUsePrefixLine{%
    \par\nobreak\vspace{-\parskip}\vspace{-.6\baselineskip}%
    \rule{0.9\textwidth}{.2pt}%
  }{}%
}


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
\RequirePackage[activate={true,nocompatibility},kerning=true,spacing=true,final,babel=true]{microtype}
\microtypecontext{spacing=nonfrench}

\RequirePackage[headsepline]{scrlayer-scrpage}
\clearscrheadfoot

\automark{section}

\ohead{\headmark}
\ofoot{\thepage}
\ihead{\@title}

\newcommand{\school}[1]{\def\@school{#1}}
\newcommand{\version}[1]{\def\@version{#1}}
\newcommand{\coursecode}[1]{\def\@coursecode{#1}}

\tikzfeynmanset{warn luatex=false}

\newcommand{\tick}{\ding{52}}
\newcommand{\notick}{\ding{56}}
\newcommand{\D}{\displaystyle}

\def\bfx{{\mathbf x}}
\def\bfxp{{\mathbf x^\prime}}
\def\bfy{{\mathbf y}}
\def\bfyp{{\mathbf y^\prime}}
\def\bfp{{\mathbf p}}
\def\bfpp{{\mathbf p^\prime}}
\def\ddt{\frac{\mathrm{d}}{\mathrm{d}t}}
\def\ddtt{\frac{d^2}{dt^2}}
\def\ie{\emph{i.e.~}\ }
\def\eg{\emph{e.g.~}\ }
\def\viz{\emph{viz.~}\ }
\def\matF{\mathcal F}
\def\matE{\mathcal E}
\def\GL{\mathrm{GL}}
\def\kpsi{\ket{\psi}}
\def\kpsione{\ket{\psi_1}}
\def\kpsitwo{\ket{\psi_2}}
\def\kpsionep{\ket{\psi_1^\prime}}
\def\kpsitwop{\ket{\psi_2^\prime}}
\def\kpsii{\ket{\psi_i}}
\def\kpsin{\ket{\psi_n}}
\def\kpsip{\ket{\psi^\prime}}
\def\bpsi{\bra{\psi}}
\def\bpsione{\bra{\psi_1}}
\def\bpsitwo{\bra{\psi_2}}
\def\bpsii{\bra{\psi_i}}
\def\bpsip{\bra{\psi^\prime}}
\def\kphi{\ket{\phi}}
\def\kphione{\ket{\phi_1}}
\def\kphitwo{\ket{\phi_2}}
\def\kphii{\ket{\phi_i}}
\def\kphip{\ket{\phi^\prime}}
\def\bphi{\bra{\phi}}
\def\bphione{\bra{\phi_1}}
\def\bphitwo{\bra{\phi_2}}
\def\bphii{\bra{\phi_i}}
\def\bphip{\bra{\phi^\prime}}
\def\bchi{\bra{\chi}}
\def\bchione{\bra{\chi_1}}
\def\bchitwo{\bra{\chi_2}}
\def\bchii{\bra{\chi_i}}
\def\bchip{\bra{\chi^\prime}}
\def\kjm{\ket{j,m}}
\def\tr{\mathrm{Tr}}
\def\id{\mathds{1}}

{\theoremstyle{plain} \theorembodyfont{\rmfamily} \newframedtheorem{Ex}{Exercise}[section]}
{\theoremstyle{plain} \theorembodyfont{\rmfamily} \newtheorem{Def}{Definition}[section]}
{\theoremstyle{plain} \theorembodyfont{\rmfamily} \newtheorem{Thm}{Theorem}[section]}

\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand{\iu}{\underline{i}}
\newcommand{\ju}{\underline{j}}
\newcommand{\ku}{\underline{k}}
\newcommand{\ru}{\underline{r}}
\newcommand{\pu}{\underline{p}}
\newcommand{\Lu}{\underline{L}}
\newcommand{\Ju}{\underline{J}}
\newcommand{\lap}{\laplacian}
\newcommand{\ad}{\hat{a}}
\newcommand{\ac}{\hat{a}^\dagger}
\newcommand{\re}{\Re}
\newcommand{\pref}[1]{(\ref{#1})}
\newcommand{\Eqref}[1]{Eq.~(\ref{#1})}
\newcommand{\del}{\v{\nabla}}				% Underlined del
\def\plusheight{-\the\dimexpr\fontdimen22\textfont2\relax}
\newcommand{\mphys}{m_\mathrm{phys}}
\newcommand{\psibar}{\bar{\psi}}
\newcommand{\etabar}{\bar{\eta}}
\newcommand{\munu}{{\mu\nu}}
\newcommand{\tDelta}{\tilde{\Delta}}
\newcommand{\SProp}[1]{\frac{1}{#1^2-m^2+i\epsilon}}
\newcommand{\ESProp}[2]{\frac{1}{\left(#1^2+m^2\right)^#2}}
\newcommand{\tphi}{\tilde{\phi}}
\newcommand{\tj}{\tilde{J}}
\newcommand{\tchi}{\tilde{\chi}}

\def\@maketitle{
    \ifdefined\@school
            \begin{minipage}{0.6\textwidth}
            \begin{flushleft}
                    {\usekomafont{disposition} \Huge  \linespread{1.15} \@school \par}
            \end{flushleft}
            \end{minipage}\hfill
            \begin{minipage}{0.3\textwidth}
                    \includegraphics[width=40mm,height=40mm]{Includes/crest.eps}
            \end{minipage}
    \else
    {\centering \includegraphics[width=40mm,height=40mm]{Includes/crest.eps}\\}
    \fi
    \vspace*{\fill}
    
    {\centering
    \ifdefined\@coursecode
    {\LARGE\rmfamily\scshape \@coursecode\\}
    \fi
    {\Huge\usekomafont{title} \@title\\}
    \vspace{\fill}
    {\Large \@author \\[1ex] \LARGE\bfseries \@date \ifdefined\@version \\[2ex] \large Version \@version\fi\\}
    }
}

\renewcommand*\maketitle[1][1]{%
  \expandafter\ifnum \csname scr@v@3.12\endcsname>\scr@compatibility\relax
  \else
    \def\and{%
      \end{tabular}%
      \hskip 1em \@plus.17fil%
      \begin{tabular}[t]{c}%
    }%
  \fi
  \if@titlepage
    \begin{titlepage}
      \setcounter{page}{%
        #1%
      }%
      \if@titlepageiscoverpage
        \edef\titlepage@restore{%
          \noexpand\endgroup
          \noexpand\global\noexpand\@colht\the\@colht
          \noexpand\global\noexpand\@colroom\the\@colroom
          \noexpand\global\vsize\the\vsize
          \noexpand\global\noexpand\@titlepageiscoverpagefalse
          \noexpand\let\noexpand\titlepage@restore\noexpand\relax
        }%
        \begingroup
        \topmargin=\dimexpr \coverpagetopmargin-1in\relax
        \oddsidemargin=\dimexpr \coverpageleftmargin-1in\relax
        \evensidemargin=\dimexpr \coverpageleftmargin-1in\relax
        \textwidth=\dimexpr
        \paperwidth-\coverpageleftmargin-\coverpagerightmargin\relax
        \textheight=\dimexpr
        \paperheight-\coverpagetopmargin-\coverpagebottommargin\relax
        \headheight=0pt
        \headsep=0pt
        \footskip=\baselineskip
        \@colht=\textheight
        \@colroom=\textheight
        \vsize=\textheight
        \columnwidth=\textwidth
        \hsize=\columnwidth
        \linewidth=\hsize
      \else
      \let\titlepage@restore\relax
      \fi
      \let\footnotesize\small
      \let\footnoterule\relax
      \let\footnote\thanks
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}%
      \ifx\@extratitle\@empty \else
      \noindent\@extratitle\next@tdpage
      \fi
      \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
      \vspace*{2ex}
      \ifdefined\@school
        \begin{minipage}{0.6\textwidth}
        \begin{flushleft}
                {\usekomafont{disposition} \Huge  \linespread{1.15} \@school \par}
        \end{flushleft}
        \end{minipage}\hfill
        \begin{minipage}{0.3\textwidth}
                \includegraphics[width=40mm,height=40mm]{Includes/crest.eps}\par
        \end{minipage}\par
        \else
        \begin{minipage}{1\textwidth}
          {\centering \includegraphics[width=40mm,height=40mm]{Includes/crest.eps}\\}
        \end{minipage}
        \fi
        \vspace{\fill}
        {\centering
        \ifdefined\@coursecode
        {\LARGE\rmfamily\scshape \@coursecode\\}
        \fi
        {\Huge\usekomafont{title} \@title\\}
        \vspace{\fill}
        {\Large \@author \\[1ex] \LARGE\bfseries \@date \ifdefined\@version \\[2ex] \large Version \@version\fi\\}
        }
      \par
      \ifx\@thanks \@thanks\let\@thanks\@empty \else \@empty \fi
      \vfill\null
      \if@twoside
        \@tempswatrue
        \expandafter\ifnum \@nameuse{scr@v@3.12}>\scr@compatibility\relax
        \else
          \ifx\@uppertitleback\@empty\ifx\@lowertitleback\@empty
            \@tempswafalse
          \fi\fi
        \fi
        \if@tempswa
          \next@tpage
          \begin{minipage}[t]{\textwidth}
            \@uppertitleback
          \end{minipage}\par
          \vfill
          \begin{minipage}[b]{\textwidth}
            \@lowertitleback
          \end{minipage}\par
          \@thanks\let\@thanks\@empty
        \fi
      \fi
      \ifx\@dedication\@empty
      \else
        \next@tdpage\null\vfill
        {\centering\usekomafont{dedication}{\@dedication \par}}%
        \vskip \z@ \@plus3fill
        \@thanks\let\@thanks\@empty
        \cleardoubleemptypage
      \fi
      \ifx\titlepage@restore\relax\else\clearpage\titlepage@restore\fi
    \end{titlepage}
  \else
    \par
    \@tempcnta=%
    #1%
    \relax\ifnum\@tempcnta=1\else
      \ClassWarning{\KOMAClassName}{%
        Optional argument of \string\maketitle\space ignored
        at\MessageBreak
        notitlepage-mode%
      }%
    \fi
    \begingroup
      \let\titlepage@restore\relax
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}%
      \next@tdpage
      \if@twocolumn
        \ifnum \col@number=\@ne
          \ifx\@extratitle\@empty\else
            \@makeextratitle
            \next@tdpage
          \fi
          \@maketitle
        \else
          \ifx\@extratitle\@empty\else
            \twocolumn[\@makeextratitle]\next@tdpage
          \fi
          \twocolumn[\@maketitle]%
        \fi
      \else
        \ifx\@extratitle\@empty\else
          \@makeextratitle\next@tdpage
        \fi
        \@maketitle
      \fi
      \ifx\titlepagestyle\@empty\else\thispagestyle{\titlepagestyle}\fi
      \@thanks
    \endgroup
  \fi
  \setcounter{footnote}{0}%
  \expandafter\ifnum \csname scr@v@3.12\endcsname>\scr@compatibility\relax
    \let\thanks\relax
    \let\maketitle\relax
    \let\@maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\@subtitle\@empty
    \global\let\@extratitle\@empty
    \global\let\@titlehead\@empty
    \global\let\@subject\@empty
    \global\let\@publishers\@empty
    \global\let\@uppertitleback\@empty
    \global\let\@lowertitleback\@empty
    \global\let\@dedication\@empty
    \global\let\author\relax
    \global\let\title\relax
    \global\let\extratitle\relax
    \global\let\titlehead\relax
    \global\let\subject\relax
    \global\let\publishers\relax
    \global\let\uppertitleback\relax
    \global\let\lowertitleback\relax
    \global\let\dedication\relax
    \global\let\date\relax
  \fi
  \global\let\and\relax
}%