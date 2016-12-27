#' Title
#' @description to find how many times element happened in a vector
#' @param InData Input a vector
#' @param element an element to be found
#'
#' @return element happened times in the InData,and the percentage
#' @export
#'
#' @examples
#'    a=c(1,2,3,4,6,7)
#'    b=2
#'    count(a,b)
count<-function(InData,element)
{
  if(is.null(InData)) stop("'InData' is NULL")
  if(!is.numeric(InData)) stop("'InData' must be number")
  if(missing(element)) stop("the second parameter(to be found)must be exist")
  InData<-na.omit(InData)
  times=sum(InData==element)
  if(is.na(times))
    return(paste("no",substitute(element),"found in InData"))
  list(times=times,percent=times/length(InData))
}
