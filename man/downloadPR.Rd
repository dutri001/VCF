% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downloadPR.R
\name{downloadPR}
\alias{downloadPR}
\title{Automatic download of vcf data from a list of pathrows}
\usage{
downloadPR(pr, name = "TC", year, dir, log = NULL,
  baseURL = "ftp://ftp.glcf.umd.edu/glcf/", stubborn = 5)
}
\arguments{
\item{pr}{List or numeric list. Classically the returned object from
\code{\link{getPR}}.}

\item{name}{Character. Product name you wish to download. At the moment \code{'FCC'} and \code{'TC'} can be downloaded.}

\item{year}{Numeric or list. When \code{name = 'TC'}, a single numeric must be provided. A list of numerics (e.g. \code{c(2000, 2005)} corresponding to the beginning and end of the change interval must ve provided when dowloading Forest Cover Change data).}

\item{dir}{Character. Directory where to write the downloaded data.}

\item{log}{character. filename of the logfile. If NULL (default), a file
'downloadVCF.log' is created at the root of \code{dir}}

\item{baseURL}{character.}

\item{stubborn}{Numeric. Number of retries when for a reason or another the download fails}
}
\value{
The list of file downloaded, plus eventual warning, or error
messages
}
\description{
Automates the download of Landsat based vcf products (Tree cover and tree cover change) from the ftp server,
from a list of list of pathrows. Writes status of the download to a log file
and recreates the directory organization of the ftp server locally.
}
\details{
Files are downloaded only if they have not been downloaded and written at
the same location earlier, the files overwrite previous downloaded files that are == 0 bytes.
(Performs some sort of updating of a local archive)
}
\examples{

\dontrun{
pr <- getPR('Belize')
pr
dir = tempdir()
downloadPR(pr, year=2000, name = 'TC', dir=dir)

}


}
\author{
Loic Dutrieux
}
\references{
Land cover: See \url{http://landcover.org/data/landsatTreecover/}
Forest cover change: See \url{http://landcover.org/data/landsatFCC/}
}
\keyword{Forest}
\keyword{Landsat}
\keyword{Landsat,}
\keyword{Tree}
\keyword{change}
\keyword{cover}

