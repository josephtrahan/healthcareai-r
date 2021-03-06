% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common-find-variation.R
\name{findVariation}
\alias{findVariation}
\title{Find high variation}
\usage{
findVariation(df, categoricalCols, measureColumn, dateCol = NULL,
  threshold = NULL, wideOutput = TRUE)
}
\arguments{
\item{df}{A dataframe}

\item{categoricalCols}{Vector of strings representing categorical column(s)}

\item{measureColumn}{Vector of strings representing measure column(s)}

\item{dateCol}{Optional. A date(time) column to group by (done by month)}

\item{threshold}{A scalar number, representing the minimum impact values
that are returned}

\item{wideOutput}{If TRUE (default) categoricalCols and measureColumn will
be mixed in with results. If FALSE, output table will have Group and
Measure columns that reflect categoricalCols and measureColumn, and results
will appear in their own columns.}
}
\value{
A dataframe of eight columns. MeasureVolumeRaw denotes number of rows 
in the particular subgroup; MeasureVolumePercent denotes percent of rows in 
that subgroup as a percentage of the above subgroup (i.e., F within Gender);
MeasureImpact is the subgroup COV * VolRaw (i.e., num of rows).
}
\description{
Search across subgroups and surface those that have coefficient
of variation * volume above a particular threshold
}
\examples{
df <- data.frame(Dept = c('A','A','A','B','B','B','B','B'),
                 Gender = c('F','M','M','M','M','F','F','F'),
                 LOS = c(3.2,NA,5,1.3,2.4,4,9,10))

categoricalCols <- c("Dept","Gender")

dfRes <- findVariation(df = df, 
                       categoricalCols = categoricalCols,
                       measureColumn = "LOS")

dfRes
}
\references{
\url{http://healthcareai-r.readthedocs.io}
}
\seealso{
\code{\link{healthcareai}} \code{\link{calculateCOV}} 
\code{\link{createVarianceTallTable}}
}
