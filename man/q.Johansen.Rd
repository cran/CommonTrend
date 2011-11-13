\name{q.Johansen}
\alias{q.Johansen}
\title{Get Johansen statistics from its P-value}
\description{ 
   Enter the P-value of Johansen statistics(1988), then it will calculate
   the Johansen statistic(trace) itself according to the approximation method proposed by Doornik (1998).
}
\usage{
q.Johansen (p,nComT,type=c("z","c","lc","l","ql") ) 
}
\arguments{
  \item{p}{ P-value of Johansen statistics }
  \item{nComT}{ Number of common trends specified in the model}
  \item{type}{ Character. The specification of constant and trend in VECM. see Details
             }
}

\details{

   Enter the P-value of Johansen statistics(1988), then it will calculate the
   Johansen statistic(trace) itself according to the approximation method proposed by Doornik (1998).
   \code{nComT} is actually the dimention miinus the specified rank number in VECM.
   For the specification of constant and trend, you could directly refer to \code{\link{p.Johansen}}.    
}

\value{
  Johansen statistic(trace)
}
\references{
  
  Johansen, S. (1988), Statistical Analysis of Cointegration Vectors,\emph{Journal of Economic Dynamics and Control}, \bold{12}, 231--254.

  Doornik, J. A. (1998), Approximations to the Asymptotic Distributions of Cointegration Tests, \emph{Journal of Economic Surveys} \bold{12}, 573--593.

}

\author{Fan Yang}

\seealso{
  \code{\link{p.Johansen}}
}

\examples{

#Traces for the fowllowing 3 cases are actually 12.97,24.60, 41.07 in Osterwal (1992) and in \code{ca.jo}
#The examples here show the approximation using Doornik (1998) works very well
q.Johansen(0.01,1,"c")
q.Johansen(0.01,2,"c")
q.Johansen(0.01,3,"c")
 
}

\keyword{P-value Johansen}