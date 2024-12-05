# Marking Rubric

## Package design

* 3 points: Updated description file to:
    * Include your name
    * Describe the package clearly
* 2 points: Added some more detailed comments to the `data-raw` processing script
* 5 points: Added `roxygen2` documentation to the two data objects. Must include:
    * Number of rows/columns, list of columns and their description.
    * Source of the data
    * Overview of what the data represents

## `pkgdown`

* 1 point: Enabled on the package
* 3 points: Has a clear `README.Rmd` / `README.md` that displays on the home page
* 1 point: pkgdown set up with Github pages, and is accesible from the URL in the README


## Vignette

10 points

Create a vignette using the provided Rmd file that uses the provided data objects, and shows an easy to understand analysis of the data.

* Grammar and spelling are critical
* Vignette should have an introduction, methods (such as the code used) and a conclusion based on the analysis
* Vignette should take approximately 5 minutes to read through, roughly 600-1000 words. _This is not a strict limit_ and should only be taken as a guide

## Shiny App

15 points

Create a shiny app that comes bundled with the package.

* Must use some form of interaction through `*inputs` or `action*`
* Interaction fields must have short descriptions
* Some interpretation of the output(s) provided
* Must use the data as it is present in the package (i.e. no `read.csv`)
* Shiny app must be located in `inst`
* R function provided to launch the app.
    * Function to be documented with `roxygen2` and exported to the user