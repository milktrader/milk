lsfunc <- function(package_name) {

  function_list = paste0('package', ':', package_name)
  x             = ls(getNamespace('quantstrat'))
  return(x)
}
