# This is the secret sauce.  It overrides tools:::htmlify in Rd2HTML so that
# it doesn't replace characters with HTML escapes.
rawHTML <- function(text) {
  my_htmlify <- function(x) return(x)
  R2Hframe = grep("^Rd2HTML", sapply(sys.calls(), function(a) paste(deparse(a), collapse = "\n")))
  if(length(R2Hframe) == 1) {
    assign("htmlify", my_htmlify, envir = sys.frame(which = R2Hframe))
  } else if(length(R2Hframe) > 1 ) {
    assign("htmlify", my_htmlify, envir = sys.frame(which = max(R2Hframe)))
  }
  return(text)
}