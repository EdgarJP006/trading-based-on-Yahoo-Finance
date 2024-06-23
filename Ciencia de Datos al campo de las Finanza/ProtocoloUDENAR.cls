% ProtocoloUDENAR.cls
\ProvidesClass{ProtocoloUDENAR}

% CARGA EL ESTILO ARTICLE
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[12pt,final]{article} % Carga por defecto la opción letterpaper

% PAQUETES NECESARIOS
\usepackage[T1]{fontenc} % Fuente Especial
%\usepackage[utf8]{inputenc} % Caracteres con Acentos
\usepackage{lmodern} % Fuentes Modernas
\usepackage{fontspec} % Permite usar una fuente diferente a las cargadas por defecto (requiere compilador XeLaTeX)
\usepackage{fix-cm} % Version corregida de Computer Modern Super
\usepackage{latexsym} % Símbolos
\usepackage{amsmath} % Inclusión de Caracteres Matemáticos
\usepackage{multirow} % Inclusión de Multifila
\usepackage{multicol} % Inclusión de Multicolumnas
\usepackage{anysize} % Margenes Personalizadas
\usepackage{longtable} % Tablas Grandes
\usepackage{textcomp} % Texto Diverso
\usepackage{ragged2e} % Paquete para Justificar texto
\usepackage{ccicons} % Símbolos Creative Commons
\usepackage{amsmath} % Inclusión de Caracteres Matemáticos
\usepackage{cancel} % Paquete para Cancelar Términos
\usepackage{scalerel} % Paquete para Integrales Grandes
\usepackage{array} % Opciones Personalizadas de Tablas
\usepackage{titling} % Edición de Titulo y Encabezado
\usepackage{graphicx} % Inclusión de Gráficos
\usepackage{colortbl} % Paquete de Color en Tablas
\usepackage[none]{hyphenat} % Evita la División de Palabras
\usepackage{setspace} % Paquete para espacio entre lineas
\usepackage{threeparttable} % Footnotes en Tablas
\usepackage{subfigure} % Inclusión de Subfiguras
\usepackage[export]{adjustbox} % Más Opciones para Gráficas
\usepackage[dvipsnames]{xcolor} % Paquete de Color
\usepackage{pdfpages} % Agregar PDF's
\usepackage{pdflscape} % Rotar Paginas
\usepackage[bottom]{footmisc} % Paquete para Pies de Página
\usepackage{listings} % Paquete para Escribir Código
\usepackage{hyperref} % Paquete de Hipervínculos
\usepackage{xpatch} % Paquete de Hipervínculos para Citas
\usepackage{enumitem} % Opciones de Numeración
\usepackage{fancyhdr} % Encabezados y Pies de Página Personalizados
\RequirePackage{ifthen} % Paquete ifthen
\RequirePackage{xcolor} % Paquete de Color
\usepackage{listings} % Paquete para Escribir Código
\usepackage{lipsum} % Texto de pruebas
\RequirePackage{lastpage} % Paquete lastpage
\usepackage[toc]{appendix} % Paquete para Apéndices
\usepackage[sort&compress]{natbib} % Paquete para bibliografía
\usepackage[labelfont=bf, font=footnotesize, labelsep=period]{caption} % Estilo de titulos de las gráficas y tablas
\usepackage[left=2.50cm, right=2.50cm, top=2.00cm, bottom=2.00cm, headheight=16pt]{geometry} % Márgenes Personalizadas
\RequirePackage{fontspec}

% DEFINICIÓN DE COLORES
\definecolor{UdenarGreen}{RGB}{0,150,64}
\definecolor{UdenarGreenLight}{RGB}{219,255,234}
\definecolor{UdenarYellow}{RGB}{251,186,0}
\definecolor{UdenarYellowLight}{RGB}{255,248,229}
\definecolor{UdenarRed}{RGB}{227,6,19}
\definecolor{UdenarRedLight}{RGB}{254,228,229}
\definecolor{UdenarBlack}{RGB}{60,60,60}
\definecolor{UdenarBlackLight}{RGB}{235,235,235}

% ESTILO DEL DOCUMENTO
\hbadness=10000 % Evita errores Overfull/Underfull
\vbadness=10000
\sloppy % Realiza una Correcta Justificación del Texto

\setlength\columnsep{30pt} % Separación de columnas, solo en modo twocolumns
\numberwithin{figure}{section} % Numera las Figuras de Acuerdo a la Sección
\numberwithin{table}{section} % Numera las Figuras de Acuerdo a la Sección
\numberwithin{equation}{section} % Numera las Figuras de Acuerdo a la Sección
%\pdfsuppresswarningpagegroup=1 % Evita errores de multiples PDF's en una página
%\pdfminorversion=7

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% ESPACIO ENTRE ENTRADAS DE LA BIBLIOGRAFÍA
%\let\OLDthebibliography\thebibliography
%\renewcommand\thebibliography[1]{
%  \OLDthebibliography{#1}
%  \setlength{\parskip}{0pt}
%  \setlength{\itemsep}{1pt plus 0.5ex}
%}

% SELECCIONAR TIPOGRAFÍA OFICIAL UDENAR
% Cambiar la fuente a Times New Roman
%\setmainfont{Times New Roman}

\setsansfont{RedHat}[    Path=./UDENARStyleData/RedHatFont/,    Scale=0.9,    Extension = .ttf,    UprightFont=*-Regular,    BoldFont=*-Bold,  ItalicFont=*-Italic,    BoldItalicFont=*-BoldItalic]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% HABILITA SMALL CAPITAL EN NEGRITA
\rmfamily % To load Latin Modern Roman and enable the following NFSS declarations.
% Declare that Latin Modern Roman (lmr) should take
% its bold (b) and bold extended (bx) weight, and small capital (sc) shape, 
% from the corresponding Computer Modern Roman (cmr) font, for the T1 font encoding.
\DeclareFontShape{T1}{lmr}{b}{sc}{<->ssub*cmr/bx/sc}{}
\DeclareFontShape{T1}{lmr}{bx}{sc}{<->ssub*cmr/bx/sc}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% COMANDOS PERSONALIZADOS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando:
% \figura{nombre-fichero}{argumentos}{título}{etiqueta}
% Resultado:
% Inserta una figura. 
% Referenciar la figura desde el texto: "La figura \ref{etiqueta}..."
% Argumentos (scale=S, width=Xcm, height=Ycm, angle=Z)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\figura}[4]{
	\begin{figure*}[!htb]
		\begin{center}
			\includegraphics[#2]{#1}
			\begin{minipage}{0,8\textwidth}
				\caption{#3}
				\label{#4}
			\end{minipage}      
		\end{center}
	\end{figure*}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando:
% \figurafull{nombre-fichero}{argumentos}{título}{etiqueta}
% Resultado:
% Inserta una figura de página completa. 
% Referenciar la figura desde el texto: "La figura \ref{etiqueta}..."
% Argumentos (scale=S, width=Xcm, height=Ycm, angle=Z)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\figurafull}[4]{
	\begin{figure*}[!htbp]
		\begin{center}
			\includegraphics[#2]{#1}
			\begin{minipage}{0,8\textwidth}
				\caption{#3}
				\label{#4}
			\end{minipage}      
		\end{center}
	\end{figure*}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando:
% \emptypage
% Resultado:
% Inserta una página en blanco (solo en twoside). 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\emptypage}{
	\makeatletter
		\if@twoside%
			% PAGINA EN BLANCO
			\newpage % Nueva Página 
			\thispagestyle{empty} % Evita la Numeracion de la Página
			$\ $\\ % Espacio en Blanco
		\else%
		\fi% 
	\makeatother
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando:
% \supervisor{Nombre del Asesor}{Universidad}
% Resultado:
% Crea una nueva entrada de asesor de tesis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\supervisor}[2]{
	\textbf{#1}\\
	\vspace{0.1cm}
	#2\\
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% LOGO UDENAR Y ENCABEZADO DE PÁGINA

\renewcommand{\maketitle}{
\begin{center}
\begin{minipage}{\textwidth}
    \vspace{-0.5cm}
    \begin{minipage}{0.39\textwidth}
      \includegraphics[width=\linewidth]{UDENARStyleData/Logos/ugr_logo.png}
    \end{minipage}
        {
	  \setlength\arrayrulewidth{0.65pt}
	  \begin{tabular}{|l}
            \sffamily{\Large{\textbf{UNIVERSIDAD DE GRANADA}}}\\
	    \sffamily{{{CURSO ACADÉMICO 2023-2024}}}\\
	    %\sffamily{\large{VICERRECTORÍA DE INVESTIGACIÓN Y POSTGRADO}}\\
            \sffamily{{\program}}
	  \end{tabular}
        } \end{minipage} \hrule
        \vspace{0.5cm}
  \end{center}
  
% TITULO, AUTOR Y FECHA
\begin{center} \large \textbf \@title\end{center}
\begin{flushright}\large \@author\\
\@date
\end{flushright}
}