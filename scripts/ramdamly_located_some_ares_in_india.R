library(leaflet)

# -------------------------------
# Sample data with Indian cities
# -------------------------------
cities_data <- data.frame(
  city = c(
    "Mumbai", "Delhi", "Bangalore", "Hyderabad", "Chennai", "Kolkata",
    "Visakhapatnam", "Srikakulam", "Vijayawada", "Guntur"
  ),
  lat  = c(
    19.0760, 28.7041, 12.9716, 17.3850, 13.0827, 22.5726,
    17.6868, 18.2969, 16.5062, 16.3067
  ),
  lng  = c(
    72.8777, 77.1025, 77.5946, 78.4867, 80.2707, 88.3639,
    83.2185, 83.8973, 80.6480, 80.4365
  ),
  population = c(
    20411000, 32941000, 13608000, 10004000, 11324000, 14850000,
    2350000, 890000, 2150000, 670000
  )
)

# -------------------------------
# Create Leaflet Map
# -------------------------------
india_map <- leaflet(data = cities_data) %>%
  addTiles() %>%
  setView(lng = 78.9629, lat = 20.5937, zoom = 5) %>%
  addCircleMarkers(
    lng = ~lng,
    lat = ~lat,
    radius = ~sqrt(population) * 0.01,
    color = "red",
    fillOpacity = 0.8,
    popup = ~paste(
      "<b>City:</b>", city,
      "<br><b>Population:</b>", population
    )
  )

india_map
