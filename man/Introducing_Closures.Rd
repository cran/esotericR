\name{Introducing_Closures}
\alias{Introducing_Closures}
\alias{new_betterstack}
\alias{new_stack}
\alias{pop}
\alias{pop.stack}
\alias{push}
\alias{push.stack}
\alias{shift}
\alias{shift.stack}
\alias{unshift}
\alias{unshift.stack}
\title{
esotericR | Introducing Closures
}
\description{
Source code and examples from 
esotericR article \sQuote{Introducing Closures}
}
\references{
\url{http://www.lemnica.com/esotericR}
}
\author{
Jeffrey A. Ryan
}
\examples{
nb <- new_betterstack()
push(nb, 1:3)
  
nb$.Data
  
pop(nb) # from the back
  
unshift(nb) # from the front
  
shift(nb, 3)
push(nb, 1)
nb$.Data
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ misc }
