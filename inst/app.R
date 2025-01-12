library(shiny)
library(cbp.analysis)
library(ggplot2)

# Define UI
ui <- fluidPage(
  titlePanel("CBP Data Analysis"),

  sidebarLayout(
    sidebarPanel(
      # Interaction field 1: Demographic selection with short description
      selectInput(
        inputId = "demo",
        label = "Select Demographic Group:",  # Short description for users
        choices = c("Unaccompanied Children", "Family Units", "Single Adults"),
        selected = "Unaccompanied Children"
      ),
      helpText("Choose a demographic group to view trends over time."), # Additional short description

      # Interaction field 2: Year selection slider with short description
      sliderInput(
        inputId = "yearRange",
        label = "Select Year Range:",  # Short description for users
        min = 2015,
        max = 2023,
        value = c(2015, 2023)
      ),
      helpText("Use the slider to select the range of fiscal years for the analysis.")
    ),

    mainPanel(
      tabsetPanel(
        tabPanel("Trend Analysis", plotOutput("trendPlot")),
        tabPanel("State Analysis", plotOutput("statePlot"))
      )
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$trendPlot <- renderPlot({
    # Placeholder plot for trends
    plot(1:10, 1:10, type = "b", col = "blue",
         main = paste("Trend for:", input$demo),
         xlab = "Year",
         ylab = "Encounters")
  })

  output$statePlot <- renderPlot({
    # Placeholder plot for state data
    barplot(1:5, names.arg = c("TX", "CA", "AZ", "NM", "NV"),
            col = "green", main = "Encounters by State",
            xlab = "State", ylab = "Encounters")
  })
}

# Run the application
shinyApp(ui = ui, server = server)
