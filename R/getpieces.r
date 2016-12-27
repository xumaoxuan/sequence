#' Title
#' @description get required interval distance pieces
#' @param InData Input a vector
#' @param distance distance between one by one
#'
#' @return
#' @export
#'
#' @examples
#'    a<-c(2,3,5,6,7,8,8,3,4,6,6,1,2,4,56,2,4,5,5)
#'    distance=2
#'    getpieces(a,distance)
getpieces<-function(InData,distance)
{

  if(is.null(InData)) stop("'InData' is NULL")
  if(!is.numeric(InData)) stop("'InData' must be number")
  if(missing(distance)) distance <- 1

  timediff<-diff(InData)
  pos<-which(timediff!=distance)+1  ##first get continuous time piece
  subtime<-unname(split(InData, cumsum(seq_along(InData) %in% pos)))
  subtime
}
