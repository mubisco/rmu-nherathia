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

### 3. NPC Sheet

Use this for character descriptions:

**Without image:**
```latex
\npcsheet{Vigilante Sereth}
{Máscara de hierro sin rasgos, capucha oscura, vara metálica.}
{Ahogada, casi monótona; parece escuchar siempre algo detrás de sí.}
{Cumplir normas, evitar que los recién llegados traigan ecos indeseados.}
{Oye ecos cuando está en la niebla; lo oculta por miedo.}
```

**With image:**
```latex
\npcsheet[images/sereth.jpg]{Vigilante Sereth}
{Máscara de hierro sin rasgos, capucha oscura, vara metálica.}
{Ahogada, casi monótona; parece escuchar siempre algo detrás de sí.}
{Cumplir normas, evitar que los recién llegados traigan ecos indeseados.}
{Oye ecos cuando está en la niebla; lo oculta por miedo.}
```

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
