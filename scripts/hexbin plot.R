data(diamonds)
data(package=.package(all.available=TRUE))
library(ggplot2)
data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds
plot(diamonds$carat,diamonds$price)

plot(diamonds$carat, diamonds$price, col=rgb(0,0,1,0.1),pch=16,main="Scatter plot: Carat vs price")

install.packages('hexbin')
library(hexbin)
hb <- hexbin(diamonds$carat,diamonds$price,xbins = 40)
plot(hb,main="Hexbin Plot")


ggplot(diamonds, aes(x=carat,y=price))+geom_hex()


ggplot(diamonds,aec(cart,price))+geom_hex()+labs( title = "Hexagon Binning:Diamond Structure", x = "carat", y = "price")+
  theme_minimal()
ggplot(diamonds,aes(carat,price))+
  geom_hex(bins=40)+
  scale_fill_gradient( low= "lightgreen", high = "red")+
  theme_minimal()

#Color meaning:
#-Light-> fewer diamonds
#-Dark-> dense region

#Professional Palette(Viridis)
ggplot(diamonds,aes(carat,price))+
  geom_hex(bins=35)+
  scale_fill_viridis_c()+
  theme_minimal()
#Add Legend Title
ggplot(diamonds,aes(carat,price))+
  geom_hex(bins=20)+
  scale_fill_viridis_c(name = "Count")+
  labs( title = "Density Structure of Diamonds", x = "Carat", y = "Price")+
  theme_minimal()

#Faceted Hexbin
ggplot(diamonds,aes(carat, price))+
  geom_hex()+
  scale_fill_viridis_c()+
  facet_wrap(~cut)+
  theme_minimal()

#Log Scale Hexbin
ggplot(diamonds,aes(carat,price))+
  geom_hex()+
  scale_fill_viridis_c()+
  scale_y_log10()+
  theme_minimal()
