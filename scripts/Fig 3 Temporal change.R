#General Doc Figs

## FIG 3: Parameters for the calculation of the temporal dimension of the EQE
############################################################################
###--- Temporal dimension ---###
################################

##########################################################
##### ~~~~~~~~~~~~~~  EXPORT FIGURE 3 ~~~~~~~~~~~~~~ #####
##########################################################
tiff("out/Fig 3.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(xpd=F)
par(mar = c(4,4.5,0,0.1))
hmin <- 0.50; hmax <- 1.0
td <- seq(from = hmax, to = hmin, length.out = 5)
tc <- rep(hmin, 40)
tr <- seq(from = hmin, to = hmax, length.out = 15)
tim <- c(td,tc,tr)
plot(tim, type = "l", ylim = c(0,1.2), 
     xlab = "Temporal dimension", yaxt = "n", ylab = "Quality index",
     lwd = 3, xaxt = "n", cex.lab = 1.9, xaxs = "i")
segments(1,-1,1, hmax,col = 1, lty = 3)
segments(5,-1,5, hmin,col = 1, lty = 3)
text(x = 3, y = .25, bquote(bold("T"["D"])), col = 1, cex = 1.5)
arrows(1.25,.17,5-0.25, 0.17, code = 3, length = 0.18, angle = 20)

segments(46,-1,46,hmin, col = 1, lty = 3)
text(25, .25, bquote(bold("T"["C"])),col = 1, cex = 1.5)
arrows(5+0.25,0.17, 46-0.25,0.17, code = 3, length = 0.18, angle = 20)
#arrows(46,0,46,hmin-0.05);

segments(60,-1, 60,hmax, col = 1, lty = 3)
#arrows(60,0, 60, hmax-0.05);
text(53,.25, bquote(bold("T"["R"])), col = 1, cex = 1.5)
arrows(46+0.25,0.17, 60-0.25,0.17, code = 3, length = 0.18, angle = 20)

par(xpd=F);abline(h=hmax,col = 1, lty = 3);
abline(h = hmin, col = 1, lty = 3)
par(xpd=NA)
text(x = -1.15, y = hmax,
     bquote(bold("Q"["max"])), col = 1, cex = 1.5);
text(x = -1.15, y = hmin,
     bquote(bold("Q"["min"])), col =1, cex = 1.5)
par(xpd=F)

dev.off()
rm(hmin,td,tc,tr,tim, hmax)
