library(magick)
# square one
picture1 <- image_read("https://www.bing.com/images/search?view=detailV2&ccid=qFnbfSvW&id=D36019F391A463CDC0E470CF52D19D850D51FC91&thid=OIP.qFnbfSvWchuF8CqTD2hlOgHaFY&mediaurl=https%3a%2f%2fcelebritynetworthonly.com%2fwp-content%2fuploads%2f2021%2f01%2fDrake-Net-Worth-scaled.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.a859db7d2bd6721b85f02a930f68653a%3frik%3dkfxRDYWd0VLPcA%26pid%3dImgRaw%26r%3d0&exph=1859&expw=2560&q=drake&simid=608035518177826917&FORM=IRPRST&ck=5CD1DE3F0CC78F6769EE1A73AB2AC464&selectedIndex=7&ajaxhist=0&ajaxserp=0") %>%
  image_scale(500)

#square two
stats_text <- image_blank(width = 500, 
                          height = 500, 
                          color = "#000000") %>%
  image_annotate(text = "Statistics",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

# square three
happy_cat <- image_read("https://static.boredpanda.com/blog/wp-content/uploads/2015/09/Happy-Cats__880.jpg") %>%
  image_scale(500)

# square four
ml_text <- image_blank(width = 500, 
                       height = 500, 
                       color = "#000000") %>%
  image_annotate(text = "Machine\nlearning",
                 color = "#FFFFFF",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

# making each row

# first using the approach we used above
cat_vector <- c(confused_cat, stats_text)
top_row <- image_append(cat_vector)

# second using a different approach
bottom_row <- image_append(c(happy_cat, ml_text))

# making the whole thing!

# using another approach
c(top_row, bottom_row) %>%
  image_append(stack = TRUE) %>%
  image_scale(800)
