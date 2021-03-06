% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/immuneSIM.R
\name{immuneSIM}
\alias{immuneSIM}
\title{Simulates an immune repertoire based on user-defined parameters}
\usage{
immuneSIM(number_of_seqs = 1000,
  vdj_list = list_germline_genes_allele_01, species = "mm",
  receptor = "ig", chain = "h",
  insertions_and_deletion_lengths = insertions_and_deletion_lengths_df,
  user_defined_alpha = 2, name_repertoire = "sim_rep",
  length_distribution_rand = length_dist_simulation, random = FALSE,
  shm.mode = "none", shm.prob = 15/350, vdj_noise = 0,
  vdj_dropout = c(V = 0, D = 0, J = 0), ins_del_dropout = c(""),
  equal_cc = FALSE, freq_update_time = round(0.5 * number_of_seqs),
  max_cdr3_length = 100, min_cdr3_length = 6, verbose = TRUE,
  airr_compliant = TRUE)
}
\arguments{
\item{number_of_seqs}{Integer defining the number of sequences that should be simulated}

\item{vdj_list}{List containing germline genes and their frequencies}

\item{species}{String defining species for which repertoire should be simulated ("mm": mouse, "hs": human. Default: "mm").}

\item{receptor}{String defining receptor type ("ig" or "tr". Default: "ig")}

\item{chain}{String defining chain (for ig: "h","k","l", for tr: "b" or "a". Default: "h")}

\item{insertions_and_deletion_lengths}{Data.frame containing np1, np2 sequences as well as deletion lengths.
(Pooled from murine repertoire data, Greiff,2017)
Note: This is a subset of 500000 observations of the dataframe used in the paper. The full dataframe which can
be introduced here can be found on: (Git-Link)}

\item{user_defined_alpha}{Numeric. Scaling parameter used for the simulation of powerlaw distribution
(recommended range 2-5. Default: 2, https://en.wikipedia.org/wiki/Power_law)}

\item{name_repertoire}{String defining chosen repertoire name recorded in the name_repertoire column of the output for identification.}

\item{length_distribution_rand}{Vector containing lengths of immune receptor sequences based on immune repertoire data (Greiff, 2017).}

\item{random}{Boolean. If TRUE repertoire will consist of fully random sequences, independent of germline genes.}

\item{shm.mode}{String defining mode of somatic hypermutation simulation based on AbSim
(options: 'none', 'data','poisson', 'naive', 'motif', 'wrc'. Default: 'none'). See AbSim documentation.}

\item{shm.prob}{Numeric defining probability of a SHM (somatic hypermutation) occurring at each position.}

\item{vdj_noise}{Numeric between 0,1, setting noise level to be introduced in provided V,D,J germline frequencies. 0 denotes no noise. (Default: 0)}

\item{vdj_dropout}{Named vector containing entries V,D,J setting the number of germline genes to be dropped out. (Default: c("V"=0,"D"=0,"J"=0))}

\item{ins_del_dropout}{String determining whether insertions and deletions should occur.
Options: "", "no_insertions", "no_insertions_n1", "no_insertions_n2", "no_deletions_v", "no_deletions_d_5",
"no_deletions_d_3", "no_deletions_j", "no_deletions_vd", "no_deletions". Default: "")}

\item{equal_cc}{Boolean that if set TRUE will override user_defined_alpha and generate a clone count distribution that is equal for all sequences.
Default: FALSE.}

\item{freq_update_time}{Numeric determining whether simulated VDJ frequencies agree with input after set amount of sequences to correct for VDJ bias.
Default: Update after 50 percent of sequences.}

\item{max_cdr3_length}{Numeric defining maximal length of cdr3. (Default: 100)}

\item{min_cdr3_length}{Numeric defining minimal length of cdr3. (Default: 6)}

\item{verbose}{Boolean toggling printing of progress on and off (Default: FALSE)}

\item{airr_compliant}{Boolean determining whether output repertoire should be named in an AIRR compliant manner
(Default: TRUE). (http://docs.airr-community.org/en/latest/)}
}
\value{
An annotated AIRR-compliant immuneSIM repertoire. (http://docs.airr-community.org/en/latest/)
}
\description{
Simulates an immune repertoire based on user-defined parameters
}
\examples{
sim_rep <- immuneSIM(number_of_seqs = 10, vdj_list = list_germline_genes_allele_01,
species = "mm", receptor = "ig", chain = "h",
insertions_and_deletion_lengths = insertions_and_deletion_lengths_df,
user_defined_alpha = 2,name_repertoire = "mm_igh_sim",
shm.mode = "data",shm.prob=15/350,vdj_noise = 0, vdj_dropout = c(V=0,D=0,J=0),
ins_del_dropout = "",min_cdr3_length = 6)
}
