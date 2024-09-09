\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Notes}

%\PassOptionsToPackage{no-math}{fontspec}
% \RequirePackage{mathptmx}
% \RequirePackage[cal=pxtx,bb=boondox]{mathalpha}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
\LoadClass[punct=CCT]{ctexart}

\RequirePackage{
  geometry,
  tocloft,
  marginnote,
  fancyhdr,
  extarrows,
  amsthm,
  thmtools,
  enumitem,
  subcaption,
  mathtools,
  zhlineskip
}
%\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}

\RequirePackage[colorlinks]{hyperref}

\renewcommand\contentsname{目录}
\cftpagenumbersoff{part}
\renewcommand\cfttoctitlefont{\mbox{}\hrulefill\par\vskip1em\Large\bfseries\sffamily}
% \renewcommand\cftaftertoctitle{\hfill}
% \renewcommand\cfttoctitlefont{\hfill\huge\bfseries}
\renewcommand\cftbeforetoctitleskip{0pt}
\renewcommand\cftaftertoctitleskip{20pt}
\renewcommand\cftpartpresnum{\mbox{}\hrulefill\par}
\renewcommand\cftpartafterpnum{\par\vskip\baselineskip\vskip-\ccwd\hrule width\linewidth}
\renewcommand\cftdot{·} %填充符号
\renewcommand\cftsecdotsep{3} %填充符号的间距 sec
\renewcommand\cftsecleader{\cftdotfill{\cftsecdotsep}}
%\renewcommand\cftchapdotsep{3} %填充符号的间距 chap
%\renewcommand\cftchapleader{\cftdotfill{\cftchapdotsep}} %生成填充物 chap

% \definecolor{Red}{RGB}{225 8 0}
% \definecolor{Green}{RGB}{17 87 64}
% \definecolor{Blue}{RGB}{0 37 84}
% \definecolor{Yellow}{RGB}{255 163 0}
% \definecolor{Gray}{RGB}{104 118 138}

%\tcbuselibrary{theorems,skins,breakable}

\geometry{
  hmargin={2cm},
  vmargin={3.5cm,3cm},
  headsep=10pt,
  headheight=15pt
}

\fancypagestyle{fancy}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead[C]{{\scshape\sffamily Section} \sffamily\leftmark}
  \fancyfoot[C]{\sffamily\thepage}
  \renewcommand{\headrulewidth}{.5pt}
}
\fancypagestyle{plain}{
  \fancyhead{}
  \fancyfoot{}
  \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{fancy}

\ctexset{
  part={
    name={Part~},
    number={\thepart},
    format={\Huge\bfseries\sffamily\centering},
    aftername={%
      \vskip30pt\hrule width\linewidth height1pt%
      \vskip10pt%
    },
    aftertitle={%
      \vskip10pt\hrule width\linewidth height1pt
    }
  },
  section={
    format={\Large\sffamily\bfseries\raggedright},
    aftername={\enspace}
  },
  subsection={
    format={\large\sffamily},
    aftername={\enspace}
  }
}

\def\@maketitle{%
  \newpage
  \null
  %\vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}

\renewcommand{\appendixname}{}

\declaretheoremstyle[
  bodyfont={\sffamily},
  notefont={\bfseries},
  headfont={\sffamily\bfseries},
  spacebelow=6pt,
  spaceabove=6pt
]{theoremstyle}
\declaretheorem[
  numberwithin=section,
  name=定理,
  style=theoremstyle
]{theorem}
\declaretheorem[
  sibling=theorem,
  name=推论,
  style=theoremstyle
]{corollary}
\declaretheorem[
  sibling=theorem,
  name=定义,
  style=theoremstyle
]{definition}
\declaretheorem[
  sibling=theorem,
  name=命题,
  style=theoremstyle
]{proposition}
\declaretheorem[
  sibling=theorem,
  name=引理,
  style=theoremstyle
]{lemma}
\declaretheoremstyle[
  bodyfont={\upshape}
]{examplestyle}
\declaretheorem[
  sibling=theorem,
  name=例,
  style=examplestyle
]{example}
\declaretheoremstyle[
  bodyfont={\upshape},
  headformat=\NAME~\NUMBER
]{problemstyle}
\declaretheorem[
  numberwithin=section,
  name={Ex},
  style=problemstyle,
  refname={练习}
]{problem}



% \tcbset{
%   common/.style={
%     enhanced jigsaw,
%     sharp corners,
%     boxrule=0pt,
%     colback=white,
%     colbacktitle=white,
%     coltitle=black,
%     fonttitle=\sffamily\bfseries\large,
%     left=5pt,
%     right=5pt,
%     bottom=0pt,
%     top=3pt
%   }
% }

% \newtcbtheorem[number within=chapter]{theorem}{Theorem}{%
%   common,
%   borderline west={3pt}{0pt}{Red}
% }{thm}
% \newtcbtheorem[use counter from=theorem]{lemma}{Lemma}{%
%   common,
%   borderline west={3pt}{0pt}{Red}
% }{lemma}
% \newtcbtheorem[use counter from=theorem]{proposition}{Proposition}{%
%   common,
%   borderline west={3pt}{0pt}{Red}
% }{prop}
% \newtcbtheorem[use counter from=theorem]{corollary}{Corollary}{%
%   common,
%   borderline west={3pt}{0pt}{Red}
% }{coro}
% \newtcbtheorem[use counter from=theorem]{definition}{Definition}{%
%   common,
%   borderline west={3pt}{0pt}{Green}
% }{def}
% \newtcbtheorem[use counter from=theorem]{example}{Example}{%
%   common,
%   borderline west={3pt}{0pt}{Yellow}
% }{exa}
% \newtcbtheorem[no counter]{remark}{Remark}{%
%   common,
%   borderline west={3pt}{0pt}{Gray}
% }{}

% \newtheoremstyle{problem}{5pt}{5pt}{}{}{\bfseries}{}{\newline}{\thmnumber{#2}\ \thmnote{#3}}
% \theoremstyle{problem}
% \newtheorem{problem}{}[section]

\renewcommand\proofname{Proof}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep0\p@\@plus6\p@\relax
  \trivlist
  \item\relax
  {\itshape\sffamily
  #1\@addpunct{.}}\hspace\labelsep\ignorespaces
  }{%
  \popQED\endtrivlist\@endpefalse
}
\newcommand{\solutionname}{Solution}
\newcommand{\solidbox}{\leavevmode
  \hbox to.77778em{%
  \hfill\vrule width.675em height .675em}}
\newenvironment{solution}[1][\solutionname]{\par
  \renewcommand{\qedsymbol}{\solidbox}
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item\relax
  {\itshape\sffamily
  #1\@addpunct{.}}\hspace\labelsep\ignorespaces
  }{%
  \popQED\endtrivlist\@endpefalse
}

\newlist{romanitem}{enumerate}{1}
\setlist[romanitem]{nosep,label=\roman*)}

\renewcommand*{\marginfont}{\itshape}
\renewcommand*{\raggedleftmarginnote}{}
\renewcommand*{\raggedrightmarginnote}{}

\catcode`。=\active
\def。{．}

\captionsetup{
  labelfont=sf
}
%\renewcommand{\figurename}{Fig}

\newlist{problemize}{enumerate}{1}
\setlist[problemize,1]{label=(\alph*),nosep}
\newlist{romanenum}{enumerate}{1}
\setlist[romanenum]{label=(\roman*),noitemsep}

\setlist[enumerate]{nosep}
\setlist[enumerate,2]{label=(\alph{*})}

\endinput