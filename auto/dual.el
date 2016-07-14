(TeX-add-style-hook
 "dual"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("moderncv" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("geometry" "margin=0.40in" "top=0.3in" "bottom=0.3in" "margin=0.25in" "top=0.13in")))
   (TeX-run-style-hooks
    "latex2e"
    "moderncv"
    "moderncv11"
    "multicol"
    "array"
    "color"
    "lipsum"
    "enumitem"
    "inputenc"
    "geometry")
   (TeX-add-symbols
    '("twopage" 1)
    '("onepage" 1)
    '("education" 5)
    '("experience" 4)
    "secspace"
    "secbelow"
    "newline"
    "arraystretch")
   (LaTeX-add-array-newcolumntypes
    "L"
    "C"
    "R")
   (LaTeX-add-color-definecolors
    "titleblue")))

