\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifsp-spo-beamer}[2021/04/07 v1.0 Modelo do IFSP Campus SPO como extensão do if-beamer]

%
% Repassa todos os parâmetros para a classe if-beamer, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{if-beamer}%
}
\ProcessOptions\relax
% O if-beamer original foi alterado nesse projeto removendo a definição de fonte 8pt
\LoadClass{if-beamer}
\setbeamertemplate{frametitle continuation}{- \insertcontinuationcountroman}
% Outra opção para indicação de continuação
%\addtobeamertemplate{frametitle continuation}{(}{)}

% Para numerar as figuras
\setbeamertemplate{caption}[numbered]

% Mudanças ABNT 6023:2018 recomendável utilizar todos sempre 
\usepackage[alf,abnt-etal-cite=0,abnt-etal-list=0]{abntex2cite}   
% https://barbaraquintela.files.wordpress.com/2016/02/aula51.pdf

\usepackage{amssymb}
\usepackage{pifont}
\hypersetup{breaklinks=true}
\usepackage{multicol}
\usepackage{todonotes}
\usepackage{qrcode}

% Para permitir melhor formatação de celulas de tabelas/quadros
\usepackage{makecell}
\renewcommand\theadalign{bc}
\renewcommand\theadfont{\bfseries}

\usepackage{newfloat}
\DeclareFloatingEnvironment[fileext=quadro,name=Quadro]{quadro}

% No slide a melhor forma de todo é o inline
\presetkeys{todonotes}{inline}{}

% Para caracteres adicionais
\newcommand{\cmark}{\ding{51}}%
\newcommand{\xmark}{\ding{55}}%
\newcommand{\circlemark}{\ding{108}}%

% https://tex.stackexchange.com/questions/171587/append-entries-to-an-existing-graphicspath
\newcommand\appendtographicspath[1]{%
  \gappto\Ginput@path{#1}%
}
\newcommand\prependtographicspath[1]{%
  \gpreto\Ginput@path{#1}%
}
\appendtographicspath{{figuras/}}

\institute[IFSP-SPO]{
  Instituto Federal de São Paulo\\
  Campus São Paulo
}
\logo{
\includegraphics[scale=0.0065]{if-logo-beamer.png}
}
% Para utilização nas ilustrações/tabelas/quadros sem precisar de outros pacotes mais complexos
\newcommand{\fonte}[1]{{\newline \tiny Fonte: #1}}



