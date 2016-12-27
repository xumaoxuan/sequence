#' Title
#'
#' @param InData Input a vector
#' @param binseq to cut into pieces,which contained number will be count
#'
#' @return every bin and its count
#' @export
#'
#' @examples
#'    a<-c(2,3,5,6,7,8,8,3,4,6,6,1,2,4,56,2,4,5,5)
#'    bintimes(a,binseq=c(4,50))
bintimes <- function(InData,binseq)
{
  if(is.null(InData)) stop("'InData' is NULL")
  if(!is.numeric(InData)) stop("'InData' must be number")
  if(!is.vector(binseq)) stop("binseq should be a vector")
  binseq <- c(0,binseq,max(InData))
  sector=cut(InData,breaks=binseq)
  return(data.frame(table(sector)))
}
