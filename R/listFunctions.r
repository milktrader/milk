lsf <- function(package_name) {

  package_name  =  as.character(substitute(package_name))
  function_list = paste0('package', ':', package_name)
  x             = lsf.str(function_list)
  y             = head(x, n=length(x))
  return(y)
}


########### ALT CODE #############################

# lsfunc <- function(package_name) {
# 
#   function_list = paste0('package', ':', package_name)
#   x             = ls(getNamespace('package_name'))
#   return(x)
# }
