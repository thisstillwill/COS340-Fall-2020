
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cos340hw}

%%
%% Thanks Ted!

% Pass any options to the underlying class.
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article} % (could be another class)
}


\def\auxpropname{Auxiliary proposition}
\def\sketchofproofname{Sketch of proof}
\def\theoremname{Theorem}
\def\examplename{Example}
\def\exercisename{Exercise}
\def\lemmaname{Lemma}
\def\factname{Fact}
\def\remarkname{Remark}
\def\principlename{Principle}
\def\definitionname{Definition}


% Options for this class.
\DeclareOption{en}{{%\AtEndOfClass{%
  % Non-standard
  \def\auxpropname{Auxiliary proposition}
  \def\sketchofproofname{Sketch of proof}
  \def\theoremname{Theorem}
  \def\examplename{Example}
  \def\exercisename{Exercise}
  \def\lemmaname{Lemma}
  \def\factname{Fact}
  \def\remarkname{Remark}
  \def\principlename{Principle}
  \def\definitionname{Definition}
}}


% Defaults.
%%\ExecuteOptions{en}


\PassOptionsToClass{reqno}{article}
\PassOptionsToClass{reqno}{amsart}
\ExecuteOptions{reqno}

% Now execute any options passed in
\ProcessOptions\relax

% Load underlying class.
%\LoadClass{amsart}%article}
\LoadClass{article}


% Martin Scharrer
\makeatletter
\def\ignorespacesandimplicitepars{%
  \begingroup
  \catcode13=10
  \@ifnextchar\relax
    {\endgroup}%
    {\endgroup}%
}

\def\ignorespacesandallpars{%
  \begingroup
  \catcode13=10
  \@ifnextchar\par
    {\endgroup\expandafter\ignorespacesandallpars\@gobble}%
    {\endgroup}%
}

\makeatletter

% Test cases
\let\ignorespacesandpars\ignorespacesandimplicitepars
%\let\ignorespacesandpars\ignorespacesandallpars



\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}


% nicer mathcal
\RequirePackage{eucal}



\RequirePackage{times}



%%% 
\RequirePackage{amsmath, amssymb}
\RequirePackage{fullpage}
\RequirePackage{graphicx}
\RequirePackage{array}
%\pagestyle{empty}
\def\pp{\par\noindent}

%%%%%%%%%%%%%%%%%
% Set the margins

\setlength{\textheight}{8.5in}
\setlength{\headheight}{.25in}
\setlength{\headsep}{.25in}
\setlength{\topmargin}{0in}
\setlength{\textwidth}{6.5in}
\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}

% Macros
\newcommand{\myN}{\hbox{N\hspace*{-.9em}I\hspace*{.4em}}}
\newcommand{\myZ}{\hbox{Z}^+}
\newcommand{\myR}{\hbox{R}}
\newcolumntype{N}{@{}m{0pt}@{}}

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 

\newcommand{\myfunction}[3]
{${#1} : {#2} \rightarrow {#3}$ }

\newcommand{\myzrfunction}[1]
{\myfunction{#1}{{\myZ}}{{\myR}}}


\def\indicator#1{{\left\llbracket{#1}\right\rrbracket}}

\newcommand\ds{\displaystyle}

%%%% ADDITIONAL MATHEMATICAL SYMBOLS AND COMMANDS
%\def\llbracket{[[}\def\rrbracket{]]}

\newcommand{\mathbd}[1]{\ensuremath{\mbox{\boldmath$#1$}}}

\def\Li{{\mathrm{Li}}}

\newcommand{\cplxI}{\ensuremath{\mathrm{i}}}
\newcommand{\RealPart}[1]{\ensuremath{\mathrm{Re}\!\left({#1}\right)}}

\newcommand{\prob}[2][]{\ensuremath{{\mathbb P}_{{#1}}\!\left[{#2}\right]}}
\newcommand{\expect}[2][]{\ensuremath{{\mathbb E}_{{#1}}\!\left[{#2}\right]}}
\newcommand{\deviation}[2][]{\ensuremath{{\sigma}_{{#1}}\!\left[{#2}\right]}}
\newcommand{\empiricaldeviation}[2][]{\ensuremath{{\hat\sigma}_{{#1}}\!\left[{#2}\right]}}
\newcommand{\variance}[2][]{\ensuremath{{\mathbb V}_{{#1}}\!\left[{#2}\right]}}
\newcommand{\covariance}[2][]{\ensuremath{{\mathrm{cov}}_{{#1}}\!\left[{#2}\right]}}
\def\drm{\ensuremath{\mathrm{d}}}
\def\smexp#1{\mathrm{e}^{#1}}
\def\lgexp#1{\ensuremath{\exp{\left({#1}\right)}}}
\def\msim{\mathop{\sim}\limits}
\def\limitwhen#1{\mathop{\longrightarrow}\limits_{#1}}
\def\BigO#1{\ensuremath{O\!\left({#1}\right)}}

\def\R{{\ensuremath{{\mathbb R}}}}
\def\Rpos{{\ensuremath{{\mathbb R}_{\geqslant}}}}
\def\Rspos{{\ensuremath{{\mathbb R}_{>}}}}
\def\N{{\ensuremath{{\mathbb N}}}}
\def\Nspos{{\ensuremath{{\mathbb N}_{>}}}}
\def\Z{{\ensuremath{{\mathbb Z}}}}
\def\C{{\ensuremath{{\mathbb C}}}}
\def\Znz{{\ensuremath{{\mathbb Z}_{\not=0}}}}
\def\Zpos{{\ensuremath{{\mathbb Z}_{\geqslant}}}}
\def\Zposz{{\ensuremath{{\mathbb Z}_{\geqslant 0}}}}
\def\Zspos{{\ensuremath{{\mathbb Z}_{>}}}}


%%% PROBABILITY LAWS %%%
\def\BernoulliLaw#1{\ensuremath{\mathrm{Ber}\!\left({#1}\right)}}
\def\BinomialLaw#1{\ensuremath{\mathrm{Bin}\!\left({#1}\right)}}
\def\GeometricLaw#1{\ensuremath{\mathrm{Geo}\!\left({#1}\right)}}
\def\PoissonLaw#1{\ensuremath{\mathrm{Poi}\!\left({#1}\right)}}
\def\LogseriesLaw#1{\ensuremath{\mathrm{Loga}\!\left({#1}\right)}}
\def\UniformLaw#1{\ensuremath{\mathcal{U}\!\left({#1}\right)}}
\def\ExponentialLaw#1{\ensuremath{\mathrm{Exp}\!\left({#1}\right)}}
\def\NormalLaw#1{\ensuremath{\mathcal{N}\!\left({#1}\right)}}
\def\DiscreteUniformLaw#1{\ensuremath{\mathcal{U}\!\left(\left\{{#1}\right\}\right)}}



%%%% BIGCENTER environment (to center even outside the margins).
\makeatletter
\newskip\@bigflushglue \@bigflushglue = -100pt plus 1fil
\def\bigcenter{\trivlist \bigcentering\item\relax}
\def\bigcentering{\let\\\@centercr\rightskip\@bigflushglue%
\leftskip\@bigflushglue
\parindent\z@\parfillskip\z@skip}
\def\endbigcenter{\endtrivlist}
\makeatother
%%%% end BIGCENTER %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\newcommand{\bbZ}    {\mathbb{Z}}
\newcommand{\bbQ}    {\mathbb{Q}}
\newcommand{\bbN}    {\mathbb{N}}
\newcommand{\bbB}    {\mathbb{B}}
\newcommand{\bbR}    {\mathbb{R}}
\newcommand{\bbC}    {\mathbb{C}}
\newcommand{\la} {\langle}
\newcommand{\ra} {\rangle}
\newcommand{\mb}[1] {{\bf #1}}
\newcommand{\calP}   {{\cal{P}}}
\newcommand{\abs}[1]{\left| #1 \right|}
\newcommand{\del}{\delta}
\newcommand{\eps}{\epsilon}
\newcommand{\lam}{\lambda}
\newcommand{\pr}[1]{\text{Pr}\left[ #1 \right]}
\newcommand{\expt}[1]{\text{E}\left[ #1 \right]}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\err}{err}


%%%%%%%%%%%%%%%%%%%
% Formatting Macros

\newcommand{\myheader}[4]
{\vspace*{-0.5in}
\noindent
{#1} \hfill {#3}

\noindent
{#2} \hfill {#4}

\noindent
\rule[8pt]{\textwidth}{1pt}

\vspace{1ex} 
}  % end \myheader 

\newcommand{\myalgsheader}[0]
{\myheader{ 
{\textbf{COS 340}} }

{  {\textbf{Fall 2020}}}
}

% Running head (goes at top of each page, beginning with page 2).
% Must precede by \pagestyle{myheadings}.
\newcommand{\myrunninghead}[2]
{\markright{{\it {#1}, {#2}}}}

\newcommand{\myrunningalgshead}[2]
{\myrunninghead{COS 340 }{{#1}}}

\newcommand{\myrunninghwhead}[2]
{\myrunningalgshead{Solution to HW {#1}, Problem {#2}}}

\newcommand{\mytitle}[1]
{\begin{center}
{\large {\bf {#1}}}
\end{center}}

\newcommand{\myhwtitle}[5]
{\begin{center}
{\large {\bf Homework {#1}:~~Problem~{#2}}}\\
\medskip 
{#3~(\texttt{#4})}\\ % Name goes here
\smallskip
\textit{\footnotesize{#5}}
\end{center}\bigskip\rule[8pt]{\textwidth}{1pt}}


\newcommand{\hwPrologue}[5]{
  {\myalgsheader{}}
  {\pagestyle{plain}}
  \myhwtitle{#1}{#2}{#3}{#4}{Collaborators: #5}}


\newcommand{\mysection}[1]
{\noindent {\bf {#1}}}
