\name{benchmark}
\alias{benchmark}
\docType{data}
\title{Data set for logged stock indices in three benchmark markets}
\description{
  Data set for logged stock indices in three benchmark markets, US,UK and HK.
These three markets are generally believed to be fully integrated with the 
word market, thus they may share a single stochastic common trend. 
}
\usage{
data(benchmark)
}
\format{
  A data frame with 6689 observations on the following 4 variables,
  ranging from 2/1/1986 until 23/8/2011.

    \tabular{rl}{
    \code{date} \tab Date vector. \cr
    \code{uk} \tab Logged price of FTSE 100. \cr
    \code{us} \tab Logged price of S&P 500. \cr
    \code{hk} \tab Logged price of HangSeng. \cr
    }
}
\source{
Datastream
}

\author{Fan Yang}
\keyword{benchmark}
