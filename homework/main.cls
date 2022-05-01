\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Homework}[2020/04/15, v0.1]
\LoadClass{article}

% ------------------------------------------------------- %
% --------------------- Packages ------------------------ %
% ------------------------------------------------------- %

\RequirePackage[T1]{fontenc}
\RequirePackage{etex}
\RequirePackage{fancyhdr}                        % Cabecera
\RequirePackage[spanish,es-tabla]{babel}         % Español
\RequirePackage[utf8]{inputenc}                  % Tildes
\RequirePackage{enumerate}                       % Enumerar
\RequirePackage{amsmath,amsthm,amssymb,amsfonts} % Matemáticas
\RequirePackage{marvosym}                        % Símbolos
\RequirePackage{mathrsfs}
\RequirePackage{graphicx}                        % Gráficas
\RequirePackage[shortlabels]{enumitem}           % Enumeraciones
\RequirePackage{cancel}                          % Cancelaciones
\RequirePackage{siunitx}                         % Unidades SI
\RequirePackage{tcolorbox, empheq}
\RequirePackage{multicol}                        % Multicolumnas 
\RequirePackage{xcolor}                          % Colores
\RequirePackage{colortbl}                        % Color tablas
\RequirePackage{afterpage}
\RequirePackage{subfigure}                       % Subfiguras
\RequirePackage{chemfig}                         % Química figuras
\RequirePackage[version=4]{mhchem}               % Química formulas
\RequirePackage{hyperref}                        % Hipervínculos
\RequirePackage[pages=all]{background}           % Imagen de fondo
\RequirePackage[format=plain,
                labelfont={bf,color=UdeAVerde},
                textfont=it,
                justification=justified,
                font=small,
                ]{caption}             % Caption
\RequirePackage[left=1.5cm,right=1.5cm,
                top=2.3cm,bottom=2cm]{geometry}  % Margen de la pagina
\RequirePackage{titlesec}

\RequirePackage{lipsum}                          % Texto de prueba
% ------------------------------------------------------- %

\spanishdecimal{.}                               % Punto decimal
\parindent=0mm                                   % Eliminar sangría

%\captionsetup{labelfont={color=\ud},font={color=blue}}

% ------------------------------------------------------- %
% ----------------------- Colors ------------------------ %
% ------------------------------------------------------- %

\definecolor{UdeAVerde}{RGB}{10,53,28}            % Color verde oscuro
\definecolor{UdeAverde}{RGB}{108,154,6}           % Color verde claro
\definecolor{UdeABlanco}{RGB}{224,224,224}        % Color blanco
\newcommand{\boldUdeA}[1]{\textcolor{UdeAVerde}{\textbf{#1}}}  
\newcommand{\boldudea}[1]{\textcolor{UdeAverde}{\textbf{#1}}}
\newcommand{\BoldUdeA}[1]{\textcolor{UdeABlanco}{\textbf{#1}}}

% ------------------------------------------------------- %

% ------------------------------------------------------- %
% ------------------------------------------------------- %
% ------------------------------------------------------- %

\makeatletter
\date{\today}
\def\@studentname{1}
\def\@titlework{1}
\def\@studentid{1}
\def\@institute{1}
\def\@faculty{1}
\newcommand{\studentname}[1]{\def\@studentname{#1}}
\newcommand{\studentid}[1]{\def\@studentid{#1}}
\newcommand{\subject}[1]{\def\@subject{#1}}
\newcommand{\titlework}[1]{\def\@titlework{#1}}
\newcommand{\institute}[1]{\def\@institute{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\studentinfo}{{\@studentname} (\@studentid)}
\makeatother
% ------------------------------------------------------- %

\titleformat{\section}{\Large\boldUdeA}{\thesection}{0em}{}[{\titlerule[0.8pt]}]

\renewcommand{\CancelColor}{\color{UdeAVerde}}
\newcommand*\circled[1]{%
\tikz[baseline]{\node[color=UdeAVerde, shape=circle,%
    draw, inner sep=4pt, line width=1.5pt] (char) {#1};}}
    
% ------------------------------------------------------- %
% ----------------- Itemize & Enumerate ----------------- %
% ------------------------------------------------------- %

\renewcommand{\labelitemi}{$\textcolor{UdeAVerde}{\bullet}$}
\renewcommand{\labelitemii}{$\textcolor{UdeAVerde}{\blacktriangleright}$}
\renewcommand{\labelitemiii}{$\textcolor{UdeAVerde}{\rightarrow}$}

\renewcommand{\labelenumi}{\textcolor{UdeAVerde}{\arabic{enumi}.}}
\renewcommand{\labelenumii}{\textcolor{UdeAVerde}{\arabic{enumii})}}
\renewcommand{\labelenumiii}{\textcolor{UdeAVerde}{\roman{enumiii})}}

% ------------------------------------------------------- %

% ------------------------------------------------------- %
% ---------------------- First Page --------------------- %
% ------------------------------------------------------- %

\makeatletter
\def\maketitle{%
  \null
  \thispagestyle{empty}
  \NoBgThispage
  \begin{center}\leavevmode
    \normalfont
        \includegraphics[width=0.35\columnwidth]{LogoUdeA.png}
        \vskip 0.5cm   
        \textsc{\large{\textcolor{UdeAVerde}{\@institute}}}\\
        \textsc{\large{\textcolor{UdeAVerde}{\@faculty}}} \\ [0.5cm]
        \textsc{\textbf{\Large{\textcolor{UdeAVerde}{\@titlework}}}} \\ [0.5cm]
	    {\large \textcolor{UdeAVerde}{\@date}\par}
        \vskip 1.0cm
	    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	    { \huge \bfseries \textcolor{UdeAVerde}{\@subject}}\\
	    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	    \Large{\textcolor{UdeAVerde}{\emph{Nombre:}} \@studentname} \\ [0.5cm]
	    \Large{\textcolor{UdeAVerde}{\emph{Número de Identificación}:} \@studentid}
  \end{center}
   \vfill
   \null
   \cleardoublepage
   }
\makeatother

% ------------------------------------------------------- %
% --------------------- Background ---------------------- %
% ------------------------------------------------------- %

\backgroundsetup{
    scale=1,                         % Escala de la imagen
    color=black,                     % Color del fondo 
    opacity=0.08,                    % Nivel de transparencia
    angle=0,                         % Rotación
    contents={\includegraphics[width=\paperwidth,height=\paperheight]
    {FondoUdeA.png}        % Nombre de la imagen
}
}

% ------------------------------------------------------- %

% ------------------------------------------------------- %
% ----------------------- Header -----------------------  %
% ------------------------------------------------------- %
\makeatletter
\AtBeginDocument{%
\fancyhead[L]{%
\color{UdeAVerde}%
    \@subject
}
\fancyhead[c]{%
\color{UdeAVerde}%
    \@titlework
}
\fancyhead[R]{%
\color{UdeAVerde}%
    \@studentname
}
\renewcommand{\headrulewidth}{1.5pt}
\let\oldheadrule\headrule
\renewcommand{\headrule}{\color{UdeAVerde}\oldheadrule}% 

% ------------------------------------------------------- %
% ----------------------- Footer -----------------------  %
% ------------------------------------------------------- %
\fancyfoot[C]{%
\noindent%
\tikz[baseline]{\draw[color=UdeAVerde, line width=1.5pt] (-2.5, 0) -- (6, 0);}%
\protect\circled{\thepage}%
\tikz[baseline]{\draw[color=UdeAVerde, line width=1.5pt] (8, 0) -- (17, 0);}}%
\pagestyle{fancy}%
}
\makeatother
% ------------------------------------------------------- %

