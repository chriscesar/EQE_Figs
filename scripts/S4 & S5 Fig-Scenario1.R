#Scenario Figs

## SCENARIO 1
############################################################################
###--- Temporal dimension ---###
################################

### export
tiff("out/S4 Fig.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
par(mfrow = c(1,2)); par(oma = c(.25,0,0,0))
sc1.tem <- read.csv("data/data.scen1.csv", header = T)
sc1.spa <- read.csv("data/data.scen1spa.csv",header = T)

###--- Spatial dimension ---###
################################
par(mar = c(4.5,4.5,0.1,0.1))
plot(sc1.spa$QS ~ sc1.spa$Spat, type = "l", ylim = c(0,1.05),
     xlab = expression(paste("Spatial dimension (",hat(p),")")),
     ylab = expression(paste("Quality index ( ", hat(p), ")")),
     lwd = 3, cex.lab = 1.3)
text(.975,0.005, "A)", cex = 2)
###--- Temporal dimension ---###
################################
par(mar = c(4.5,1,0.1,2.5))
plot(sc1.tem$QT ~ sc1.tem$Temp, type = "l", ylim = c(0,1.05),
     xlab = expression(paste("Temporal dimension (",hat(p),")")),
     ylab = "", yaxt = "n",
     lwd = 3, cex.lab = 1.3)
text(.02,0.005, "B)", cex = 2)
dev.off()

##########################################################

#### Attempt at 3d object
tiff("out/S5 Fig.tiff", width = 2625, height = 2250, units = "px",res = 300, compression = "lzw")
### set graph parameters
### Import matrix saved (without row/column names)
### from the excel workbook
sc1.3d <- as.matrix(read.csv("data/3d.data.scen1.csv",header = F))
par(mfrow = c(1,1));par(mar = c(0.85,0.5,0.1,0.1)) ### set graph parameters
persp(seq(0,1,0.02),seq(0,1,0.02), sc1.3d,
      xlab = "Spatial dimension",
      ylab = "Temporal dimension",
      zlab = "Quality index",
      theta = 40, phi = 30, expand = 1, r = 3, zlim = c(0,1),
      col = rgb(.50,.50,.50,0.51), ticktype = "detailed", nticks = 3,
      cex.axis = 0.75)
dev.off()
rm(sc1.tem, sc1.spa, sc1.3d)