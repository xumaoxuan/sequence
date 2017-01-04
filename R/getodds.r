#' Title
#' @description get required interval distance pieces
#' @param InData Input a vector
#' @param odd get odd or even index number
#'
#' @return
#' @export
#'
#' @examples
#'    a<-c(2,3,5,6,7,8,8,3,4,6,6,1,2,4,56,2,4,5,5)
#'    getodd(a,FALSE)
getodd<-function(InData,odd=FALSE)
{
  if(odd==FALSE){
    InData[c(FALSE,TRUE)]
  } else{
    InData[c(TRUE,FALSE)]
  }

}
