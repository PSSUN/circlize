\name{circos.initialize}
\alias{circos.initialize}
\title{
  Initialize the circos sectors  


}
\description{
  Initialize the circos sectors  


}
\usage{
circos.initialize(factors, x = NULL, xlim = NULL, sector.width = NULL)
}
\arguments{
  \item{factors}{Factors which represent the categories of data}
  \item{x}{Data on x-axis, a vector}
  \item{xlim}{Limitations for values on x-axis}
  \item{sector.width}{width for each sector. The length of the vector should be either 1 which means all sectors are having same width or as same as the number of sectors. The value for the vector is the relative value, and they will be scaled by dividing their summation. By defautl, it is \code{NULL} which means the width of sectors correspond to the data range in sectors. If you set the value, you need to notice the width for the sector here includes gap on its right.}

}
\details{
  The function allocates the sectors according to the values on x-axis. The number of sectors are determined by the \code{factors} and the order of sectors are determined by the levels of factors. In this function, the start and end position for each sector on the circle (measured by degree) are calculated according to the values on x-axis.  

  If \code{x} is set, the length of \code{x} must be equal to the length of \code{factors}. Then the data range for each sector are calculated from \code{x} and \code{factors}.  

  If \code{xlim} is set, it should be a vector containing two numbers or a matrix with 2 columns. If \code{xlim} is a 2-element vector, it means all sector share the same \code{xlim}. If \code{xlim} is a 2-column matrix, the number of rows should be equal to the number of categories (number of levels) identified by \code{factors}, then each row of \code{xlim} corresponds to the data range for each sector and the order of rows is corresponding to the order of levels of \code{factors}.  

  Normally, width of sectors will be calculated internally according to the data range in sectors. But you can still set the width manually. However, it is not always a good idea to change the default sector width since the width can reflect the range of data in sectors. Anyway, in some circumstances, it is useful to manually set the width such as you want to zoom in some part of the sectors.  

  The function finally call \code{\link[graphics]{plot}} and be ready for add graphics. 


}
