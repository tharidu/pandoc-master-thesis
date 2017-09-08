# pandoc-master-thesis

Write your Master thesis using pandoc (Markdown and LaTeX).

This repository provides a set of scripts and templates for writing your Master's thesis in Markdown. I used this template for my Master's thesis at KTH Royal Institute of Technology, Sweden and it already includes template suitable for ICT school.
However, this can be adapted to other universities quite easily.
I came up with this template mainly because writing in LaTeX is quite noisy.
Compared with LaTex, writing in Markdown is much simpler and elegant.
Also, by using Pandoc it is possible to do cross referencing and bibliography within markdown.
If markdown cannot be used to write something, you can always write in LaTex (especially formulas and tables).

It is recommended to use Atom editor for getting all the benefits of this repository.
I have used `build` plugin for automating the building process of the pdf.

## Requirements

- [Atom](https://atom.io/) text editor
  - Recommended plugins
    - atom-focus-mode
    - autocomplete-bibtex
    - build
    - language-latex
    - markdown-writer
- [Pandoc](http://pandoc.org/)
  - pandoc-citeproc (Used for citation)
  - pandoc-crossref (Used for cross-references)
- A LaTeX distribution
- Git for version control

## Getting started

Make sure all the requirements are installed properly.
Please use `tlmgr` for installing missing LaTeX packages.

Master LaTeX file used for generating the pdf file is `Thesis_report.tex`.
`chapters` folder contains all markdown files (One md for each chapter).
You can include figures or listings using in your report by including them in `figures` or `listings` folders respectively.

For figures you can use pandoc syntax for including and referencing. (Ex: `![Figure 1](figures/figure1.pdf){#fig:ref width=100%}`).
For referencing figures, it's possible to use [@fig:figure1] syntax.

You can maintain a bib file including all your references in `Thesis.bib`.
I recommend you to use a bibliography manager like [Mendeley](https://www.mendeley.com/) to generate this bib file.
Once you configure the path to your bib file in autocomplete-bibtex plugin, atom will autocomplete bib entries.
Use `[@bib_key]` syntax for citation.

When you want to generate the pdf file, you can press `F9` button to invoke build trigger of atom editor.

There are several options for building (can be selected using `F7` button),
  - Quick build - fastest option (Only builds active md file in atom)
  - Scratch - Transforms all md files found in chapters folder and runs pdflatex *twice* and bibtex commands to properly generate references and bibliography. (When you have changes in bib file, run this)
  - All - Transforms all md files found in chapters folder and runs pdflatex
  - Makeindex - Run this if you have an abbreviations file

Please refer to `build` plugin for more configuration and help on the build system.


I have used the LaTex template available at [link](https://www.kth.se/social/group/latex-course-at-ict-/page/latex-templates/).
