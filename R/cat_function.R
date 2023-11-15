#' Cat love function
#'
#' @param love Enter TRUE if you love cats!
#'
#' @return A message
#' @export
#'
#' @examples
#' cat_function(love = TRUE)
cat_function <- function(love=TRUE){
  if(love==TRUE){
    print("I love cats!")
  } else {
    print("I am not a cool person.")
  }
}
