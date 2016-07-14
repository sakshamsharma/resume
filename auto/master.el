(TeX-add-style-hook
 "master"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("moderncv" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=0.50in" "top=0.2in" "bottom=0.3in")))
   (TeX-run-style-hooks
    "latex2e"
    "moderncv"
    "moderncv11"
    "geometry"
    "multicol"
    "array"
    "color"
    "lipsum"
    "enumitem")
   (TeX-add-symbols
    '("education" 5)
    '("experience" 4)
    "newline")
   (LaTeX-add-array-newcolumntypes
    "L"
    "C"
    "R")
   (LaTeX-add-color-definecolors
    "titleblue"))
 :latex)

