

library(shiny)
library(dplyr)
library(leaflet)

AirportCAN <- data.frame(name=c("Pearson-YYZ", "Trudeau-YUL", "Cartier-YOW"), rating = c( 1, 2, 3), 
                         lat=c(43.6777, 45.4657, 45.3192), 
                         lng=c(-79.624817, -73.7455, -75.6692))
my_map <- AirportCAN  %>% leaflet()%>% addTiles() %>% 
  addCircles(weight=25, radius=( AirportCAN$rating)*35)

my_map 



