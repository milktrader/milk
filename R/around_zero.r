
around_zero <- function(returns, main="", xlab="", dn.col='goldenrod4', up.col='goldenrod'){

dens  =  density(na.omit(returns))
x1    =  min(which(dens$x >= 0))
x2    =  max(which(dens$x <  1))
x3    =  min(which(dens$x >= -1))
x4    =  max(which(dens$x <  0))

#png("1.png")
plot(dens, xlab=xlab, ylab="", main=main, yaxt="n")
with(dens, polygon(x=c(x[c(x3,x3:x4,x4)]), y= c(0, y[x3:x4], 0), col=dn.col))
with(dens, polygon(x=c(x[c(x1,x1:x2,x2)]), y= c(0, y[x1:x2], 0), col=up.col))
#dev.off()
}
