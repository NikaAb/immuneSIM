% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/combine_into_paired.R
\name{combine_into_paired}
\alias{combine_into_paired}
\title{Generates a dataframe from separate heavy and light or beta and alpha chain dataframes}
\usage{
combine_into_paired(repertoire_heavy, repertoire_light)
}
\arguments{
\item{repertoire_heavy}{A repertoire containing heavy/beta chain data}

\item{repertoire_light}{A repertoire containing light/alpha chain data}
}
\value{
immuneSIM repertoire containing heavy/beta and light/alpha chain data.
}
\description{
Generates a dataframe from separate heavy and light or beta and alpha chain dataframes
}
\examples{
repertoire_heavy <- immuneSIM(number_of_seqs = 5,species = "mm",receptor = "ig", chain = "h")
repertoire_light <- immuneSIM(number_of_seqs = 5,species = "mm",receptor = "ig", chain = "kl")
paired_repertoire <- combine_into_paired(repertoire_heavy,repertoire_light)
}
