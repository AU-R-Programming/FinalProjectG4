\name{our_lm}
\alias{our_lm}

\title{Linear Regression Function
}
\description{This package performs linear regression for which the parameter vector β of
length p is estimated using optimization. The user is able to choose the significance level alpha to obtain the 1-alpha confidence intervals for beta. Moreover, plots are available to compare residuals vs fitted-values and view a qq-plot and histogram of residuals. R^2 and C_p
values are included, and the user may perform a test using an F-test statistic and p-values.
}
\usage{
our_lm(resp, pred, alpha = 0.05)
}
\arguments{
  \item{resp}{A \code{vector} of length n that represents a dependent variable we would like
  to explain/predict.}
  \item{pred}{A \code{matrix} of dimension nxp whose first column is a vector of ones; this
  matrix is an independent variable used to predict resp and beta.}
  \item{alpha}{A \code{numeric} used to denote a .05 significance level and measure the
  probability of a type I error.}
}
}

\value{
      \item{beta_hat}{Estimated coefficient vector of length p found via optimization}
      \item{conf_int}{Confidence intervals for the true parameter vector beta}
      \item{R_square}{Coefficient of determination used as a metric to evaluate fit}
      \item{C_p}{Mallows' Cp used as a metric to evaluate fit of model}
      \item{F_star}{Statistic used to determine whether the model is explaining enough}
      \item{p_value}{Probability that F > F*}
      \item{plot1}{Residuals vs. fitted values}

}

\author{Caroline Baker, 
Yagmur Ozdemir, 
Yu Sun

}




\examples{
resp = crop.data$yield
> pred = cbind(crop.data$density, crop.data$block, crop.data$fertilizer)
> alpha = 0.05
> our_lm(resp, pred, alpha)
}
