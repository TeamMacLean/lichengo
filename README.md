# lichengo

<!-- badges: start -->
<!-- badges: end -->

The goal of `lichengo` is to do basic gene ontology (GO) analysis using genes of lichen-forming organisms. 

## Installation

You can install the development version of lichengo from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("TeamMacLean/lichengo")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(lichengo)

# check currently available assemblies
available_assemblies()

# more info in the vignette
vignette('basics', package = 'lichengo')
```

