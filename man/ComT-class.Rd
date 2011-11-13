\name{ComT-class}
\docType{class}
\alias{ComT-class}
\title{
Representation of class \code{ComT}
}
\description{
This class contains several useful objects about the estimated common trends for further manipulations.
}

\arguments{
  \item{method}{
Character. Method used to extract the common trends.
}
\item{length}{ Length of the common trends. It is the length of original series minus lag order. 
}
\item{lag.chosen}{ Lag order.
}
\item{beta}{The estimated cointegration vector.
}
\item{othog.beta}{The othogonal complement of \eqn{\bold{\beta}}.
}
\item{alpha}{ The estimated \eqn{\bold{\alpha}}.
}
\item{othog.alpha}{ The othogonal complement of \eqn{\bold{\alpha}}.
}
\item{common.trend}{ The common trends after multiplied with the loading matrix.  
}
\item{pure.trend}{ The \sQuote{pure} common trends without multiplying with the loading matrix.  
}
\item{loading.vector}{ The loading matrix.
}
\item{stationary}{ The estimated stationary process.
}
\item{data.used}{ The orginal data after adjusted with the lag order. Thus it has the same length with the estimated common trends.
}

}



\author{
Fan Yang
}

\keyword{ ComT }
