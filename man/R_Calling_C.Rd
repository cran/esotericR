\name{R_Calling_C}
\alias{R_Calling_C}
\alias{esoteric_rev}
\title{
esotericR | R Calling C
}
\description{
Source code and examples from 
esotericR article \sQuote{R Calling C}
}
\references{
\url{http://www.lemnica.com/esotericR}
}
\author{
Jeffrey A. Ryan
}
\examples{
# dyn.load isn't needed/functional in packaged code
# dyn.load("esoteric_rev.so")
obj <- structure(seq(0, 1, 0.1), obligatory="hello world!")

# keeps obligatory attribute
.Call("esoteric_rev", obj)

# loses attribute
rev(obj)
}
\keyword{ misc }
