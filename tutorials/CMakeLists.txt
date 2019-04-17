set(problem_sheets 
"PS1.tex"
"PS2.tex"
"PS3.tex"
"PS4.tex"
"PS5.tex"
"PS6.tex"
"PS7.tex"
"PS8.tex"
)

foreach(problem_sheet ${problem_sheets})
  add_latex_document(
    ${problem_sheet}
    INPUTS "tutorial.cls"
  )
endforeach(problem_sheet ${problem_sheets})
