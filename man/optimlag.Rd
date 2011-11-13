\name{optimlag}
\alias{optimlag}

\title{ Search the lag order to maximize Johansen Statistics (1988)
}
\description{
        Search the lag order to maximize Johansen Statistics (1988)
        assuming there is only one common trend.
}
\usage{
optimlag(data, k=10, ecdet= "none" )
}

\arguments{
  \item{data}{Data used to construct the cointegration system}
  \item{k}{ maximum number of lags to search }
  \item{ecdet}{ Character, the same argument used in \code{ca.jo}.
                In the package \code{urca}, \sQuote{\code{none}} is
                for no intercept in ECT (only in VECM),
                \sQuote{\code{const}} is for constant term in ECT and \sQuote{\code{trend}} is for trend in ECT. See Details. 
              }
}

\details{
   Under the assumption that there is only one common trend,
   if a lag oder is chosen to maximize the Johansen statistics
   , then the estimated signle common trend will best fit the original series.

   \sQuote{\code{none}} is suggested to be chosen for \sQuote{\code{ecdet}}, since currently
   this package only supports extrating common trend when intercept is included into VECM (but outside ECT).
}
\value{

  \item{Olag.value}{The maximized Johansen statistics (trace)}
  \item{Olag}{The lag order that maximizes Johansen statistics}
  \item{list.lags}{A list of all the possible lag orders and their corresponding                     Johansen Statistics. Note that the value when lag order is one is NA since             lag order must bigger than 2.}
}

\references{
  Johansen, S. (1988), Statistical Analysis of Cointegration Vectors,
  \emph{Journal of Economic Dynamics and Control}, \bold{12}, 231--254.
}

\author{Fan Yang
}
\seealso{
  \code{\link{optimlag-class} }
}

\examples{

data(benchmark)
x = seq(1, 6689, by = 23)  ## monthly data
global = data.frame(benchmark[x, 2:4])

optimlag(global, 15, "none")

}
\keyword{lag}
