### Constructing palette objects from image repo using image pal

library(devtools)
library(imgpalr)
library(tidyverse)


# palette images
PalPath <- "Outfits/"
PalPics <- list.files(PalPath) %>% as.data.frame() %>%
  mutate_at(vars(.), as.character) %>%
  pull(.) #remove the master image

PalNames <- str_remove(PalPics, ".png") #Palette Names

PalPaths <- paste0(PalPath, PalPics)

## qualitative
QualBlooms <- lapply(1:length(PalPaths), function(a) {
  seed <- 1
  pal<- image_pal(PalPaths[[a]], type="qual",k=10, n=6,
                  bw=c(0.25, .9), brightness=c(0.5,0.9), plot=TRUE)
  return(pal)
})

names(QualBlooms) <- PalNames
QualBlooms <- QualBlooms[order(names(QualBlooms))]

### overwrite a couple that need tweaking
pal <- image_pal(PalPaths[[1]], type="qual",k=15, n=6,
                 bw=c(0.25, .9), brightness=c(0.7,0.9), plot=TRUE)

QualBlooms[[1]] <- pal

pal <- image_pal(PalPaths[[4]], type="qual",k=12, n=6,
                 bw=c(0.24, .8), brightness=c(0.5,0.9),  plot=TRUE)

QualBlooms[[4]] <- pal

pal <- image_pal(PalPaths[[6]], type="qual",k=15, n=6,
                 bw=c(0.25, .9), brightness=c(0.4,0.9),  plot=TRUE)

QualBlooms[[6]] <- pal

## sequential
SeqBlooms <- lapply(1:length(PalPaths), function(a) {
  set.seed(1)
  pal<- image_pal(PalPaths[[a]], type="seq", k=15, n=8, seq_by="hsv",
                  bw=c(0.08,0.9),
                  brightness=c(0.1,0.9), saturation=c(0.6, 0.9),
                  plot=TRUE)
  return(pal)
})

names(SeqBlooms) <- PalNames

### overwrite a couple that need tweaking
pal <- image_pal(PalPaths[[1]], type="seq",k=15, n=8, seq_by="hsv",
                 bw=c(0.1, .9), brightness=c(0.7,0.9), plot=TRUE)

SeqBlooms[[1]] <- pal

pal <- image_pal(PalPaths[[6]], type="seq",k=15, n=8, seq_by="hsv",
                 bw=c(0.1, .9), brightness=c(0.4,0.9), plot=TRUE)

SeqBlooms[[6]] <- pal


## diverging
DivBlooms <- lapply(1:length(PalPaths), function(a) {
  set.seed(1)
  pal<- image_pal(PalPaths[[a]], type="div", n=9, seq_by="hsv",
                  bw=c(0.5,0.7),
                  brightness=c(0.80,0.9), saturation=c(0.4, 0.9),
                  plot=TRUE)
  return(pal)
})
names(DivBlooms) <- PalNames

saveRDS(QualBlooms, file="Palettes/QualBlooms.rds")
saveRDS(SeqBlooms, file="Palettes/SeqBlooms.rds")
saveRDS(DivBlooms, file="Palettes/DivBlooms.rds")

