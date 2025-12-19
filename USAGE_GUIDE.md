# Widget Usage Guide

## How to Use the Custom Widgets

### 1. Read Aloud Box (For Player Descriptions)

Use this for narrative text that should be read to players:

```latex
\begin{readaloud}
La niebla se arremolina alrededor del barco como si tuviera voluntad propia. 
A medida que se acerca el muelle, los personajes distinguen los contornos 
deformados de Portimar...
\end{readaloud}
```

### 2. Rules Box (For Game Mechanics)

Use this for clarifications, mechanics, or rules reminders:

```latex
\begin{rulesbox}
\textbf{Percepción:} Tirada de Percepción (difícil) para notar que uno de 
los guardias susurra sin mover los labios.

\textbf{Corrupción mental:} Si un PJ mira demasiado tiempo a la niebla, 
debe superar una RR contra Canalización.
\end{rulesbox}
```

### 3. NPC Sheet (Named Parameters!)

Use this environment for character descriptions with clear, named sections:

**Basic usage:**
```latex
\begin{npcsheet}{Vigilante Sereth}
  \appearance{Máscara de hierro sin rasgos, capucha oscura, vara metálica.}
  \voice{Ahogada, casi monótona; parece escuchar siempre algo detrás de sí.}
  \motivation{Cumplir normas, evitar que los recién llegados traigan ecos indeseados.}
  \secrets{Oye ecos cuando está en la niebla; lo oculta por miedo.}
\end{npcsheet}
```

**With subtitle:**
```latex
\begin{npcsheet}[Guardia del Silente]{Vigilante Sereth}
  \appearance{Máscara de hierro sin rasgos...}
  \voice{Ahogada, casi monótona...}
  \motivation{Cumplir normas...}
  \secrets{Oye ecos cuando está en la niebla...}
\end{npcsheet}
```

**With image:**
```latex
\begin{npcsheet}[Capitán del barco]{Marn Velkan}
  \npcimage{images/marn.jpg}
  \appearance{Hombre delgado, barba húmeda, manos temblorosas.}
  \voice{Rápida, nerviosa, evita mirar a los guardias.}
  \motivation{Sobrevivir al desembarco; no quiere problemas.}
  \secrets{Sabe que los últimos barcos extranjeros fueron retenidos días enteros.}
\end{npcsheet}
```

**Note:** All fields are optional! You can omit any you don't need.

## Two-Column Layout

To start two-column layout in a scene:

```latex
\begin{multicols}{2}
Your scene content here...
\end{multicols}
```

**Note:** Widgets can break columns automatically. For full-width widgets, use:

```latex
\end{multicols}

% Full-width content here

\begin{multicols}{2}
```

## Customization

Colors and styles are defined in `nherathia_module.tex`. You can adjust:
- `colback` = background color
- `colframe` = border color
- `title` = box title
- Spacing and padding values

## Color Theme System

All widget colors are now defined using HTML color codes at the top of `nherathia_module.tex`. This makes theme changes easy!

### Current Color Definitions

```latex
% Read Aloud Box
\definecolor{ReadAloudBorder}{HTML}{CC6600}   % Orange-brown
\definecolor{ReadAloudBG}{HTML}{FFFFFF}       % White

% Rules Box
\definecolor{RulesBorder}{HTML}{3366CC}       % Blue
\definecolor{RulesBG}{HTML}{E6F0FF}           % Light blue
\definecolor{RulesTitleBG}{HTML}{3366CC}      % Blue

% NPC Sheet
\definecolor{NPCBorder}{HTML}{2E8B57}         % Sea green
\definecolor{NPCBG}{HTML}{F0FFF0}             % Honeydew
```

### How to Change Theme

Just edit the HTML color codes! Use any color picker tool or website:
- https://htmlcolorcodes.com/
- https://coolors.co/

Example: Make NPC sheets purple instead of green:
```latex
\definecolor{NPCBorder}{HTML}{8B008B}         % Dark magenta
\definecolor{NPCBG}{HTML}{F8E6FF}             % Lavender blush
```

After changing colors, recompile: `xelatex nherathia_module.tex`
