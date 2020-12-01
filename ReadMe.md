
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Yan & Henck Inspo

## Installation

You can install bestinbloom from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("arsweeny/bestinbloom")
```

## Usage

You can create a palette with the following command, specifying type
(“qual”, “seq”, “div”) Although none of these outfits lend themselves
to much beyond qualitative pals\!

``` r
library(bestinbloom)
```

``` r
pal <- bloom_palette("Episode3", type="qual")
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="70%" />

If you want a specific number of colors up to 6 (qual), 8 (seq), 9 (div)

``` r
pal <- bloom_palette("Episode3", type="qual", n=4)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="70%" />

## Palettes Available

Palettes in this package correspond to each set of outfits in every
episode, named accordingly.

### Episode 1

<img src="man/figures/README-Ep 1-1.png" width="70%" /><img src="man/figures/README-Ep 1-2.png" width="70%" />

### Episode 2

<img src="man/figures/README-Ep 2-1.png" width="70%" /><img src="man/figures/README-Ep 2-2.png" width="70%" />

### Episode 3

<img src="man/figures/README-Ep 3-1.png" width="70%" /><img src="man/figures/README-Ep 3-2.png" width="70%" />

### Episode 4

<img src="man/figures/README-Ep 4-1.png" width="70%" /><img src="man/figures/README-Ep 4-2.png" width="70%" />

### Episode 5

<img src="man/figures/README-Ep 5-1.png" width="70%" /><img src="man/figures/README-Ep 5-2.png" width="70%" />

### Episode 6

<img src="man/figures/README-Ep 6-1.png" width="70%" /><img src="man/figures/README-Ep 6-2.png" width="70%" />

### Episode 7

<img src="man/figures/README-Ep 7-1.png" width="70%" /><img src="man/figures/README-Ep 7-2.png" width="70%" />

### Finale

<img src="man/figures/README-Finale-1.png" width="70%" /><img src="man/figures/README-Finale-2.png" width="70%" />
