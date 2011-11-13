\name{Kasa.ComT}
\alias{Kasa.ComT}
\title{Common Trend(s) according to Kasa(1992)}
\description{ 
   Extract Common Trend(s) from a cointegration system according to
   Kasa(1992). Loading Matrix and Othogonal Complement of \eqn{\alpha} and \eqn{\beta} are also reported. 
}
\usage{Kasa.ComT(data, rank, k) 
}
\arguments{
  \item{data}{ Data used to construct the cointegration system}
  \item{rank}{ Number of cointegration vectors specified}
  \item{k}{Lag order in VECM}

}

\details{

  For all the details, functions and its differences with the method proposed by Gonzalo and Granger, see \code{\link{GG.ComT}}.
    
}
\value{
  An object of class \code{ComT}.
}
\references{
  
  Kasa, K., 1992. Common stochastic trends in international stock markets,
  \emph{Journal of Monetary Economics} \bold{29}, 95-124. 
  
  Gonzalo, J., and C. Granger, 1995. Estimation of Common Long-Memory
  Components in Cointegrated Systems, \emph{Journal of Business & Economic Statistics} \bold{13}, 27-35.
}

\author{Fan Yang}

\seealso{
  \code{\link{ComT-class}}, \code{\link{plotComT}}
}
\examples{
 
 data(benchmark)
 x=seq(1,6689,by=23) ## monthly data
 global=data.frame(benchmark[x,2:4])
 
 Kasa.ComT (global,2,4)
 
 ## Plot the Common Trend

 K=GG.ComT (global,2,4)

 Date=benchmark[x,1]
 plotComT(K,1,x.axis=Date,approx.ticks=12,
         legend=c("S&P 500 Price index", "Common Trend"),
         main="Extract Common Trend(s) from Benchmark Markets",
         ylab="Price", xlab="Time"  )
 
}

\keyword{Common-Trend}
