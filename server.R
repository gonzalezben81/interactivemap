#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
server <- function(input, output) {
   

    
    
    illinoismap<- leaflet() %>%
      setView(lng = -77.0369, lat = 38.9072, zoom = 5) %>% 
      addTiles(group = "OSM (default)") %>%
      addProviderTiles("Stamen.Toner", group = "Toner") %>%
      addProviderTiles("Stamen.TonerLite", group = "Toner Lite") %>%
      addProviderTiles("Stamen.Watercolor", group = "Watercolor") %>%
      addProviderTiles("CartoDB.Positron", group="Carto")%>%
      addProviderTiles("Esri.WorldImagery", group="Esri")%>%
      addProviderTiles("Esri.WorldStreetMap", group="Esri2")%>%
      addLayersControl(
        baseGroups = c("OSM (default)", "Toner", "Toner Lite","Watercolor","Carto","Esri","Esri2"),
        options = layersControlOptions(collapsed = TRUE)
      ) %>% 
      addMiniMap(toggleDisplay = TRUE) %>% 
      addMeasure() %>% 
      addEasyButton(easyButton(
        icon="fa-globe", title="Zoom to Level 1",
        onClick=JS("function(btn, map){ map.setZoom(1); }"))) %>%
      addEasyButton(easyButton(
        icon="fa-crosshairs", title="Locate Me",
        onClick=JS("function(btn, map){ map.locate({setView: true}); }")))
    # addLegend("bottomright",values = ~TOT_POP,pal = pal6,title = "Population by County")
    
    output$interactivemap <- renderLeaflet(illinoismap)
    
    
    
  }
  


