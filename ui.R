library(rgdal)
library(leaflet)
library(reshape)
library(reshape2)
library(dplyr)



### The ui.R for the interactive map app
ui <- fluidPage(tags$head(tags$link(rel = "icon", type = "image/png", href = "world.png"),
                          tags$title("Interactive Map"),
  leafletOutput("interactivemap",width = "auto", height = "625px")
                ,title = "Interactive Map"))
