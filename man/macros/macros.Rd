% More secret sauce the \html tag has to be evaluated when you load the help
% file, rather than at package compilation, for the overriding to work.
\newcommand{\html}{\Sexpr[stage=render, results=text]{htmlhelp:::rawHTML(#1)}}