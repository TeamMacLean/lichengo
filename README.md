# lichengo

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of `lichengo` is to do basic gene ontology (GO) analysis using genes of lichen-forming organisms,  including mycobiont _Aspergillus terreus_ and photobionts _Asterochloris glomerata_, _Trebouxia sp._ and _Chlorella sorokiniana_.

## Installation

You can install the development version of lichengo from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("TeamMacLean/lichengo", build_vignettes = TRUE)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(lichengo)

# check assemblies for lichen-forming organisms currently available
available_assemblies()

# more info in the vignette
vignette('basics', package = 'lichengo')
```

## References

### Mycobionts

- [Aspergillus terreus NIH 2624](https://mycocosm.jgi.doe.gov/Aspte1/Aspte1.home.html)

Arnaud MB, Cerqueira GC, Inglis DO, Skrzypek MS, Binkley J, Chibucos MC, Crabtree J, Howarth C, Orvis J, Shah P, Wymore F, Binkley G, Miyasato SR, Simison M, Sherlock G, Wortman JR. The Aspergillus Genome Database (AspGD): recent developments in comprehensive multispecies curation, comparative genomics and community resources. Nucleic Acids Res. 2012 Jan;40(Database issue):D653-9. doi: 10.1093/nar/gkr875

### Photobionts

- [Asterochloris glomerata Cgr/DA1pho v2.0](https://genome.jgi.doe.gov/portal/Astpho2/Astpho2.download.html)

Armaleo D, Müller O, Lutzoni F, Andrésson ÓS, Blanc G, Bode HB, Collart FR, Dal Grande F, Dietrich F, Grigoriev IV, Joneson S, Kuo A, Larsen PE, Logsdon JM Jr, Lopez D, Martin F, May SP, McDonald TR, Merchant SS, Miao V, Morin E, Oono R, Pellegrini M, Rubinstein N, Sanchez-Puerta MV, Savelkoul E, Schmitt I, Slot JC, Soanes D, Szövényi P, Talbot NJ, Veneault-Fourrey C, Xavier BB. The lichen symbiosis re-viewed through the genomes of Cladonia grayi and its algal partner Asterochloris glomerata. BMC Genomics. 2019 Jul 23;20(1):605. doi: 10.1186/s12864-019-5629-x

- [Trebouxia sp. A1-2](https://phycocosm.jgi.doe.gov/TrebA12_1/TrebA12_1.home.html)

Greshake Tzovaras B, Segers FHID, Bicker A, Dal Grande F, Otte J, Anvar SY, Hankeln T, Schmitt I, Ebersberger I. What Is in Umbilicaria pustulata? A Metagenomic Approach to Reconstruct the Holo-Genome of a Lichen. Genome Biol Evol. 2020 Apr 1;12(4):309-324. doi: 10.1093/gbe/evaa049

- [Chlorella sorokiniana UTEX 1602](https://phycocosm.jgi.doe.gov/Chloso1602_1/Chloso1602_1.home.html)

Arriola MB, Velmurugan N, Zhang Y, Plunkett MH, Hondzo H, Barney BM. Genome sequences of Chlorella sorokiniana UTEX 1602 and Micractinium conductrix SAG 241.80: implications to maltose excretion by a green alga. Plant J. 2018 Feb;93(3):566-586. doi: 10.1111/tpj.13789
