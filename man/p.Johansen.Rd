\name{p.Johansen}
\alias{p.Johansen}
\title{P-value of Johansen statistics}
\description{ 
   Enter Johansen statistics (1998) (trace), then it will calculate
   its P-value according to the approximation method proposed by Doornik (1998).
}
\usage{
p.Johansen (q,nComT,type=c("z","c","lc","l","ql") ) 
}
\arguments{
  \item{q}{ Johansen statistics(trace) }
  \item{nComT}{ Number of common trends specified in the model}
  \item{type}{ Character. The specification of constant and trend in VECM. see Details
             }
}

\details{

   Enter the Johansen statistic(1988)(trace), then it will calculate
    its P-value according to the approximation method proposed by Doornik (1998). \code{nComT} is actually
   the dimention miinus the specified rank number in VECM. In terms of the specification of constant and trend:\cr

    \code{"z"}: No constant and no trend. \cr
    \code{"c"}: Restriced constant but no trend. This type corresponds with the Case 1* in Osterwal (1992) and the type \code{"const"} in \code{ca.jo}.\cr
    \code{"lc"}: Unrestricted constant but no trend. This type corresponds with the Case 1 in Osterwal (1992). \cr
    \code{"l"}: Unrestricted constant and restriced trend. This type corresponds with the Case 2* in Osterwal (1992) and the type \code{"trend"} in \code{ca.jo}. \cr
    \code{"ql"}: Unrestricted constant and Unrestriced trend. This type corresponds with the Case 2 in Osterwal (1992).

    More detailed explanation for the different typs above could be found in Osterwal (1992) and Doornik (1998).
    
}

\value{
  P-vlaue of Johansen statistics
}

\references{
  
  Johansen, S. (1988), Statistical Analysis of Cointegration Vectors,\emph{Journal of Economic Dynamics and Control}, \bold{12}, 231--254.

  Doornik, J. A. (1998), Approximations to the Asymptotic Distributions of Cointegration Tests, \emph{Journal of Economic Surveys} \bold{12}, 573--593.
 
}

\seealso{
  \code{\link{q.Johansen}}
}

\author{Fan Yang}


\examples{

# when type in \code{ca.jo} is \code{"const"} in Osterwal (1992) and in \code{ca.jo}
# and when there are 1,2 or 3 common trends in the VECM respectively,
# 12.97,24.60 and 41.07 are the corresponding statistics when P-value is 0.01 and 
#The examples here show the approximation using Doornik (1998) works very well
p.Johansen(12.97,1,"c")
p.Johansen(24.60,2,"c")
p.Johansen(41.07,3,"c")
 
}

\keyword{P-value Johansen}