
<!-- README.md is generated from README.Rmd. Please edit that file -->

# igraph.style

<!-- badges: start -->
<!-- badges: end -->

The goal of igraph.style is to make it easy to style igraph literals, on
top of following the tidyverse style.

## Installation

You can install the development version of igraph.style from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("igraph/igraph.style")
```

## Example

Compare:

``` r
styler::style_text("A+-+B")
#> A + -+B
styler::style_text("A+-+B", style = igraph.style::igraph_style)
#> A +-+ B
```
