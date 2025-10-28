\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Notes}

\PassOptionsToPackage{no-math}{fontspec}
% \RequirePackage{mathptmx}
% \RequirePackage[cal=pxtx,bb=boondox]{mathalpha}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[twoside,punct=CCT]{ctexbook}

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
  zhlineskip,
  tcolorbox,
  aliascnt
}
\tcbuselibrary{theorems}
\tcbuselibrary{skins}
%\RequirePackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}

\RequirePackage[colorlinks]{hyperref}
\usepackage[capitalize,nameinlink]{cleveref}

\renewcommand\contentsname{Contents}
\cftpagenumbersoff{part}
\renewcommand\cfttoctitlefont{\mbox{}\hrulefill\par\vskip1em\Huge\bfseries\sffamily}
\renewcommand\cftaftertoctitle{\hfill}
\renewcommand\cftbeforetoctitleskip{0pt}
\renewcommand\cftaftertoctitleskip{80pt}
\renewcommand\cftpartpresnum{\mbox{}\hrulefill\par}
\renewcommand\cftpartafterpnum{\par\vskip\baselineskip\vskip-\ccwd\hrule width\linewidth}

% \definecolor{Red}{RGB}{225 8 0}
% \definecolor{Green}{RGB}{17 87 64}
% \definecolor{Blue}{RGB}{0 37 84}
% \definecolor{Yellow}{RGB}{255 163 0}
% \definecolor{Gray}{RGB}{104 118 138}

%\tcbuselibrary{theorems,skins,breakable}

\geometry{
  bindingoffset=1cm,
  hmargin={2cm,5cm},
  vmargin={3.5cm,3cm},
  marginparsep=5mm,
  marginparwidth=4.2cm,
  headsep=10pt,
  headheight=15pt
}

\fancypagestyle{fancy}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead[RE]{{\scshape\sffamily Section} \sffamily\rightmark}
  \fancyhead[LO]{{\scshape\sffamily Chapter} \sffamily\leftmark}
  \fancyhead[LE,RO]{\sffamily\thepage}
  \renewcommand{\headrulewidth}{.5pt}
}
\fancypagestyle{frontpage}{
  \fancyhead{}
  \fancyfoot{}
  \fancyhead[RE]{\sffamily\rightmark}
  \fancyhead[LO]{\sffamily\leftmark}
  \fancyhead[LE,RO]{\sffamily\thepage}
  \renewcommand{\headrulewidth}{0pt}
}
\fancypagestyle{plain}{
  \fancyhead{}
  \fancyfoot{}
  \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{fancy}

\renewcommand\frontmatter{%
    \cleardoublepage
  \@mainmatterfalse
  \pagestyle{frontpage}
  \pagenumbering{roman}}
\renewcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue
  \pagestyle{fancy}
  \pagenumbering{arabic}}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\begingroup
\mbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\mbox{}\newpage\fi
\endgroup\fi\fi}

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
  chapter={
    name={},
    number={\thechapter},
    format={\Huge\sffamily\raggedleft},
    nameformat={\bfseries},
    titleformat={%
      \leftskip=0pt plus 2fill%
      \rightskip=0pt plus 1fill%
    },
    aftername={%
      \enspace\vrule width1pt height1.3em depth.5em%
      \hrule width\linewidth height1pt\vskip.5em%
    },
    beforeskip=10pt,
    afterskip=30pt
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

\renewcommand{\appendixname}{}

\declaretheoremstyle[
  bodyfont={\sffamily},
  notefont={\bfseries}
]{theoremstyle}
\declaretheorem[
  numberwithin=chapter,
  name=定理,
  style=theoremstyle
]{theorem}
\counterwithin{theorem}{chapter}
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
\declaretheorem[
  sibling=theorem,
  name=注释,
  style=theoremstyle
]{remark}
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
  numberwithin=chapter,
  name={练习},
  style=problemstyle,
  refname={练习}
]{exercise}

\newtcbtheorem[
  auto counter,number within=chapter,
  number freestyle={%
  \noexpand\arabic{chapter}-\noexpand\arabic{\tcbcounter}
}]{problem}{}{%
  theorem style=plain,
  boxrule=0pt,
  frame hidden,
  coltitle=black,
  fonttitle=\sffamily,
  terminator sign={},
  fontupper=\sffamily,
  %description delimiters={}{},
  title=\thetcbcounter
}{prob} 

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
  \normalfont \topsep6\p@\@plus6\p@\relax
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
\renewcommand{\figurename}{Fig}

\newlist{problemize}{enumerate}{1}
\setlist[problemize,1]{label=(\alph*),nosep}
\newlist{romanenum}{enumerate}{1}
\setlist[romanenum]{label=(\roman*),noitemsep}

\endinput