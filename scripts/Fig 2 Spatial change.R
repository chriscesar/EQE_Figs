#General Doc Figs

## FIG 2: Parameters for the calculation of the spatial dimension of the EQE
############################################################################

##########################################################
##### ~~~~~~~~~~~~~~  EXPORT FIGURE 2 ~~~~~~~~~~~~~~ #####
##########################################################
tiff("out/Fig 2.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(xpd=F)
par(mar = c(4.2,4.5,0,0.1))
hmin <- 0.50; hmax <- 1.0
sd <- rep(hmin, 50)
si <- seq(hmin, hmax, length.out = 20)
spa <- c(sd,si)
plot(spa, type = "l", ylim = c(0,1.2),
     xlab = "Spatial dimension", yaxt = "n", ylab = "Quality index",
     lwd = 3, xaxt = "n", cex.lab = 1.9, xaxs = "i")

text(x = 26, y = 0.2, bquote(bold("S"["D"])), col = 1, cex = 1.5)
segments(1, -1, 1, hmin, lty = 3, col = 1)
segments(51, -1, 51, hmin, lty = 3, col = 1)

arrows(1.5, 0.15, 50.5, 0.15, code = 3, length = 0.18, angle = 20)#;arrows(28, 0.2, 50.8, 0.2)

segments(70, -1, 70, hmax, lty = 3, col = 1)

text(x = 60, y = 0.2, bquote(bold("S"["I"])), col=1, cex = 1.5)
arrows(51.5,0.15, 69.5, 0.15, code = 3, length = 0.18, angle = 20)
#arrows(58, 0.2,51.2,0.2);arrows(62, 0.2,69.8,0.2)


par(xpd=F);abline(h=hmax,col = 1, lty = 3);
abline(h = hmin, col = 1, lty = 3)
par(xpd=NA)
text(x = -1.5, y = hmax, bquote(bold("Q"["max"])), col =1, cex = 1.5);
text(x = -1.5, y = hmin, bquote(bold("Q"["min"])), col =1, cex = 1.5)
par(xpd=F)
dev.off()
rm(hmin,sd,si,spa, hmax)
