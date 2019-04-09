# Edinburgh-QFT
Material for the QFT course at the University of Edinburgh

This is a repository for the material used to teach the level-11
course on Quantum Field Theory at the School of Physics and Astronomy
in Edinburgh. 

All material is provisional, and subject to continuous revisions. 

Have fun! 

Luigi

## Building
The repository is set up to be built using CMake (v3 or greater). This is done by doing an out-of-source build using
```bash
mkdir build
cd build
cmake ..
cmake --build .
```
and the resulting generated PDFs are placed in their locations in the source. Depending on your system, you might have to run `cmake3` in place of `cmake`. 

## Adding Sections to the Notes
In order to add a section to the notes, three things must be done:

1. A file added to the `Course/Lectures` directory with the following template

```latex
\documentclass[notes.tex]{subfiles}
\setcounter{chapter}{*chapternumber*}

\begin{document}
\chapter{*SECTIONTITLE*}
\label{chap:*SECTIONLABEL*}

\end{document}
```

2. A line added to the `notes.tex` file in the correct position

```latex
\subfile{Lectures/*new file name without extension*}
```

3. A line added to `Course/CMakeLists.txt` into the `set(lecture_files ... )` command with the filename

All images are added into `Course/images`.