#load
?AirPassengers
#verify
class(AirPassengers)
View(AirPassengers)
#convert the datset to datframe
ap_df <- data.frame(
  year=time(AirPassengers),
  passsengers = as.numeric(AirPassengers) 
)
ap_df_months <- data.frame(
  year=floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers=as.numeric(AirPassengers)
)
ap_df_months
#basic plot
plot(AirPassengers)

plot(AirPassengers,
     main = "Air Passengers Trend Analysis",
     xlab="Months",
     ylab="no.of passengers",
     col="red"
)
plot(AirPassengers,
     type='o',
     lwd=2,
     main = "Air Passengers Trend Analysis",
     xlab="Months",
     ylab="no.of passengers",
     col="red"
)
points(AirPassengers,
       type='o',
       pch=17,
       col="brown"
)
grid()

library(ggplot2)
ggplot(ap_df,
       aes(x=year, y=passengers))+
  geam_line(color='darkgreen',linewidth=0.5)+
            labs(
              title="tread analysis of air passengers",
              caption="using air passengers dataset",
              subtitle = "From 1949-1960",
              x="months",
              y="no. of passengers"
            )+
              geam_point(color="red")
              theme_minimal()
              
