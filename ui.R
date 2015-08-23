shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Oxygen Cylinder Pressure"),
    
    sidebarPanel(
      h6('Instructions: This app calculates the pressure inside a cylinder containing oxygen which might be helpful in maintaining safety.'), 
      h6('The inputs required are the amount of oxygen in kg, the temperature in deg C and the cylinder volume in liters. The inputs go in the boxes below as indicated.'),
      h6('Use the arrow buttons to input the values. Hit the submit button when finished with inputs.'),
      h6('The values used in the calculation are displayed on the right as is the calculated pressure.'), 
      h6('The ideal gas law is used to make the calculation and should be accurate in the ranges allowed for the inputs.'),
      numericInput('m', 'Oxygen (kg)', 1.0, min=0.25, max=2.5, step=0.25),
      numericInput('tc', 'Temperature (deg C)', 25.0, min=0.0, max=50.0, step=1.0),
      numericInput('v', 'Cylinder Volume (liters)', 15.0, min=7.5, max=20.0, step=0.5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Inputs'),
      h4('Oxygen (kg)'),
      verbatimTextOutput('m'),
      h4('Temperature (deg C)'),
      verbatimTextOutput('tc'),
      h4('Cylinder Volume (liters)'),
      verbatimTextOutput('v'),
      h3('Results'),
      h4('Pressure in Cylinder (atm)'),
      verbatimTextOutput('p')
    )
  )
)