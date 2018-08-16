library(mapplots)
library(shapefiles)

xlim = c(-180, 180)
ylim = c(-90, 90)

#load shapefile
wmap = read.shapefile ("xxx")

# define x,y,z for pies
x <- c(-100, 100)
y <- c(50, -50)
z1 <- c(0.25, 0.25, 0.5)
z2 <- c(0.5, 0.2, 0.3)
z <- rbind(z1,z2)
# define radii of the pies
r <- c(5, 10)

# it's easier to have all data in a single df

plot(NA, xlim = xlim, ylim = ylim, cex = 0.75, xlab = NA, ylab = NA)
draw.shape(wmap, col = "grey", border = "NA")
draw.pie(x,y,z,radius = r, col=c("blue", "yellow", "red"))
legend.pie (x = -160, y = -70, labels = c("0", "1", "2"), radius = 5,
bty = "n", cex = 0.5, label.dist=1.5, col = c("blue", "yellow", "red"))
