#Load and Understand the HairEyeColordataset
#Load dataset

data(HairEyeColor)

#Check structure
str(HairEyeColor)
View(HairEyeColor)
?HairEyeColor

#Very basic Mosaic Plot(Base R)
mosaicplot(HairEyeColor)

#Add Titles and Colors
mosaicplot(HairEyeColor, main = "Mosaic Plot: Hair,Eye Color and Sex",
           color = TRUE)
#Two-Variable Mosaic Plot
HairEye2D<-margin.table(HairEyeColor,c(1,2))
mosaicplot(HairEyeColor,main = "Hair vs Eye Color Mosaic Plot",
           color = TRUE)

#Mosaic Plots by Sex
par(mfrow=c(1,2))
mosaicplot(HairEyeColor[,,"Male"],main = "Male",color = TRUE)
mosaicplot(HairEyeColor[,,"Female"],main = "Female",color = TRUE)
par(mfrow=c(1,1))

#Custom Colors
mosaicplot(HairEye2D, col = c("brown","black","red","yellow"),
           main = "Hair vs Eye Color(Custom Colors)")
