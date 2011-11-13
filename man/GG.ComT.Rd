\name{GG.ComT}
\alias{GG.ComT}
\title{ Permanent-Transitory Decomposition}
\description{ 
   Extract Common Trend(s) from a cointegration system according to
   Gonzalo and Grange(1995). This method is also known as the
   Permanent-Transitory Decomposition. Loading Matrix and Othogonal
   Complement of alpha and beta are also reported. 
}
\usage{
GG.ComT(data, rank, k) 
}
\arguments{
  \item{data}{ Data used to construct the cointegration system}
  \item{rank}{ Number of cointegration vectors specified}
  \item{k}{Lag order in VECM}

}

\details{

  Currently this function assumes that no determinstic parts, such as
  the constant and the trend, are in the Error-Correction Terms (ECT). 
  But it does allow the existence of constant term in the VECM (outside 
  ECT). 
    
}
\value{
  An object of class \code{ComT}.
}
\references{
  
  Gonzalo, J., and C. Granger, 1995. Estimation of Common Long-Memory
  Components in Cointegrated Systems, \emph{Journal of Business & Economic   Statistics} \bold{13}, 27-35.
}
\author{Fan Yang}

\seealso{
  \code{\link{ComT-class}},\code{\link{plotComT}}
}
\examples{
 
 data(benchmark)
 x=seq(1,6689,by=23) ## monthly data
 global=data.frame(benchmark[x,2:4])
 
 GG.ComT (global,2,4)
 
 ## Plot the Common Trend

 G=GG.ComT (global,2,4)
 Date=benchmark[x,1]
 plotComT(G,1,x.axis=Date,approx.ticks=12,
         legend=c("S&P 500 Price index", "Common Trend"),
         main="Extract Common Trend(s) from Benchmark Markets",
         ylab="Price", xlab="Time"  )
 
}

\keyword{Permanent-Transitory Decomposition}
