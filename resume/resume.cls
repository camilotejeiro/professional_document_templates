% ======================================================================
% Resume Class
% Author: Camilo Tejeiro
% License: MIT
% ======================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/06/18 Resume class]

\LoadClass[10pt, letterpaper]{article}

\RequirePackage{hyperref}
\hypersetup{colorlinks=true, urlcolor=cyan}

% ---
% Page Dimensions and Layout
% ---
%         8.5 inch
%   -----------------
%   |      0.5in    |
%   |   ---------   |
%   |   |       |   |
%   |0.5|       |0.5| 
%   |   |       |   | 11 inch
%   |   |       |   |
%   |   ---------   | 
%   |      0.5in    |
%   -----------------
\hoffset = -0.5in           % Reduce our horizontal 1 inch margin by 0.5 inches.
\voffset = -0.5in           % Reduce our vertical 1 inch margin by 0.5 inches.
\topmargin = 0in            % margin from top of header to content, keep at 0.
\headheight = 0pt           % Header text space, no header.
\headsep = 0pt              % margin from bottom of header to content, keep at 0.
\oddsidemargin = 0in        % Length of margin on sides for odd pages.
\evensidemargin = 0in       % Length of margin on sides for even pages.    
\textheight = 10in          % Height of the text body.
\textwidth = 7.5in          % Width of the text body.
\footskip = 0.3in           % Move footer down by 0.2 inches, avoid text overlap.
\setlength{\parindent}{0pt} % disable automatic indentation for new paragraphs.

% ---
% Environment Definitions
% ---
% Define environments for large blocks of text ( i.e. paragraphs, quotes, 
% lists... etc. ). 

\newenvironment{resumesection}[1]
{
	\hrulefill
	\resumesectiontitle{#1}
	\par
	\normalsize
}

\newenvironment{resumesubsection}[2]
{
	\resumesubsectiontitle{#1}{#2}
	\par
	\normalsize
}

\newenvironment{resumesubsubsection}[2]
{
	\resumesubsubsectiontitle{#1}{#2}
	\par
	\normalsize    
	\leftskip=0.4in
}

% ---
% Command Definitions
% ---
% Define the commands for individual text ( i.e. a line string or a single 
% word ...etc. ).

\newcommand{\resumetitle}[1]
{
	\centerline
	{
		\large\textbf{#1}
	}
}

\newcommand{\resumesubtitle}[2]
{
	{#1}\hfill{#2} 
}

\newcommand{\resumesectiontitle}[1]
{
	\par
	\medskip
	\large
	{
		\textbf{#1} \nopagebreak
	}
}

\newcommand{\resumesubsectiontitle}[2]
{
	\par
	\medskip
	\normalsize
	\textbf{#1}  \normalsize \hfill{#2} \nopagebreak
	
}

\newcommand{\resumesubsubsectiontitle}[2]
{
	\par
	\medskip
	\normalsize
	\leftskip=0.4in
	{#1} \hfill {\textit{#2}} \nopagebreak
	
}
