QualBlooms <- readRDS('Palettes/QualBlooms.rds')
SeqBlooms <- readRDS('Palettes/SeqBlooms.rds')
DivBlooms <- readRDS('Palettes/DivBlooms.rds')

#' palette generator 
#'
#' These are some colour palettes from a collection 
#'
#' @param n Number of colors desired. 
#'   Qual palettes have n=6, Seq palettes have n=8 
#'   All schemes are derived from Yan & Henck's outfits in The Big Flower Flight 
#'   If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{Episode1}, \code{Episode2},  \code{Episode3}, 
#'   \code{Episode4}, \code{Episode5},  \code{Episode6}, 
#'   \code{Episode7}, \code{Finale},  
#'   @importFrom graphics rgb rect par image text
#' @param type Type of palette desired. choices are: 
#'   \code{seq}, \code{qual},  \code{div} 
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' bloom_palette("Episode1", type="qual")
#' bloom_palette("Episode2", type="seq")

bloom_palette <- function(name, type, n) {
  
  if (type=="seq") {
     pal <- SeqBlooms[[name]]
  }
  
  if (type=="div") {
    pal <- DivBlooms[[name]]
  }
  
  if (type=="qual") { 
    pal <- QualBlooms[[name]] 
    
  }  
     
  if (is.null(pal))
    stop("Palette not found.")
  
  if (is.null(pal))
    stop("Type not specified. Options are seq, qual, or div")
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  if (n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  
  out <- pal[1:n]
  
  structure(out, class = "palette", name = name)

  print.palette(out)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))
  
  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  
  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), family = "Helvetica", col = "black")
}
