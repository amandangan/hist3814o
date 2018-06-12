install.packages('magick')
install.packages('magrittr')
install.packages('tesseract')
library(magick) 
library(magrittr)
library(tesseract)
text <- image_read("~/war-diary/e001518087.jpg") %>% 
  image_resize("2000") %>% 
  image_convert(colorspace = 'gray') %>% 
  image_trim() %>% 
  image_ocr()
write.table(text, "~/ocr-test/R.txt")