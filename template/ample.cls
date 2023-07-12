\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/ample}[2023/07/00 The ample template class.]

% declare & process options
\DeclareOption{article}{\newcommand{\@ample@BaseClass}{scrartcl}}
\DeclareOption{report}{\newcommand{\@ample@BaseClass}{scrreprt}}

\DeclareOption{english}{\newcommand{\@ample@Language}{english}}
\DeclareOption{german}{\newcommand{\@ample@Language}{german}}

\ProcessOptions

% load base class
\LoadClass[12pt,a4paper]{\@ample@BaseClass}

% load required packages
\RequirePackage{template/packages}

% define custom commands
\RequirePackage{template/commands}
