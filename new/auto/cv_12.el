(TeX-add-style-hook
 "cv_12"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("deedy-resume" "a4paper")))
   (TeX-run-style-hooks
    "latex2e"
    "deedy-resume"
    "deedy-resume10"))
 :latex)

