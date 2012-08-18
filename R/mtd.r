
mtd = function(stock='SPY') {


    sym = getSymbols(stock, from=Sys.Date() - 35, auto.assign=FALSE)
    mtd = last(monthlyReturn(Cl(sym)))

    cat(stock, as.numeric(mtd), '\n')
  
}
