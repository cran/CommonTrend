\name{GG.ComT}
\alias{GG.ComT}
\title{ Permanent-Transitory Decomposition}
\description{ 
   Extract Common Trend(s) from a cointegration system according to
   Gonzalo and Grange(1995). This method is also known as the
   Permanent-Transitory Decomposition. Loading Matrix and Othogonal
   Complement of \eqn{\alpha} and \eqn{\beta} are also reported. 
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

  Currently functions \code{GG.ComT} and \code{Kasa.ComT} assume that no determinstic parts, such as
  the constant and the trend, are in the Error-Correction Terms (ECT).
  So that means we have to keep \code{ecdet = "none"} in the \code{ca.jo} function 
  (\code{ca.jo} is the major function in package \code{urca} to estimate
cointegration relations).
  But it does allow the existence of constant term in the VECM (outside 
  ECT). 
  
  The method proposed by Gonzalo and Granger decomposes the time series
\eqn{X_{t}} as 

\deqn{
X_{t}=\alpha(\beta^{\prime}\alpha)\beta^{\prime}X_{t}+\beta_{\perp}(\alpha_{\perp}^{\prime}\beta_{\perp})^{-1}\alpha_{\perp}X_{t}
}
where \eqn{\alpha(\beta^{\prime}\alpha)\beta^{\prime}X_{t}} is \emph{I(0)}
and the transitory part, and \eqn{\beta_{\perp}(\alpha_{\perp}^{\prime}\beta_{\perp})^{-1}\alpha_{\perp}X_{t}}
is \emph{I(1)} and the permanent part (see Equation 11 in Gonzalo
and Granger 1995).  Be cafreful in Gonzalo and Granger's paper they use different notation for \eqn{\alpha} and \eqn{\beta}.

Kasa's method decomposes the time series as 

\deqn{
X_{t}=\beta(\beta^{\prime}\beta)^{-1}\beta^{\prime}X_{t}+\beta_{\perp}(\beta_{\perp}^{\prime}\beta_{\perp})^{-1}\beta_{\perp}X_{t}
}
where ``the first part defines the stationary component and the second
part then defines the common stochastic trend'' (Kasa 1992) (see Equation 12
in Kasa 1992).
  
  
  
}

\value{
  An object of class \code{ComT}.
}
\references{
    Kasa, K., 1992. Common stochastic trends in international stock markets,
  \emph{Journal of Monetary Economics} \bold{29}, 95-124. 
  
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
