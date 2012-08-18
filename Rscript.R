# Initialisatie variabelen
aantal_dobbelstenen_aanvaller <- 3 # Aanvaller gooit met 3 dobbelstenen
stand_aanvaller <- 0 # Beginstand aanvaller is 0
stand_verdediger <- 0 # Beginstand verdediger is ook 0, net als de aanvaller


for (i in 1:100000) { # Begin for-loop die 100 000 wordt herhaald
  
  # De hoogste 2 dobbelstenen vd aanvaller worden in een vector met lengte 2 gestopt geordend 
  # van hoog naar laag
  aanvaller <- sort(sample(1:6, aantal_dobbelstenen_aanvaller, replace=TRUE), decreasing=TRUE)[1:2]
  
  # Als de som van deze twee dobbelstenen hoger is dan 7, dan gooit de verdediger met 2 dobbelstenen,
  # als deze som niet hoger is dan 7 dan gooit de verdediger met 2 dobbelstenen
  if (sum(aanvaller) > 7) aantal_dobbelstenen_verdediger <- 1 else aantal_dobbelstenen_verdediger <-2
  
  # Afhankelijk van met hoeveel dobbelstenen de verdediger gooit worden deze in aflopende volgorde
  # in een vector gestopt
  verdediger <- sort(sample(1:6, aantal_dobbelstenen_verdediger, replace=TRUE), decreasing=TRUE)
  
  # Deze geneste for-loop bepaald de uitkomst van de worpen
  for (j in 1:aantal_dobbelstenen_verdediger) {
    if (aanvaller[j] > verdediger[j]) stand_aanvaller = stand_aanvaller + 1 
    else stand_verdediger = stand_verdediger + 1
  }
  
} # Einde van de for-loop die 100 000 keer wordt herhaald

stand_aanvaller # Print resultaat stand aanvaller, woohoo
stand_verdediger # Print resultaat stand verdediger
stand_aanvaller / stand_verdediger # Ratio aanvaller : verdediger