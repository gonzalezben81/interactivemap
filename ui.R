library(rgdal)
library(leaflet)
library(reshape)
library(reshape2)
library(dplyr)




# Define UI for application that draws a histogram
ui <- fluidPage(tags$head(tags$link(rel = "icon", type = "image/png", href = "world.png"),
                          tags$title("Interactive Map"),
  leafletOutput("interactivemap",width = "auto", height = "625px")
                ,title = "Interactive Map"))
