#QualBlooms <- readRDS('Palettes/QualBlooms.rds')
#SeqBlooms <- readRDS('Palettes/SeqBlooms.rds')
#DivBlooms <- readRDS('Palettes/DivBlooms.rds')


#' Complete list of palettes
#'
#'#' Use \code{\link{bloom_palette}} to construct palettes of desired length.
#'
#' @export
bloom_palettes <- list(
  Episode1 = c("#9FA386","#A3765A", "#AC2031", "#A3504F", "#3EA21B", "#A99F84"),
  Episode2 = c("#61B0A6", "#BBB8C0", "#BF866D", "#C57284", "#B3BAA5", "#0854B1"),
  Episode3 = c("#D09C3D", "#43A7BA", "#C8918C", "#C1657C", "#C99776", "#9DBE96"),
  Episode4 = c("#E5BDDA", "#E3B498", "#E98C97", "#E5B3A9", "#EEA0C2", "#B2E4E1"),
  Episode5 = c("#B3A341", "#AC518A", "#C56259","#C25B69", "#BE855B", "#6088AB"),
  Episode6 = c("#B1A6C7", "#9F9B5C", "#A86D77", "#A7685C", "#B39CAF", "#3D4E8F"),
  Episode7 = c("#BEAC3A", "#DB8A6D", "#EA5065", "#E36058", "#C8B3C9", "#C8906B"),
  Finale = c("#A28FB1", "#C9BB3F", "#B95D68", "#BD7B6C", "#CF80B8", "#55B5B6")
)

QualBlooms <- list(
  Episode1 = c("#9FA386","#A3765A", "#AC2031", "#A3504F", "#3EA21B", "#A99F84"),
  Episode2 = c("#61B0A6", "#BBB8C0", "#BF866D", "#C57284", "#B3BAA5", "#0854B1"),
  Episode3 = c("#D09C3D", "#43A7BA", "#C8918C", "#C1657C", "#C99776", "#9DBE96"),
  Episode4 = c("#E5BDDA", "#E3B498", "#E98C97", "#E5B3A9", "#EEA0C2", "#B2E4E1"),
  Episode5 = c("#B3A341", "#AC518A", "#C56259","#C25B69", "#BE855B", "#6088AB"),
  Episode6 = c("#B1A6C7", "#9F9B5C", "#A86D77", "#A7685C", "#B39CAF", "#3D4E8F"),
  Episode7 = c("#BEAC3A", "#DB8A6D", "#EA5065", "#E36058", "#C8B3C9", "#C8906B"),
  Finale = c("#A28FB1", "#C9BB3F", "#B95D68", "#BD7B6C", "#CF80B8", "#55B5B6")
)

SeqBlooms <- list(
  Episode1 = c('#A1665F','#A1705D','#A28065','#A49C81','#839C56','#51A310','#819976','#A92536'),
  Episode2 = c('#447719','#077B7D','#0B647D','#05375B','#032E65','#023084','#031D72','#64196D'),
  Episode3 = c('#9F503E','#834F27','#AE7D2D','#2B711F','#09596B','#0F3263','#692755','#A32843'),
  Episode4 = c('#A95E58','#BB6F5F','#B5745D','#C58F6F','#C49E72','#747870','#85528F','#E783A5'),
  Episode5 = c('#B03B2D','#9E522F','#98732E','#356E27','#174957','#442E59','#802953','#972838'),
  Episode6 = c('#A06460','#8F5342','#985B3A','#A0774C','#787C54','#535E8F','#9F8A9F','#9A656F'),
  Episode7 = c('#D75048','#CD5F4A','#A85C40','#815431','#957730','#88832B','#27472F','#E84F73'),
  Finale = c('#43790F','#013D27','#024644','#022F3F','#021F32','#031835','#2D0A42','#7E1152')
)

DivBlooms <- list(
  Episode1 = c('#C7071D','#D54555','#E3838E','#F1C1C6','#FFFFFF','#EAF0D0','#D4E2A2','#C0D373','#ABC545'),
  Episode2 = c('#D58056','#DF9F80','#EABFAA','#F4DFD4','#FFFFFF','#C6C3F2','#8E87E6','#564BDA','#1E0FCE'),
  Episode3 = c('#E35E8B','#EA86A8','#F1AEC4','#F8D6E2','#FFFFFF','#F8E6D5','#F1CEAB','#EAB681','#E39E57'),
  Episode4 = c('#F594B9','#F7AECA','#FAC9DC','#FCE4ED','#FFFFFF','#FCE8E1','#F9D1C3','#F5BAA5','#F3A388'),
  Episode5 = c('#E94A59','#EE7782','#F3A4AC','#F9D1D5','#FFFFFF','#F9DCD5','#F3B9AB','#EE9581','#E97358'),
  Episode6 = c('#E16779','#E88D9A','#F0B3BC','#F7D9DD','#FFFFFF','#F7E2DB','#F0C6B7','#E8AA93','#E18E70'),
  Episode7 = c('#FF5768','#FF818D','#FFABB3','#FFD5D9','#FFFFFF','#FFDCD6','#FFBAAE','#FF9786','#FF755E'),
  Finale = c('#E85DA1','#ED85B8','#F3AED0','#F9D6E7','#FFFFFF','#F8F2D8','#F2E5B1','#ECD88A','#E6CC63')
)

#'
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
#'   \code{Episode7}, \code{Finale}
#'   @importFrom graphics rgb rect par image text
#' @param type Type of palette desired. choices are:
#'   \code{seq}, \code{qual},  \code{div}
#'   If omitted, uses qualitative palette
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' bloom_palette("Episode1", type="qual")
#' bloom_palette("Episode2", type="seq")

bloom_palette <- function(name, type=NULL, n) {

  if(is.null(type)) {
     pal <- bloom_palettes[[name]]
  } else{

  if(type=="seq") {
     pal <- SeqBlooms[[name]]
  }

  if(type=="div") {
    pal <- DivBlooms[[name]]
  }

  if(type=="qual") {
    pal <- QualBlooms[[name]]

  }
  }

  if(!name %in% names(bloom_palettes))
    stop("Not a valid palette name")

  if(is.null(pal))
    stop("Palette not found.")

  if(is.null(pal))
    stop("Type not specified. Options are seq, qual, or div")

  if(missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- pal[1:n]

  structure(out, class = "palette", name = name)

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
