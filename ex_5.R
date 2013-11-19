# Author: Vasiliki Aspasiou
 

library(rasta)

data(taravao)
plotRGB(x=taravao, 4,5,3)

data(taravao2)
plotRGB(x=taravao2,4,5,3)



cloud1 <- calc(x=taravao[[9]], fun=QA2cloud)


taravao_8 <- dropLayer(x=taravao, i=9) 




taravao_8[cloud1 == 1] <- NA



Vectorize_mean <- function(a, b) {
out <- mapply(FUN=Raster_mean, a, b)
return(out)
}


mean__per_pixel <- overlay (x=tarava08, y=taravao2_8, fun=Vectorize_mean)


plotRGB (mean_pixel, 4,5,3)



composite(raster1=taravao, raster2=taravao2) 




