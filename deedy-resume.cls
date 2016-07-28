%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.2cm, vmargin=1.00cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%--------
%	COLORS
%--------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{1b1b1b} % The primary document color for content text
\definecolor{headings}{HTML}{333333} % The color of the large sections
\definecolor{subheadings}{HTML}{444444} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%-------
%	FONTS
%-------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-Regular} % The font used where \sfffamily is called

%-----------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%-----------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{12pt}{12pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------
%	MAIN HEADING COMMAND
%----------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ % Center the name
\fontsize{25pt}{35pt} % Font size
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 % First name font
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\color{headings} % Use the headings color
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{14pt}\selectfont #3} % Contact information font
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-15pt} % Reduce whitespace after the rule slightly
}

%-----------------------------------
%	SECTION TITLE STYLING AND SPACING
%-----------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionspace}{\vspace{4pt}}

\titleformat{\section}{
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{11pt}{11pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{
\color{date}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont {#1 \\} \normalfont}

\newcommand{\descriptbig}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{13pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\descriptnonewline}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont {#1} \normalfont}

\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\textb}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Regular}\fontsize{11pt}{11pt}\selectfont {#1} \normalfont}

\newcommand{\bold}[1]{
  \fontspec[Path = fonts/raleway/]{Raleway-Regular}{#1} \normalfont
}

%-----------------------------------
%	SECTION TITLE STYLING AND SPACING
%-----------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
% Local Variables:
% TeX-engine: xetex
% End:
