#' Title
#' @description get required interval distance pieces
#' @param InData Input a vector
#' @param
#'
#' @return
#' @export
#'
#' @examples
#'    a<-c(2,3,5,6,7,8,8,3,4,6,6,1,2,4,56,2,4,5,5)

todataframe<-function(InData,ncol=2,byrow=F)
{
  if(length(InData)%%ncol!=0) stop("vector length is not available")
  data.frame(matrix(InData,ncol=ncol,byrow=byrow))
}
