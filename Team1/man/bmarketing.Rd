\name{bmarketing}
\alias{bmarketing}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("bmarketing")}
\format{
  A data frame with 4119 observations on the following 21 variables.
  \describe{
    \item{\code{age}}{a numeric vector}
    \item{\code{job}}{a factor with levels \code{admin.} \code{blue-collar} \code{entrepreneur} \code{housemaid} \code{management} \code{retired} \code{self-employed} \code{services} \code{student} \code{technician} \code{unemployed} \code{unknown}}
    \item{\code{marital}}{a factor with levels \code{divorced} \code{married} \code{single} \code{unknown}}
    \item{\code{education}}{a factor with levels \code{basic.4y} \code{basic.6y} \code{basic.9y} \code{high.school} \code{illiterate} \code{professional.course} \code{university.degree} \code{unknown}}
    \item{\code{default}}{a factor with levels \code{no} \code{unknown} \code{yes}}
    \item{\code{housing}}{a factor with levels \code{no} \code{unknown} \code{yes}}
    \item{\code{loan}}{a factor with levels \code{no} \code{unknown} \code{yes}}
    \item{\code{contact}}{a factor with levels \code{cellular} \code{telephone}}
    \item{\code{month}}{a factor with levels \code{apr} \code{aug} \code{dec} \code{jul} \code{jun} \code{mar} \code{may} \code{nov} \code{oct} \code{sep}}
    \item{\code{day_of_week}}{a factor with levels \code{fri} \code{mon} \code{thu} \code{tue} \code{wed}}
    \item{\code{duration}}{a numeric vector}
    \item{\code{campaign}}{a numeric vector}
    \item{\code{pdays}}{a numeric vector}
    \item{\code{previous}}{a numeric vector}
    \item{\code{poutcome}}{a factor with levels \code{failure} \code{nonexistent} \code{success}}
    \item{\code{emp.var.rate}}{a factor with levels \code{-0.1} \code{-0.2} \code{-1.1} \code{-1.7} \code{-1.8} \code{-2.9} \code{-3} \code{-3.4} \code{1.1} \code{1.4}}
    \item{\code{cons.price.idx}}{a factor with levels \code{92.201} \code{92.379} \code{92.431} \code{92.469} \code{92.649} \code{92.713} \code{92.756} \code{92.843} \code{92.893} \code{92.963} \code{93.075} \code{93.2} \code{93.369} \code{93.444} \code{93.749} \code{93.798} \code{93.876} \code{93.918} \code{93.994} \code{94.027} \code{94.055} \code{94.199} \code{94.215} \code{94.465} \code{94.601} \code{94.767}}
    \item{\code{cons.conf.idx}}{a factor with levels \code{-26.9} \code{-29.8} \code{-30.1} \code{-31.4} \code{-33} \code{-33.6} \code{-34.6} \code{-34.8} \code{-36.1} \code{-36.4} \code{-37.5} \code{-38.3} \code{-39.8} \code{-40} \code{-40.3} \code{-40.4} \code{-40.8} \code{-41.8} \code{-42} \code{-42.7} \code{-45.9} \code{-46.2} \code{-47.1} \code{-49.5} \code{-50} \code{-50.8}}
    \item{\code{euribor3m}}{a factor with levels \code{0.635} \code{0.636} \code{0.637} \code{0.639} \code{0.64} \code{0.642} \code{0.643} \code{0.644} \code{0.645} \code{0.646} \code{0.649} \code{0.65} \code{0.652} \code{0.654} \code{0.655} \code{0.659} \code{0.668} \code{0.672} \code{0.677} \code{0.682} \code{0.683} \code{0.692} \code{0.695} \code{0.697} \code{0.699} \code{0.7} \code{0.702} \code{0.704} \code{0.706} \code{0.707} \code{0.709} \code{0.71} \code{0.714} \code{0.715} \code{0.716} \code{0.717} \code{0.718} \code{0.719} \code{0.72} \code{0.721} \code{0.722} \code{0.723} \code{0.724} \code{0.728} \code{0.729} \code{0.73} \code{0.731} \code{0.735} \code{0.737} \code{0.739} \code{0.74} \code{0.741} \code{0.742} \code{0.748} \code{0.749} \code{0.752} \code{0.754} \code{0.755} \code{0.761} \code{0.762} \code{0.767} \code{0.768} \code{0.77} \code{0.771} \code{0.773} \code{0.778} \code{0.782} \code{0.788} \code{0.79} \code{0.797} \code{0.803} \code{0.809} \code{0.81} \code{0.819} \code{0.825} \code{0.827} \code{0.829} \code{0.834} \code{0.835} \code{0.838} \code{0.843} \code{0.846} \code{0.849} \code{0.851} \code{0.854} \code{0.859} \code{0.861} \code{0.869} \code{0.87} \code{0.873} \code{0.876} \code{0.877} \code{0.878} \code{0.879} \code{0.881} \code{0.882} \code{0.883} \code{0.884} \code{0.885} \code{0.886} \code{0.889} \code{0.893} \code{0.896} \code{0.898} \code{0.899} \code{0.9} \code{0.904} \code{0.905} \code{0.914} \code{0.921} \code{0.937} \code{0.942} \code{0.944} \code{0.953} \code{0.959} \code{0.965} \code{0.977} \code{0.982} \code{0.987} \code{0.996} \code{1} \code{1.016} \code{1.028} \code{1.029} \code{1.03} \code{1.031} \code{1.032} \code{1.035} \code{1.039} \code{1.04} \code{1.041} \code{1.043} \code{1.044} \code{1.046} \code{1.048} \code{1.049} \code{1.05} \code{1.059} \code{1.072} \code{1.085} \code{1.099} \code{1.215} \code{1.224} \code{1.244} \code{1.25} \code{1.252} \code{1.259} \code{1.26} \code{1.262} \code{1.264} \code{1.266} \code{1.268} \code{1.27} \code{1.281} \code{1.291} \code{1.299} \code{1.313} \code{1.327} \code{1.334} \code{1.344} \code{1.354} \code{1.365} \code{1.372} \code{1.384} \code{1.392} \code{1.4} \code{1.405} \code{1.406} \code{1.41} \code{1.415} \code{1.423} \code{1.435} \code{1.445} \code{1.453} \code{1.466} \code{1.479} \code{1.483} \code{1.498} \code{1.51} \code{1.52} \code{1.531} \code{1.538} \code{1.602} \code{1.614} \code{1.629} \code{1.64} \code{1.65} \code{1.663} \code{1.687} \code{1.703} \code{1.726} \code{1.757} \code{1.778} \code{1.799} \code{1.811} \code{3.329} \code{3.853} \code{4.021} \code{4.076} \code{4.12} \code{4.153} \code{4.191} \code{4.245} \code{4.343} \code{4.592} \code{4.663} \code{4.794} \code{4.855} \code{4.856} \code{4.857} \code{4.858} \code{4.859} \code{4.86} \code{4.864} \code{4.865} \code{4.866} \code{4.921} \code{4.947} \code{4.955} \code{4.956} \code{4.957} \code{4.958} \code{4.959} \code{4.96} \code{4.961} \code{4.962} \code{4.963} \code{4.964} \code{4.965} \code{4.966} \code{4.967} \code{4.968} \code{4.97} \code{5.045}}
    \item{\code{nr.employed}}{a factor with levels \code{4963.6} \code{4991.6} \code{5008.7} \code{5017.5} \code{5023.5} \code{5076.2} \code{5099.1} \code{5176.3} \code{5191} \code{5195.8} \code{5228.1}}
    \item{\code{y}}{a factor with levels \code{no} \code{yes}}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(bmarketing)
## maybe str(bmarketing) ; plot(bmarketing) ...
}
\keyword{datasets}
