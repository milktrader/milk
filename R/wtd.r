
wtd = function(stock='SPY') {


    sym = getSymbols(stock, from=Sys.Date() - 9 , auto.assign=FALSE)
    wtd = last(weeklyReturn(Cl(sym)))

    cat(stock, as.numeric(wtd), '\n')
  
}
