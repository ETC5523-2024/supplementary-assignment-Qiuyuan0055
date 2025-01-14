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

  ## Set up dynamic dataset based on the inputs
  uc_trends <- reactive({
    cbp_resp %>%
      # Filter column 'demographic' based on the what is chosen in the inputId demo
    filter(demographic == input$demo) %>%
    group_by(fiscal_year) %>%
    summarise(total_encounters = sum(encounter_count, na.rm = TRUE)) %>%
    ungroup()
  })

  output$trendPlot <- renderPlot({
    # Placeholder plot for trends
    ggplot(uc_trends(), aes(x = fiscal_year, y = total_encounters)) +
      geom_line(color = "blue", size = 1) +
      geom_point(size = 2) +
      theme_minimal() +
      labs(
        title = "Trends in Encounters for Unaccompanied Children",
        x = "Fiscal Year",
        y = "Total Encounters"
      ) +
      scale_x_continuous(breaks = seq(min(uc_trends()$fiscal_year), max(uc_trends()$fiscal_year), by = 1))
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
