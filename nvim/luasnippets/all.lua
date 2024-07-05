local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
		"abeamer",
		fmta(
			[[
      \documentclass{beamer} 
      \usepackage[utf8]{inputenc} 
      \usepackage[german]{babel} 
      \usepackage{graphicx}
      \usepackage{hyperref}
      \usepackage[font=tiny, labelfont=bf]{caption}
      \usepackage{listings}
      % \lstset{language=Python, frame=single, showstringspaces=false}

      \setbeamertemplate{footline}[frame number]
      \setbeamertemplate{navigation symbols}{}

      \title{<>}
      \author{Asis Hallab}
      \institute{Technische Hochschule Bingen}
      \date{}

      \begin{document}
      
      \frame{\titlepage}
       
      <>

      \end{document}]],
			{ i(1), i(2) }
		)
	),

	s(
		"aframe",
		fmta(
			[[
      \begin{frame}
        \frametitle{<>}
        \begin{columns}
          \column{0.6\textwidth}
          <>
          \column{0.4\textwidth}
          <>
        \end{columns}
      \end{frame}
      ]],
			{ i(1), i(2), i(3) }
		)
	),

	s(
		"frame",
		fmta(
			[[
      \begin{frame}
        \frametitle{<>}
        <>
      \end{frame}
      ]],
			{ i(1), i(2) }
		)
	),

	s(
		"listing",
		fmta(
			[[
      \begin{lstlisting}
        <>
      \end{lstlisting}
      ]],
			{ i(1) }
		)
	),

	s(
		"code",
		fmta(
			[[
      \texttt{<>}
      ]],
			{ i(1) }
		)
	),
}
