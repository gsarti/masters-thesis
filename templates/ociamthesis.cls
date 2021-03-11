% itathesis
% 
% Originally by Keith A. Gillow (gillow@maths.ox.ac.uk), 1997
% Modified by Sam Evans (sam@samuelevansresearch.org), 2007
% Modified by John McManigle (john@oxfordechoes.com), 2015
% Modified by Gabriele Sarti (gabriele.sarti996@gmail.com), 2020
%
% This version Copyright (c) 2020 Gabriele Sarti
%
% Broad permissions are granted to use, modify, and distribute this software
% as specified in the MIT License included in this distribution's LICENSE file.
% 
% Adapted from ociamthesis template by John McManigle (john@oxfordechoes.com)
%
%-------------------------- identification ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{templates/ociamthesis}[Italian Thesis Template]
%-------------------------- initial code -----------------------

% JEM: Defaults to one-side, but passing 'twoside' should set everything up for that
\LoadClass[openright,12pt]{report}

\newif\ifmc@nobind
\mc@nobindfalse

\DeclareOption{nobind}{\mc@nobindtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\setlength{\parskip}{5pt plus 1pt}
\setlength{\parfillskip}{0pt plus .7\textwidth}

% JEM: Lengths for single spacing (ie separate abstract, captions), front matter (abstract,
%   acknowledgements, table of contents, etc), and main body text.
\newlength{\singlebaselineskip}
\newlength{\frontmatterbaselineskip}
\newlength{\textbaselineskip}
% UL 2 Dec 2018: make it possible to customise line and paragraph spacing in separate abstract page
\newlength{\abstractseparatelineskip}  
\newlength{\abstractseparateparskip}


\setlength{\singlebaselineskip}{15pt plus2pt}
\setlength{\frontmatterbaselineskip}{10pt plus1pt minus1pt}
\setlength{\textbaselineskip}{22pt plus2pt}
\setlength{\abstractseparatelineskip}{10pt plus1pt minus1pt}
\setlength{\abstractseparateparskip}{0pt plus 1pt}

\newcommand{\specialcell}[2][l]{%
  \begin{tabularx}{8cm}[#1]{@{}l@{}}#2\end{tabularx}}

\newcommand{\upc}[1]{%
  \expandafter\MakeUppercase\expandafter{#1}}
\newcommand{\candidate}{{Candidato}}
\newcommand{\advisor}{{Relatore}}
\newcommand{\coadvisor}{{Correlatore}}
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

\def\degreedef#1{\gdef\@degreedef{#1}}
% The name of the insitution conferring the degree
\def\universityname#1{\gdef\@universityname{#1}}
% The name of the department to which the student belongs
\def\departmentname#1{\gdef\@departmentname{#1}}
% The full (unabbreviated) name of the degree
\def\degreename#1{\gdef\@degreename{#1}}
% The degree class following Italian standards (e.g. LM-35)
\def\degreeclass#1{\gdef\@degreeclass{#1}}
% Academic year
\def\academicyear#1{\gdef\@academicyear{#1}}
% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The year and term the degree will be officially conferred
\def\advisorname#1{\gdef\@advisorname{#1}}
% The year and term the degree will be officially conferred
\def\coadvisorname#1{\gdef\@coadvisorname{#1}}

%
% LOGOS
%

\def\logo{{\includegraphics[width=32mm]{figures/university_logo.png}}}


%
% Define text area of page and margin offsets
%

\ifmc@nobind
\usepackage[includehead,hmargin={2.5cm, 2.5cm}, vmargin={2.5cm,2.7cm}, headsep=.8cm,footskip=1.2cm]{geometry}
\else
\usepackage[includehead,hmargin={2.9cm, 2.1cm}, vmargin={2.5cm,2.7cm}, headsep=.8cm,footskip=1.2cm]{geometry}
\fi

\usepackage{xcolor}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{emptypage}
\usepackage{latexsym}

\usepackage{fancyhdr}
\setlength{\headheight}{14.5pt}
\fancyhf{} % clear the header and footers
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter. #1}{\thechapter. #1}}
\renewcommand{\sectionmark}[1]{\markright{\thesection. #1}} 
\renewcommand{\headrulewidth}{0pt}
\fancyhead[LO]{\emph{\leftmark}} 
\fancyhead[RE]{\emph{\rightmark}} 
\fancyhead[RO,LE]{\thepage}

\fancypagestyle{plain}{\fancyhf{}\fancyfoot[C]{\thepage}}

% JEM fix header on cleared pages for openright
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
   \hbox{}
   \fancyhead[RE,LO]{}
   \newpage
   \if@twocolumn\hbox{}\newpage
   \fi
   \fancyhead[LO]{\emph{\leftmark}} 
   \fancyhead[RE]{\emph{\rightmark}} 
   \fi\fi}

\usepackage{microtype}
\usepackage{nicefrac}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{textcomp}
\usepackage[cal=cm]{mathalfa}

\usepackage{longtable} 
	% Allows tables to span multiple pages (this package must be called before hyperref)

\usepackage[font=small,labelfont=bf]{caption} 
	% Nicer captions

\usepackage{multicol,multirow,array} 
	% Used to make multiple columns for the indices and for creating columns that span multiple rows in tables

\usepackage{rotating} 
	% To allow tables in landscape mode

\usepackage{booktabs} 
	% For better looking tables

\usepackage{subfig}
  % For subfigures

\usepackage{float}
  % For images after section title in appendix

\usepackage{pdfpages} 
	% Allows multi-page pdfs to be inserted as graphics

\usepackage{xfrac}

\usepackage{pifont}% http://ctan.org/pkg/pifont
\newcommand{\cmark}{\text{\ding{51}}}
\newcommand{\xmark}{\text{\ding{55}}}
  % Checkmark/Xmark

\usepackage{lscape}
  % Landscape pages

\usepackage{threeparttablex}
  % Long footnotes

%\usepackage{enumerate} 
	% Allows different numbering styles for Lists
	% to use:
	% \begin{enumerate}[x] 
		% \item text 
	% \end{enumerate} 
	% where x is:
	% A	uppercase letters (as produced by \Alph)
	% a	lowercase letters (as produced by \alph)
	% I	uppercase roman numerals (as produced by \Roman)
	% i	lowercase roman numerals (as produced by \roman)
	% 1	arabic numbers (as produced by \arabic)
	
% JEM the following package allows changing spacing in lists (for acknowledgements)
\usepackage{enumitem}

\usepackage{times}

% JEM the following allows table columns aligned by decimal point
\usepackage{dcolumn}
\newcolumntype{d}[3]{D{.}{\cdot}{#1} }

\usepackage{appendix} 
	% For helping format appendicies
\usepackage{notoccite} 
	% To format the bibliography
\DeclareUnicodeCharacter{0301}{*************************************}
\DeclareUnicodeCharacter{0308}{}

% Lists and paragraphs
%\parindent 1em
%\topsep 4pt plus 1pt minus 2pt
\partopsep 1pt plus 0.5pt minus 0.5pt
\itemsep 2pt plus 1pt minus 0.5pt
\parsep 2pt plus 1pt minus 0.5pt

% Spacing before/after equations
\g@addto@macro\normalsize{%
  \setlength\abovedisplayskip{12pt}
  \setlength\belowdisplayskip{20pt}
  \setlength\abovedisplayshortskip{8pt}
  \setlength\belowdisplayshortskip{20pt}
}

%\usepackage[colorlinks=false,pdfpagelabels]{hyperref} 
	% for linking between references, figures, TOC, etc in the pdf document

\usepackage[nohints,tight]{minitoc} 
	\setcounter{minitocdepth}{2} 
	% Generates mini tables of contents per chapter
	
% JEM: The following fixes minitoc to not be multiple-spaced.
\let\oldmtc@verse\mtc@verse
\renewcommand{\mtc@verse}[1]{\oldmtc@verse{#1}\setlength{\baselineskip}{\z@}}

%
% Environments
%

% This macro define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse
       \if@twocolumn\@restonecoltrue\onecolumn
       \else\if@openright\cleardoublepage\else\clearpage\fi
       \fi}%
       {\if@restonecol\twocolumn
       \else\newpage\thispagestyle{empty}\fi}


%define title page layout

\renewcommand{\maketitle}{%
\begin{alwayssingle}\newgeometry{top=2.0cm, bottom=2.0cm}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
\begin{center}
    {\logo \par \vspace*{2.5mm}}
{ \large \textbf{\upc{\@universityname}} \vspace*{2.5mm} \par}
  \hrule
    {\vspace*{1ex}}
{ \upc{\@departmentname} \par}
    {\vspace*{0.5ex}}
{ \@degreename \par}
    { \vspace*{40mm} \LARGE {\bfseries {\@title}} \vspace*{40mm} \par}
{\@degreedef \par}
    {\vspace*{25mm}}
{\centering
\begin{tabularx}{\textwidth}{lll}
\specialcell[l]{\footnotesize \advisor \\ \textbf{\@advisorname} \vspace{3mm}} & \hspace{32mm} & \specialcell[l]{\footnotesize \candidate \\ \textbf{\@author} \vspace{3mm}} \\
\specialcell[l]{\footnotesize \coadvisor \\ \textbf{\@coadvisorname}} &  &  \\
\end{tabularx} \par}
    {\vspace*{30mm}}
\hrule
{\vspace*{2mm} \textbf{\@academicyear} \par}
  \end{center}
\end{alwayssingle}\restoregeometry}

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \thispagestyle{empty}
  \vspace*{\fill} \begin{center}}
{\end{center}\vspace*{\fill}\vspace*{\fill} \end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}%
{   \begin{alwayssingle}\chapter*{\textbf{Acknowledgements}}
    \thispagestyle{empty}
	\pagestyle{empty}
	\setlength{\baselineskip}{\frontmatterbaselineskip}
}
{\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\renewenvironment{abstract}%
{   \begin{alwayssingle}\chapter*{\textbf{Abstract}}
    \thispagestyle{empty}
    \pagestyle{empty}
  \setlength{\baselineskip}{\frontmatterbaselineskip}}
{\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\newgeometry{margin=3.3cm}\thispagestyle{empty}\begin{alwayssingle}
 \begin{center}
 {\logo \par \vspace*{2.5mm}}
    {\Large \bfseries \@title \par}
{{\large \vspace*{7mm} \@author} \par}
    {\large \vspace*{1ex}
{{\@universityname} \par}
    {{\@departmentname} \par}
\vspace*{1ex}
    {\normalsize \it {\@degreename} \par}
\vspace*{2ex}
    {\@degreedate} \par}
\vspace*{15mm}
  {\Large \bfseries  Abstract}
  \end{center}
\vspace{1ex}
   \setlength{\baselineskip}{\abstractseparatelineskip} %UL was \z@ rather than \abstractseparatelineskip
   \setlength{\parskip}{\abstractseparateparskip}} %UL add this line so paragraph skip can be customised
{\vfill\end{alwayssingle}\restoregeometry}


%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).
%
% Edited by JEM

\newenvironment{romanpages}
{\cleardoublepage\setlength{\baselineskip}{\frontmatterbaselineskip}\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
{\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\arabic{page}}}


%Figure placement on page
%
%This is to help prevent too many figures on their own pages.  I got it from:
% http://dcwww.camd.dtu.dk/~schiotz/comp/LatexTips/LatexTips.html#captfont

\renewcommand{\topfraction}{0.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\floatpagefraction}{0.75}


% JEM: VERSE, QUOTATION, and QUOTE must be single-spaced.
% These rename the internal commands for the \begin{...} and
% \end{...} environment commands.
\let\@ldquote=\quote
\let\@ldendquote=\endquote
\renewenvironment{quote}
   {\@ldquote\setlength{\baselineskip}{\singlebaselineskip}}
   {\@ldendquote}

\let\@ldqttn=\quotation
\let\@ldendqttn=\endquotation
\renewenvironment{quotation}
   {\@ldqttn\setlength{\baselineskip}{\singlebaselineskip}}
   {\@ldendqttn}

\let\@ldverse=\verse
\let\@ldendverse=\endverse
\renewenvironment{verse}
   {\@ldverse\setlength{\baselineskip}{\singlebaselineskip}}
   {\@ldendverse}

% JEM: Stuff for List of Abbreviations (or Glossary or other list)
\usepackage{calc}
\newcommand{\t@cfill}{\cleaders\hbox{$\m@th \mkern\@dotsep mu.\mkern\@dotsep mu$}\hfill}
\newcommand{\abbrl@bel}[1]{\makebox[\labelwidth][l]{\textbf{#1}\ \t@cfill}}
\newenvironment{mclistof}[2]{%
   \chapter*{#1}%
   \addcontentsline{toc}{chapter}{#1}
   \begin{list}{}%
   {\renewcommand{\makelabel}{\abbrl@bel}%
    \setlength{\labelwidth}{#2}%
    \setlength{\leftmargin}{\labelwidth+\labelsep}%
    \setlength{\itemsep}{0pt}%
    \markboth{#1}{#1}%
   }}
   {\end{list}\mtcaddchapter}


\usepackage[grey,utopia]{quotchap} 
	% To put nice quotes at the beginning of the chapters

\usepackage[nottoc]{tocbibind}
	% Used for inserting the Bibliography, List of Figures, indices, etc into the table of contents.

% JEM: Allow flexible spacing after figures, to reduce other stretching
\setlength{\textfloatsep}{20pt plus15pt minus4pt}

% JEM: Fix paragraph spacing within quotes for multi-par quotes
\renewenvironment{savequote}[1][10cm]{%
\begin{lrbox}{\@quotebox}
\hspace{6cm}\begin{minipage}[t]{#1}\footnotesize\slshape%
\setlength{\parskip}{6px}}{%
\unskip\end{minipage}\end{lrbox}
\global\setbox\@quotebox\copy\@quotebox
\global\let\@printcites\@iprintcites
\ignorespacesafterend}
\renewcommand{\qauthor}[1]{\par
{\raggedleft\upshape #1\qquad\hbox{}\par}\bigskip}

% JEM: All of this is so that headers in these sections aren't uppercase
\let\@ldtoc\tableofcontents
\renewcommand*\tableofcontents{{%
\renewcommand*\MakeUppercase[1]{##1}\@ldtoc}}
\let\@ldlof\listoffigures
\renewcommand*\listoffigures{{%
\renewcommand*\MakeUppercase[1]{##1}\@ldlof}}
\let\@ldlot\listoftables
\renewcommand*\listoftables{{%
\renewcommand*\MakeUppercase[1]{##1}\@ldlot}}
\let\@ldbib\bibliography
\renewcommand*\bibliography[1]{{%
\renewcommand*\MakeUppercase[1]{##1}\@ldbib{#1}}}

% JEM: for crazy multi character set quotes and Unicode and all
\usepackage{lmodern}
\usepackage[LGR,TS1,T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[greek,english]{babel}
\usepackage{csquotes}
\hyphenpenalty=500
\def\longs{{\fontencoding{TS1}\selectfont s}}

% GS: Chapter title styling
\usepackage{ragged2e}
\usepackage[raggedright]{titlesec}
\definecolor{gray75}{gray}{0.75}
\newcommand{\hsp}{\hspace{15pt}}
\titleformat{\chapter}[hang]{\RaggedRight\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\huge\bfseries}


% JEM: for highlighting corrections
\newlength{\mccurrentbaselineskip}
\newlength{\mccurrentparskip}
\newlength{\mccurrentparindent}
\newif\ifcorrections
\newif\ifm@csection
\m@csectionfalse
\correctionsfalse

\colorlet{shadecolor}{blue!20}

\usepackage{framed}
\OuterFrameSep=-9pt
\newenvironment{correction}
{\ifcorrections\colorlet{shadecolor}{blue!20}\if@nobreak\m@csectiontrue\fi\begin{shaded}\ifm@csection\noindent\ignorespaces\fi\fi}
{\ifcorrections\end{shaded}\m@csectionfalse\ifx\@captype\@undefined\@nobreakfalse\fi\fi}

\usepackage{soul}
\sethlcolor{shadecolor}
\newcommand{\mccorrect}[1]{\ifcorrections\hl{#1}\else#1\fi}

% JEM: adjust start-of-chapter spacing
\renewcommand{\chapterheadstartvskip}{\vspace*{0pt}}
\renewcommand{\chapterheadendvskip}{\vspace{30pt}}


% JEM: combine all of the commands you run before appendices start
\newcommand{\startappendices}
  {\appendix\adjustmtc\noappendicestocpagenum\addappheadtotoc\appendixpage}
  
% GS: Emojis and symbols declarations go here
\DeclareUnicodeCharacter{1F917}{\includegraphics[height=0.9em]{figures/emojis/hugging-face_1f917.png}}
\DeclareUnicodeCharacter{274C}{\xmark}
\DeclareUnicodeCharacter{2705}{\cmark}
