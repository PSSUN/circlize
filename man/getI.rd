\name{getI}
\alias{getI}
\title{
  Which data that panel.fun is using  


}
\description{
  Which data that panel.fun is using  


}
\usage{
getI(...)
}
\arguments{
  \item{...}{invisible arguments that users do not need to care}

}
\details{
  The function should only be put inside \code{panel.fun} when using \code{\link{circos.genomicTrackPlotRegion}}.  

  If \code{stack} is set to \code{TRUE} in \code{\link{circos.genomicTrackPlotRegion}}, the retured value indicates which stack the function will be applied to. If \code{data} is a list of data frames, the value indicates which data frame is being used. Please see the vignette to get a more clear explaination. 


}
