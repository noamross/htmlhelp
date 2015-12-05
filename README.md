<!-- README.md is generated from README.Rmd. Please edit that file -->
htmlhelp: Fancier R help files
==============================

This package allows you to use raw HTML in your R-help files.

Install
-------

    devtools::install_github('noamross/htmlhelp')

Usage
-----

**htmlhelp** has no exported functions. It has *macros* for use in your `.Rd` files or **roxygen** comments.

To use these macros in your package, include **htmlhelp** under the field `RdMacros:` in your `DESCRIPTION`

To put raw HTML in your help file, use

    \html{'<p>SOME RAW HTML</p>'}

The macro arguments are treated as R expressions so quote the raw HTML. You may use an R expression, but note that it will run each time the user brings up the help file, not when the files are compiled, so be wary of anything with significant run time.

You may also insert HTML from a file with

    \htmlfile{'filename.html'}

The file should be placed in `inst/doc`. Note that if you load assets in html, they should be placed in `inst/doc` and referred to in the HTML source as `../doc/filename.html`. *Images* should go in `man/figures` and referred to as `figures/filename.png`.

(Note that you can insert figures without this package with base R's `\image{}` macro. See [Writing R Extensions](https://cran.rstudio.com/doc/manuals/r-release/R-exts.html#Figures))

Right now the raw HTML shows up in other help file formats. You may want to use the `\if{html}` macro to avoid this.

Other macros included so far are `\stylesheet{}`, which will replace the help CSS file with one included in `inst/doc` or via URL, and `add_stylesheet{}`, which just adds another stylesheet on top of the base one (useful for styling additional html you add.)

There are definitely limitations to R help's httpd server. I found that, while running from RStudio, I could not embed iframes with external sources, nor was I able to submit a HTML form data. It *can* run Javascript.

Please fork, PR, comment in the issues, do whatever you want with this, etc. I'd love to see your experiments

### Example

A more elaborate macro is included as an example of usage. `\feebackfooter{}{}` adds a footer to the help file that includes a rating system via <http://rating-widget.com/>, and links to file an issue about the function and to function's in a github repo. It takes as the first argument the repo (e.g., 'noamross/htmlhelp'), and as the second the path to the function (e.g., 'R/myfile.R).

To see this in action, install the package and run `?hello`. See `R/hello.R` for usage. Please click so we can see how well the rating system works!

You can use this but don't count on the ratings lasting for your function, as right now I'm using a temporary free acount.

### The Guts

See `man/macros/macros.Rd` and `R/macros.R` for how the package works. Essentially it overrides `tools::Rd2HTML()` behavior of escaping special HTML characters in `.Rd` files.

------------------------------------------------------------------------

Oh, when working on this it may be useful to turn on RStudio's debugger mode, which allows one to inspect elements by right-clicking, like a browser developer mode. To do this on OSX, use

    defaults write org.rstudio.RStudio WebKitDeveloperExtras -bool true

I'm not sure how to activate it on other systems.
