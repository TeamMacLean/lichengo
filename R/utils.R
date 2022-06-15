#' return a data frame of package names, assemblies and species
#'
#' @export
available_assemblies <- function(){
  tibble::tibble(
    assembly = c("aspte_jgi", "astph_jgi", "chlor_jgi", "treb_jgi"),
    description = c(
      "Aspergillus_terreus (JGI)",
      "Asterochloris glomerata (JGI)",
      "Chlorella sorokiniana (JGI)",
      "Trebouxia A12 (JGI)")
  )
}

#' get all known gene identifiers from the selected assembly - the universe
#'
#' @param assembly selected assembly name
#' @export
all_genes <- function(assembly = NULL){
  col_types <- readr::cols(
    gene_id = readr::col_character()
  )
  filename <- paste(assembly, "gene_ids.txt", sep = "_")
  path_to_file <- system.file("extdata", filename, package = "lichengo", mustWork = TRUE)
  readr::read_csv(path_to_file, col_types = col_types)$gene_id
}

#' get all known gene identifiers from the selected assembly and the annotations
#'
#' @param assembly selected assembly name
#' @export
read_terms <- function(assembly = NULL) {
  col_types <- readr::cols(
    gene_id = readr::col_character()
  )
  filename <- paste(assembly, "termsfile.csv", sep = "_")
  path_to_file <- system.file("extdata", filename, package = "lichengo", mustWork = TRUE)
  readr::read_csv(path_to_file, col_types = col_types)
}

#' get mapping between genes and GO terms
#'
#' @param assembly selected assembly name
#' @export
mapping <- function(assembly = NULL) {
  terms <- read_terms(assembly = assembly)

  term2gene <- data.frame(
    term = terms$`GOs`,
    gene = terms$`gene_id`
  )

  gene2KEGG <- data.frame(
    gene = terms$`gene_id`,
    KEGG_Pathway = terms$`KEGG_Pathway`
  )

  term2COGs <- data.frame(
    term = terms$`GOs`,
    cog = terms$`COG_category`
  )

  all_genes <- all_genes(assembly = assembly)

  return(list(
    term2gene = term2gene,
    term2COGs = term2COGs,
    all_genes = all_genes
  ))
}

#' run clusterProfiler::enricher on vector of gene IDs
#'
#' @param genes character vector of gene IDs of interest
#' @param assembly selected assembly name
#' @return enricher object
#' @export
enrich <- function(genes, assembly = NULL, pval = 0.05, ...) {
  info <- mapping(assembly = assembly)
  clusterProfiler::enricher(genes,
    universe=info$all_genes,
    TERM2GENE=info$term2gene,
    TERM2NAME=info$term2name,
    pvalueCutoff = pval,
    ...
  )
}

