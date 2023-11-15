require(devtools)
require(testthat)
require(roxygen2)


### Step 2: to initiate a package with default files
usethis::create_package("~/OneDrive/Projects/RpackageTest")

### Step 3: to create the first function
setwd("~/OneDrive - JNJ/Projects/RpackageTest")
usethis::use_r("cat_function")
# function opens and write in the function
# cat_function <- function(love=TRUE){
#   if(love==TRUE){
#     print("I love cats!")
#   } else {
#     print("I am not a cool person.")
#   }
# }

### Step 5: test drive
devtools::load_all()

### Step 6: check all is well with the pacakge
devtools::check()

### Step 7: to create a license (and run check again)
usethis::use_mit_license()

### Step 8: Edit Description File

### Step 9: Document, let users know how to use the function: 
# Open R/cat_function.R and insert roxygen skeleton
devtools::document()
# check again
devtools::check()

### Step 10: Install and load your package
# restart the R session and
devtools::install()

# to install and load the package
require(RpackageTest)
?cat_function

### Step 11: use_git for version control
usethis::use_git()

### Step: 12 unit test of function
usethis::use_testthat()
usethis::use_test("cat_function")
# modify the test function
devtools::test()

### Step 13: to disclose package dependencies
usethis::use_package("purrr")

#### Step 14: create a README
usethis::use_readme_rmd()
