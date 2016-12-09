#Scenario Figs

## SCENARIO 3
############################################################################
### export
tiff("out/S9 Fig.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(mfrow = c(1,2)); par(oma = c(.25,0,0,0))
sc3 <- read.csv("data/data.scen3.csv", header = T)

###--- Spatial dimension ---###
################################
par(mar = c(4.5,4.5,0.1,0.1))
plot(sc3$QSlow ~ sc3$Temp, type = "l", ylim = c(0,1.05),
     xlab = expression(paste("Spatial dimension (",hat(p),")")),
     ylab = expression(paste("Quality index ( ", hat(p), ")")),
     lwd = 3, cex.lab = 1.3, lty = 2)
lines(sc3$Qshi ~ sc3$Temp, type = "l", lwd = 3)
text(.975,0.005, "A)", cex = 2)

###--- Temporal dimension ---###
################################
par(mar = c(4.5,1,0.1,2.5))
plot(sc3$QTLow ~ sc3$Temp, type = "l", ylim = c(0,1.05),
     xlab = expression(paste("Temporal dimension (",hat(p),")")),
     ylab = expression(paste("Quality index ( ", hat(p), ")")),
     lwd = 3, cex.lab = 1.3, lty = 2, yaxt = "n")
lines(sc3$QTHi ~ sc3$Temp, type = "l", lwd = 3)
text(.02,0.005, "B)", cex = 2)
dev.off()


########
### 3D version
tiff("out/S10 Fig.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(mfrow = c(1,1)); par(mar = c(0.95,0.5,0.1,0.1)) ### set graph parameters ### set graph parameters
### Import matrix saved (without row/column names)
### from the excel workbook
sc3a.3d <- as.matrix(read.csv("data/3d.data.scen3a.csv",header = F))
persp(seq(0,1,0.02),seq(0,1,0.02), sc3a.3d,
      xlab = "Spatial dimension",zlim = c(0,1),
      ylab = "Temporal dimension", zlab = "Quality index",
      theta = 40, phi = 30, expand = 1,
      col = rgb(.50,.50,.50,0.51), ticktype = "detailed", nticks = 3,
      cex.axis = 0.75)
dev.off()

tiff("out/S11_fig.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(mfrow = c(1,1)); par(mar = c(0.95,0.5,0.1,0.1)) ### set graph parameters ### set graph parameters
### Import matrix saved (without row/column names)
### from the excel workbook
sc3b.3d <- as.matrix(read.csv("data/3d.data.scen3b.csv",header = F))
persp(seq(0,1,0.02),seq(0,1,0.02), sc3b.3d,
      xlab = "Spatial dimension",
      ylab = "Temporal dimension", zlab = "Quality index",
      theta = 40, phi = 30, expand = 1, zlim = c(0,1),
      col = rgb(.50,.50,.50,0.51), ticktype = "detailed", nticks = 3,
      cex.axis = 0.75)
dev.off()
rm(sc3, sc3a.3d, sc3b.3d)