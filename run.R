##Generate all figs

# Start the clock!
ptm <- proc.time()

source("scripts/Fig 1 Ecosystem Responses.R")
source("scripts/Fig 2 Spatial change.R")
source("scripts/Fig 3 Temporal change.R")
source("scripts/Fig 4 General 3D.R")
source("scripts/S4 & S5 Fig-Scenario1.R")
source("scripts/S6 S7 & S8-Scenario2.R")
source("scripts/S9 S10 & S11-Scenario3.R")

# Stop the clock
proc.time() - ptm
