### Create 3d general outlook

### Import matrix saved (without row/column names)
### from the excel workbook

###First, create a 'dummy' blank 3d plot (parameters outside plot area)
tiff("out/Fig 4.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(mar = c(0.55,0.5,0.1,0.1)) ### set graph parameters
x <- seq(0,1,0.02); y <- seq(0,1,0.02)
gen <- as.matrix(read.csv("data/3d.general.csv",header = F))

pmat <- persp(x=c(-10.1,-10), y=c(-10.1,-10), z=matrix(c(0,.1,0,.1), 
                                                       nrow=2),
              xlab = "Spatial dimension",
              xlim = c(0,1), ylim = c(0,1), zlim = c(0,1),
              ylab = "Temporal dimension", zlab = "Quality index",
              theta = 40, phi = 40, expand = 1,
              col = rgb(.20,.20,.20,0.51), ticktype = "detailed", nticks = 3,
              cex.axis = 0.75, border = rgb(.20,.20,.20,0.51))

lines(trans3d(x = seq(0,0.7,0.02), y = 0.6, z = 0.99, pmat = pmat),
      col = 1, lwd = 2, lty = 6)
lines(trans3d(x = 0, y = 0.6, z = seq(0.3,0.99, 0.01), pmat = pmat),
      col = rgb(.20,.20,.20,1), lwd = 2, lty = 6)
lines(trans3d(x = 0.5, y = 0.6, z = seq(0.3,0.99, 0.01), pmat = pmat),
      col = rgb(.20,.20,.20,1), lwd = 2, lty = 6)
lines(trans3d(x = seq(0,0.7,0.02), y = 0.2, z = 0.99, pmat = pmat),
      col = 1, lwd = 2, lty = 6)
lines(trans3d(x = 0, y = 0.2, z = seq(0.3,0.99, 0.01), pmat = pmat),
      col = rgb(.20,.20,.20,1), lwd = 2, lty = 6)
lines(trans3d(x = .5, y = 0.2, z = seq(0.3,0.99, 0.01), pmat = pmat),
      col = rgb(.20,.20,.20,1), lwd = 2, lty = 6)
lines(trans3d(x = 0.5, y = seq(0, 0.8,0.02), z = 0.99, pmat = pmat),
      col = 1, lwd = 2, lty = 6)

par(new=T)
pmat <- persp(x=x, y=y, z=gen,
              xlab = "Spatial dimension",
              xlim = c(0,1), ylim = c(0,1), zlim = c(0,1),
              ylab = "Temporal dimension", zlab = "Quality index",
              theta = 40, phi = 40, expand = 1,
              col = rgb(.50,.50,.50,0.51), ticktype = "detailed", nticks = 3,
              cex.axis = 0.75, border = rgb(.25,.25,.25,0.51))
text(trans3d(0.15,0.15,.95,pmat), "A", font = 2, cex = 2)
text(trans3d(0.15,0.5,.95,pmat), "B", font = 2, cex = 2)
text(trans3d(0.15,0.85,.95,pmat), "C", font = 2, cex = 2)
text(trans3d(0.53,0.17,.95,pmat), "D", font = 2, cex = 2)
text(trans3d(0.55,0.45,.95,pmat), "E", font = 2, cex = 2)
text(trans3d(0.50,0.825,.95,pmat), "F", font = 2, cex = 2)
dev.off()
rm(pmat, x, y, gen)
