% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/temporal_torus_translation.R
\name{temporal_torus_translation}
\alias{temporal_torus_translation}
\title{Temporal Modification of the Torus Translation}
\usage{
temporal_torus_translation(df, time.var = "year", species.var = "species",
  abundance.var = "abundance", FUN)
}
\arguments{
\item{df}{A data frame containing time, species and abundance columns and an optional column of replicates}

\item{time.var}{The name of the time column}

\item{species.var}{The name of the species column}

\item{abundance.var}{The name of the abundance column}

\item{FUN}{A function to calculate on the null community}
}
\value{
The temporal_torus_translation function returns the same output as the user-specified function, as calculated on a null community.
}
\description{
Performs a user-specified function on a null ecological community using a temporal modification of the torus translation (Harms et al. 2001, Hallett et al. 2014).
The null community is formed by randomly selected different starting years for the time series of each species. 
This generates a null community matrix in which species abundances vary independently but within-species autocorrelation is maintained.
The user-specified function must require a species x time matrix input.
}
\details{
The input data frame needs to contain columns for time, species and abundance; time.var, species.var and abundance.var are used to indicate which columns contain those variables.
}
\examples{
# Calculate a covariance matrix on a null community
data(knz_001d)
temporal_torus_translation(subset(knz_001d, subplot=="A_1"), time.var="year", 
species.var="species", abundance.var="abundance", FUN=cov)
}
\references{
Hallett, Lauren M., Joanna S. Hsu, Elsa E. Cleland, Scott L. Collins, Timothy L. Dickson, Emily C. Farrer, Laureano A. Gherardi, et al. "Biotic Mechanisms of Community Stability Shift along a Precipitation Gradient." Ecology 95, no. 6 (2014): 1693-1700.

Harms, Kyle E., Richard Condit, Stephen P. Hubbell, and Robin B. Foster. "Habitat Associations of Trees and Shrubs in a 50-Ha Neotropical Forest Plot." Journal of Ecology 89, no. 6 (2001): 947-59.
}

