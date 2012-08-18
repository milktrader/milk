ytd = function(stock='SPY') {


    sym = getSymbols(stock, from=Sys.Date() - 370 , auto.assign=FALSE)
    ytd = last(yearlyReturn(Cl(sym)))

    cat(stock, as.numeric(ytd), '\n')
  
}
