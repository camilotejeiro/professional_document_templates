% ======================================================================
% Professional Profile Template
% Author: Camilo Tejeiro
% License: MIT
% ======================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{profile}[Profile class]

\LoadClass[10pt, letterpaper]{article}

\RequirePackage{hyperref}
\hypersetup{colorlinks=true, urlcolor=cyan}

% ---
% Page Dimensions and Layout
% ---
%         8.5 inch
%   -----------------
%   |       1in     |
%   |    --------   |
%   |   |       |   |
%   |1in|       |1in| 
%   |   |       |   | 11 inch
%   |   |       |   |
%   |   ---------   | 
%   |       1in     |
%   -----------------
\topmargin = 0in            % Length of the margin at the top of the page.
\oddsidemargin = 0in        % Length of margin on sides for odd pages.
\evensidemargin = 0in       % Length of margin on sides for even pages.
\textwidth = 6.5in          % How wide you want your text to be.    
\headheight = 0pt           % Margins at top and bottom
\headsep = 0pt              % the white space between headers.
\textheight = 9.0in         % Height of the text body.
\setlength{\parindent}{0pt} % disable automatic indentation for new paragraphs

% ---
% Environments Definitions
% ---
% Define environments for large blocks of text ( i.e. paragraphs, quotes, 
% lists... etc. ). 

\newenvironment{profsection}[1]
{
    \hrulefill
    \profsectiontitle{#1}
    \par
    \normalsize
}

\newenvironment{profsubsection}[2]
{
    \profsubsectiontitle{#1}{#2}
    \par
    \normalsize
}

\newenvironment{profsubsubsection}[2]
{
    \profsubsubsectiontitle{#1}{#2}
    \par
    \normalsize    
    \leftskip=0.4in
}

% ---
% Commands Definittions
% ---
% Define commands for individual text ( i.e. a line string or a single 
% word ...etc. ).

\newcommand{\proftitle}[1]
{
    \centerline
    {
        \Large\textbf{#1}
    }
}

\newcommand{\profsubtitle}[1]
{
    \centerline{#1} 
}

\newcommand{\profsectiontitle}[1]
{
    \par
    \medskip
    \large
    {
        \textbf{#1} \nopagebreak
    }
}

\newcommand{\profsubsectiontitle}[2]
{
    \par
    \medskip
    \normalsize
    \textbf{#1}  \normalsize \hfill{#2} \nopagebreak

}

\newcommand{\profsubsubsectiontitle}[2]
{
    \par
    \medskip
    \normalsize
    \leftskip=0.4in
    \underline{#1} \normalsize \hfill {#2} \nopagebreak
    \smallskip         %because the underline takes a bit of space. 

}
