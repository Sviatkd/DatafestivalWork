library(rvest)
library(tidyverse)
page = read_html("https://www.visionofbritain.org.uk/unit/13469155/cube/NS_SEC_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablechet = eductable [[1]]
#Might need to run multiple times to reestablish connection so recomend running it line by line#

page = read_html("https://www.visionofbritain.org.uk/unit/13438195/cube/NS_SEC_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablecrump = eductable [[1]]


page = read_html("https://www.visionofbritain.org.uk/unit/13502390/cube/NS_SEC_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
etnictableancoats = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13475556/cube/NS_SEC_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablekersal = eductable [[1]]

page = read_html("https://www.visionofbritain.org.uk/unit/13470170/cube/NS_SEC_4WAY")
eductable = page |> html_nodes("table") |> html_table() 
ethnictablequays = eductable [[1]]

ethnicres = cbind(crumpsall=ethnictablecrump,chettam=ethnictablechet,kersal=ethnictablekersal,quays=ethnictablequays,ancoats=etnictableancoats)
write.csv(ethnicres,file="D:\\PositStuff\\gmpanel\\EmploymentPanelwide.csv")

#GB Historical GIS / University of Portsmouth, Manchester District through time | Historical Statistics on Social Structure | NS Socio-economic Classification (4-way), A Vision of Britain through Time.

#URL: https://www.visionofbritain.org.uk/unit/10033007/cube/NS_SEC_4WAY

#Date accessed: 19th October 2026