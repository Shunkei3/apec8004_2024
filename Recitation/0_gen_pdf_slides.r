library(renderthis)
# library(xaringanBuilder)
# build_pdf("~/Dropbox/UM/TA/apec8211_23/Gitcontrolled/Recitation/rec5/recitation5_slides.html")
build_pdf(
	"~/Dropbox/UM/TA/apec8004_24/Gitcontrolled/Recitation/rec6/Recitation6_slides.html",
	complex_slides = TRUE, 
	partial_slides = TRUE
	)



# render this causes errors

# Error in assert_chromote() :
#   `chromote` is required: remotes::install_github('rstudio/chromote')
# In addition: Warning message:
# `build_pdf()` was deprecated in renderthis 0.1.0.
# ℹ Please use `to_pdf()` instead.

# Error in to_pdf_complex(path_from(step_html, "url"), output_file, partial_slides,  :
  # `pdftools` is required: install.packages('pdftools')