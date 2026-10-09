library(rvest)
library(tidyverse)
#for writing the code i followed the guide here https://www.geeksforgeeks.org/r-language/scraping-a-table-on-https-site-using-r/#
page = read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/EDUC_LEVEL_GRAD_GEN")
table_node = html_nodes(page,"table")
html_table(table_node) [[1]]
eductable1 = html_table(table_node) [[1]]
#Note that the VoB website uses the number after unit to denote the location for example unit/13469155 denotes chetham#
page = read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/EDUC_LEVEL_GRAD_GEN")
eductable = page |> html_nodes("table") |> html_table() 
eductablechet = eductable [[1]]
#Might need to run multiple times to reestablish connection so recomend running it line by line#
page =  read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/HOUS_TENURE_HH_GEN")
table = page |> html_nodes("table") |> html_table() 
housetablechet = table [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13438195/cube/EDUC_LEVEL_GRAD_GEN")
eductable = page |> html_nodes("table") |> html_table() 
eductablecrump = eductable [[1]]

page =  read_html("https://www.visionofbritain.org.uk/unit/13438195/cube/HOUS_TENURE_HH_GEN")
table = page |> html_nodes("table") |> html_table() 
housetablecrump = table [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13502390/cube/EDUC_LEVEL_GRAD_GEN")
eductable = page |> html_nodes("table") |> html_table() 
eductableancoats = eductable [[1]]

page =  read_html("https://www.visionofbritain.org.uk/unit/13502390/cube/HOUS_TENURE_HH_GEN")
table = page |> html_nodes("table") |> html_table() 
housetableancoats = table [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13475556/cube/EDUC_LEVEL_GRAD_GEN")
eductable = page |> html_nodes("table") |> html_table() 
eductablekersal = eductable [[1]]

page =  read_html("https://www.visionofbritain.org.uk/unit/13475556/cube/HOUS_TENURE_HH_GEN")
table = page |> html_nodes("table") |> html_table() 
housetablekersal = table [[1]]


page = read_html("https://www.visionofbritain.org.uk/unit/13470170/cube/EDUC_LEVEL_GRAD_GEN")
eductable = page |> html_nodes("table") |> html_table() 
eductablequays = eductable [[1]]

page =  read_html("https://www.visionofbritain.org.uk/unit/13470170/cube/HOUS_TENURE_HH_GEN")
table = page |> html_nodes("table") |> html_table() 
housetablequays = table [[1]]
#Saves the entire thing as 2 wide panels#
educationres = cbind(crumpsall=eductablecrump,chettam=eductablechet,kersal=eductablekersal,quays=eductablequays,ancoats=eductableancoats)
housingres = cbind(crumpsall=housetablecrump,chettam=housetablechet,kersal=housetablekersal,quays=housetablequays,ancoats=housetableancoats)
#Make sure to set the correct file path#
write.csv(educationres,file="D:\\PositStuff\\gmpanel\\EducationPanelwide.csv")
write.csv(housingres,file="D:\\PositStuff\\gmpanel\\HousingPanelwide.csv")
#GB Historical GIS / University of Portsmouth, Crumpsall Ward through time | Historical Statistics on Housing | Housing Tenure (Simplified), A Vision of Britain through Time.#
#Date accessed: 09th October 2026#
