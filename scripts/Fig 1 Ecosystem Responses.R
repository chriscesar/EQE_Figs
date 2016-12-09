### create graph for three 'states' following a perturbation

tiff("out/Fig 1.tiff", width = 2250, height = 2625, units = "px", res = 300, compression = "lzw")
aa <- c(NA, 70, 40, 70); ab <- c(NA, 70, 40, 70)
bb <- c(NA, 70, 55, 40); bp <- c(NA, 70, NA, 40)
cc <- c(NA, 70, 40, 20)
x <- seq(1, 4,1)
par(mfrow = c(3,1)); par(mar = c(3,3,.001,.001))
plot(x,aa, type = "l", lwd = 2, xlim = c(1.75, 4.25), ylim = c(15, 80), xlab = "", ylab = "", xaxt = "n", yaxt = "n");
abline(v = 2, lty = 2, lwd = 2, col = "darkgrey")
points (x = x, y = ab, cex = 4, pch = 21, bg = c(1,1,0,1))
text(x = 1.72, y = 20, "A)", cex = 2)
plot(bb, type = "l", lwd = 2, xlim = c(1.75, 4.25), ylim = c(15, 80), cex = 2, pch = 21, bg = c(1,1,0,1), xlab = "", ylab = "", xaxt = "n", yaxt = "n");
abline(v = 2, lty = 2, lwd = 2, col = "darkgrey")
points(x = x, y = bp, cex = 4, pch = 21, bg = c(1,1,0,1))
par(xpd=NA)
text(x = 1.59, y = 50, bquote("Ecosystem State"), cex = 1.9, col = 1, srt = 90);
par(xpd=F)
text(x = 1.72, y = 20, "B)", cex = 2)
plot(cc, type = "b", xlim = c(1.75, 4.25), lwd = 2, ylim = c(15, 80), cex = 2, pch = 21, bg = c(1,1,0,1), xlab = "", ylab = "", xaxt = "n", yaxt = "n");
abline(v = 2, lty = 2, lwd = 2, col = "darkgrey")
points(cc, cex = 4, pch = 21, bg = c(1,1,0,1))
par(xpd=NA)
text(x = 3, y = 9, bquote("Time"), cex = 1.9, col = 1);
par(xpd=F)
text(x = 1.72, y = 20, "C)", cex = 2)
dev.off()

rm(aa,bb,cc,x, ab, bp)
