(TeX-add-style-hook
 "tccv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "11pt")))
   (TeX-run-style-hooks
    "scrartcl"
    "scrartcl11"
    "enumitem"
    "bookman"
    "etoolbox"
    "hyperref"
    "marvosym"
    "needspace"
    "tabularx"
    "xcolor")
   (TeX-add-symbols
    '("personal" ["argument"] 3)
    '("ucwords" ["argument"] 1)
    '("expitemtwo" 4)
    '("expitem" 4)
    '("ifjob" 3)
    '("directlua" 1)
    "raising"
    "boxwidth"
    "inskip"
    "unbaseline")
   (LaTeX-add-environments
    "tightitemize"
    "thinitemize"
    "eventlist"
    "experience"
    "yearlist"
    "factlist"))
 :latex)

