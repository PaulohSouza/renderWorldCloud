library(shiny)
library(ECharts2Shiny) #Carrega os javascripts da biblioteca

ui <- fluidPage(
  
  loadEChartsLibrary(),
  loadEChartsTheme('shine'),
  loadEChartsTheme('vintage'),
  loadEChartsTheme('dark-digerati'),
  loadEChartsTheme('roma'),
  loadEChartsTheme('infographic'),
  loadEChartsTheme('macarons'),
  loadEChartsTheme('caravan'),
  loadEChartsTheme('jazz'),
  loadEChartsTheme('london'),
  

  
  fluidRow(
    column(6,
           tags$div(id="test_6", style="width:100%;height:400px;"),
           deliverChart(div_id = "test_6")
    )
  )
  
)


palavras <- c(rep("BRASIl - SAFRA 20/21", 350), rep("Soja", 200), rep("Milho", 103), rep("Feijão", 20), rep("Arroz", 15), rep("Algodão", 10), rep("SORGO", 6), rep("Amendoim", 4), rep("Gergelim", 4), rep("Mamona", 2), rep("Girassol", 2), rep("Dados Conab", 2), rep("Agricultura", 2), rep("Area cultivada", 2), rep("Grãos", 2),
              rep("Aveia", 15), rep("Canola", 8), rep("Centeio", 10), rep("Cevada", 10), rep("Trigo", 15), rep("Triticale", 10), rep("Paulo Souza", 20))

server <- function(input, output) {
  
  renderWordcloud("test_6", data = palavras, grid_size = 10, sizeRange = c(20, 50))
  
}

shinyApp(ui, server)
