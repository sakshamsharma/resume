(TeX-add-style-hook
 "fontawesome"
 (lambda ()
   (TeX-run-style-hooks
    "fontawesomesymbols-generic"
    "fontawesomesymbols-xeluatex"
    "fontawesomesymbols-pdftex"
    "ifxetex"
    "ifluatex"
    "fontspec")
   (TeX-add-symbols
    '("faicon" 1)
    "FAone"
    "FAtwo"
    "FAthree"))
 :latex)

