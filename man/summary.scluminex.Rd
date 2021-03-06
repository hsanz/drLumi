% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/summary.scluminex.R
\name{summary.scluminex}
\alias{summary.scluminex}
\title{Summary of a scluminex object}
\usage{
\method{summary}{scluminex}(object, ...)
}
\arguments{
\item{object}{object of \code{scluminex} class.}

\item{...}{other summary arguments. Ignored.}
}
\value{
An object of class summary.scluminex with the following fields:
\itemize{
\item{parameters of the model}{, coefficients, standard errors,
t and p values}
\item{obs}{, number of observations}
\item{rsquare}{, R squared of the model}
\item{modelfit}{, p value for goodnes of fit}
\item{convergence}{, convergence code for the model (1 = converged,
0 = otherwise)}
\item{plateid}{, plate identification name}
\item{fct}{, function used to fit the model}
}
}
\description{
Summary of a scluminex object
}
\examples{
# Load data
data(ecdata)
data(mfidata)

dat <- mfidata[mfidata$plate=="plate_1" & mfidata$analyte=="FGF",]

sdf <- data_selection(dat, ecdata)$plate_1

# Fit model and summary object
igmodels <- scluminex("plate_1",sdf$standard, sdf$background,
                lfct=c("SSl4", "SSl5"),
                bkg="ignore",
                fmfi="mfi",
                verbose=FALSE)
summary(igmodels)
}

