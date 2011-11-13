\name{plotComT}
\alias{plotComT}
\title{ Plot the common trend(s)
}
\description{
Plot the common trends and compare them with the otiginal series. 
}
\usage{

plotComT(ComT, i, x.axis = NA, 
         approx.ticks = 7, legend = c("Original Data", "Common Trend"), 
         main = "", ylab = "", xlab = "")
}

\arguments{
  \item{ComT}{A class of \code{ComT}
}
  \item{i}{
The \code{i}th orginal series and its common trends you want to plot. Must be equal or less than the dimention of cointegration system. See Details.
}
  \item{x.axis}{
The vector used as the x-axis. Its length must be equal to the length of original series.
}
  \item{approx.ticks}{
The number of ticks on the x-axis. If NULL, then 7 is used.
}
  \item{legend}{ a vector with two characters. The first one is the legend for original series; the second one is that for its common trends.
}
  \item{main}{
Character. The main title of the graph. 
}
  \item{ylab}{
Character. The title of y-axis.
}
  \item{xlab}{
Character. The title of x-axis.
}

}

\details{
This function will plot the \code{i}th original series and its estimated common trend in one graph. The estimated trend plotted here is based on \code{ComT$common.trend[i,]}, wchih is the \code{ComT$pure.trend} multiplied its corresonding loading weight in \code{ComT$loading.vector}. To better fit the original series, we add the mean of its corresponding estimated stationary process onto the common trends.

Note that if more than one common trends (Pure trends without multiplying loading vector) are identified in the cointegration system, then this function will plot the weighted sum of those pure trends. 

}
\value{
A graph of \code{i}th original series and its estimated common trend.
}

\author{
Fan Yang
}

\seealso{
\code{\link{ComT-class}}
}
\examples{

data(benchmark)
x=seq(1,6689,by=23) ## monthly data
global=data.frame(benchmark[x,2:4])
Date=benchmark[x,1]
 
G=GG.ComT (global,2,4)

## only the first two arguments in this function are compulsory.

plotComT(G,1) 

## The complete set of arguments
 
plotComT(G,1,x.axis=Date,approx.ticks=12,
         legend=c("S&P 500 Price index", "Common Trend"),
         main="Extract Common Trend(s) from Benchmark Markets according to GG",
         ylab="Price", xlab="Time"  )
 
}

\keyword{ plot }
