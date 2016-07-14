(TeX-add-style-hook
 "deedy-resume"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "hmargin=1.25cm" "vmargin=0.75cm") ("xcolor" "usenames" "dvipsnames") ("textpos" "absolute") ("isodate" "UKenglish")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "article"
    "art10"
    "geometry"
    "hyperref"
    "xcolor"
    "fontspec"
    "textpos"
    "isodate"
    "titlesec")
   (TeX-add-symbols
    '("location" 1)
    '("descriptnonewline" 1)
    '("descript" 1)
    '("runsubsection" 1)
    '("namesection" 3)
    "lastupdated"
    "sectionspace")
   (LaTeX-add-environments
    "tightitemize")
   (LaTeX-add-xcolor-definecolors
    "primary"
    "headings"
    "subheadings"
    "date"))
 :latex)

