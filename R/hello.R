#' An R function with nifty HTML documentation
#'
#' Some stuff about the function
#'
#' @section Feedback:
#'  \html{'<div style="float:right;"> Was this help page useful?<form action="action_page.php" style><input type="radio" name="help" value="Yes" checked>Yes <input type="radio" name="help" value="No" checked>No <input type="submit" value="Submit"></form></div>'}
#'
#' Tell us why by filing an issue here: \html{'<a href="https://github.com/noamross/htmlhelp/issues/new">Link to Github issue</a>'}
#'
#' Edit it yourself! \html{'<a href="https://github.com/noamross/htmlhelp/blob/master/R/hello.R">Link to file on Github</a>'}
#'
#' @section For fun:
#'
#' You can do images and badges and stuff: \html{'<img src="https://travis-ci.org/ropensci/rfishbase.svg?branch=rfishbase2.0">'}
#'
#' You can run Javascript.  Here's a dynamic Plot.ly graph!
#'
#' \html{'<iframe src="../doc/plotly.html" width="400" height="300" frameBorder="0"></iframe>'}
#'
#'
#' @return Prints a value
#' @export
hello <- function() {
  print("Hello, world!")
}
