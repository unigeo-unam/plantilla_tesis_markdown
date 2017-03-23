(TeX-add-style-hook
 "plantilla_tesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "letterpaper" "12pt" "spanish" "twoside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("apacite" "natbibapa") ("inputenc" "utf8") ("babel" "spanish" "activeacute" "es-tabla") ("babelbib" "spanish") ("geometry" "width=150mm" "top=25mm" "bottom=25mm" "bindingoffset=6mm") ("fontenc" "T1") ("hyperref" "breaklinks=true")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "vc"
    "book"
    "bk12"
    "charter"
    "cite"
    "apacite"
    "hyperref"
    "inputenc"
    "babel"
    "babelbib"
    "upquote"
    "microtype"
    "longtable"
    "booktabs"
    "grffile"
    "amsmath"
    "amssymb"
    "mathtools"
    "geometry"
    "fontenc"
    "listings"
    "enumerate"
    "ctable"
    "float"
    "array"
    "url"
    "graphicx"
    "fancyhdr"
    "titlesec"
    "threeparttable")
   (TeX-add-symbols
    '("PreserveBackslash" 1)
    "tightlist"
    "bigrule"
    "temp"
    "PBS")
   (LaTeX-add-bibliographies
    "$biblio-files$")
   (LaTeX-add-array-newcolumntypes
    "x"))
 :latex)

