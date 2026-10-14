library(rvest)
library(tidyverse)
page = read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/ETHNICITY_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablechet = eductable [[1]]
#Might need to run multiple times to reestablish connection so recomend running it line by line#

page = read_html("https://www.visionofbritain.org.uk/unit/13438195/cube/ETHNICITY_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablecrump = eductable [[1]]


page = read_html("https://www.visionofbritain.org.uk/unit/13502390/cube/ETHNICITY_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
etnictableancoats = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13475556/cube/ETHNICITY_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablekersal = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13470170/cube/ETHNICITY_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablequays = eductable [[1]]

ethnicres = cbind(crumpsall=ethnictablecrump,chettam=ethnictablechet,kersal=ethnictablekersal,quays=ethnictablequays,ancoats=etnictableancoats)
write.csv(ethnicres,file="D:\\PositStuff\\gmpanel\\EthnicityPanelwide.csv")

page = read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/BIRTH_CNTRY_SML_AREA")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablechet = eductable [[1]]
#Might need to run multiple times to reestablish connection so recomend running it line by line#
page = read_html("https://www.visionofbritain.org.uk/unit/13438195/cube/BIRTH_CNTRY_SML_AREA")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablecrump = eductable [[1]]




page = read_html("https://www.visionofbritain.org.uk/unit/13502390/cube/BIRTH_CNTRY_SML_AREA")
eductable = page |> html_nodes("table") |> html_table() 
etnictableancoats = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13475556/cube/BIRTH_CNTRY_SML_AREA")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablekersal = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13470170/cube/BIRTH_CNTRY_SML_AREA")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablequays = eductable [[1]]

cbirthres = cbind(crumpsall=ethnictablecrump,chettam=ethnictablechet,kersal=ethnictablekersal,quays=ethnictablequays,ancoats=etnictableancoats)
write.csv(cbirthres,file="D:\\PositStuff\\gmpanel\\CoBirthPanelwide.csv")


#How to reference this page:
#GB Historical GIS / University of Portsmouth, Manchester District through time | Historical Statistics on Birthplace & Religion | Country of Birth (3-way), A Vision of Britain through Time.
#URL: https://www.visionofbritain.org.uk/unit/10033007/cube/BIRTH_CNTRY_SML_AREA
#URL:"https://www.visionofbritain.org.uk/unit/13475556/cube/ETHNICITY_4WAY"
#Date accessed: 14th October 2026