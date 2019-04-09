set(section_files "Sections/Renorm.tex"
"Sections/ScalarPI.tex"
"Sections/intro.tex"
)

set(lecture_files
"Lectures/lecture0.tex"
"Lectures/lecture1.tex"
"Lectures/lecture2.tex"
"Lectures/lecture3.tex"
"Lectures/lecture4.tex"
"Lectures/lecture5.tex"
"Lectures/lecture6.tex")

add_latex_document(
  notes.tex
  INPUTS ${lecture_files}
   ${section_files}
  IMAGE_DIRS images
  BIBFILES QFT.bib
  USE_BIBLATEX
  CONFIGURE notes.tex
  TARGET_NAME full_notes
)

foreach(lecture_file ${lecture_files})
add_latex_document(
  ${lecture_file}
  IMAGE_DIRS images
  BIBFILES QFT.bib
  USE_BIBLATEX
)
endforeach(lecture_file ${lecture_files})

