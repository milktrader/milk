lsfun <-
function(package_name) {

  function_list = paste0('package', ':', package_name)
  x             = lsf.str(function_list)
  y             = head(x, n=length(x))
  return(y)

}
