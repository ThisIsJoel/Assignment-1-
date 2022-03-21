library(magick)
# square one
picture1 <- image_read("https://www.bing.com/images/search?view=detailV2&ccid=qFnbfSvW&id=D36019F391A463CDC0E470CF52D19D850D51FC91&thid=OIP.qFnbfSvWchuF8CqTD2hlOgHaFY&mediaurl=https%3a%2f%2fcelebritynetworthonly.com%2fwp-content%2fuploads%2f2021%2f01%2fDrake-Net-Worth-scaled.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.a859db7d2bd6721b85f02a930f68653a%3frik%3dkfxRDYWd0VLPcA%26pid%3dImgRaw%26r%3d0&exph=1859&expw=2560&q=drake&simid=608035518177826917&FORM=IRPRST&ck=5CD1DE3F0CC78F6769EE1A73AB2AC464&selectedIndex=7&ajaxhist=0&ajaxserp=0") %>%image_scale(500)

#square two
firstline_text <- image_blank(width = 500, 
                          height = 500, 
                          color = "#000000") %>%
  image_annotate(text = "Before I do my homework",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

# square three
picture2 <- image_read("https://www.bing.com/images/search?view=detailV2&ccid=zkA8p6tu&id=D8381496CD12E6D7A7A647E5E99E4625482F15B4&thid=OIP.zkA8p6tuiSRk4zC5_voEIwHaE8&mediaurl=https%3a%2f%2fi1.wp.com%2fagainstthepoints.com%2fwp-content%2fuploads%2f2020%2f05%2fDrake.jpg%3ffit%3d1200%252C801%26ssl%3d1&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ce403ca7ab6e892464e330b9fefa0423%3frik%3dtBUvSCVGnunlRw%26pid%3dImgRaw%26r%3d0&exph=801&expw=1200&q=drake&simid=608040547584445880&FORM=IRPRST&ck=8F1A83047A58C7CE26A96610D054EA9B&selectedIndex=12&ajaxhist=0&ajaxserp=0") %>%
  image_scale(500)

# square four
secondline_text <- image_blank(width = 500, 
                       height = 500, 
                       color = "#000000") %>%
  image_annotate(text = "While I do my homework",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

# making each row

# first using the approach we used above
cat_vector <- c(picture1, firstline_text)
top_row <- image_append(cat_vector)

# second using a different approach
bottom_row <- image_append(c(picture2, secondline_text))

# making the whole thing!

# using another approach
c(top_row, bottom_row) %>%
  image_append(stack = TRUE) %>%
  image_scale(800)
