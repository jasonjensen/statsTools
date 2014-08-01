#delimit;

		gen cowcode = . ;
		replace cowcode = 700 if country == "Afghanistan" | country == "Afghanistan, Islamic Republic of" ;
		replace cowcode = 339 if country == "Albania" ;
		replace cowcode = 615 if country == "Algeria" ;
		replace cowcode = 232 if country == "Andorra" ;
		replace cowcode = 540 if country == "Angola" ;
		replace cowcode =	58	if country == "Antigua & Barbuda" | country == "Antigua and Barbuda" | country == "Antigua";
		replace cowcode = 160 if country == "Argentina" ;
		replace cowcode = 371 if country == "Armenia" | country == "Armenia, Republic of" | country == "Republic of Armenia";
		replace cowcode = 900 if country == "Australia";
		replace cowcode = 305 if country == "Austria" ;
		replace cowcode = 300 if country == "Austria-Hungary" ;
		replace cowcode = 373 if country == "Azerbaijan" | country == "Azerbaijan, Republic of" | country == "Republic of Azerbaijan";
		replace cowcode = 267 if country == "Baden" ;
		replace cowcode = 31 if country == "Bahamas, The" | country == "Bahamas" ;
		replace cowcode = 692 if country == "Bahrain" | country == "Bahrain, Kingdom of";
		replace cowcode = 771 if country == "Bangladesh" ;
		replace cowcode = 53 if country == "Barbados" | country == "Barbados        " ;
		replace cowcode = 245 if country == "Bavaria" ;
		replace cowcode =	370	if country == "Belarus";
		replace cowcode = 211 if country == "Belgium" ;
		replace cowcode = 80 if country == "Belize" ;
		replace cowcode = 434 if country == "Benin" ;
		replace cowcode =	760	if country == "Bhutan";	
		replace cowcode = 145 if country == "Bolivia" | country == "Bolivia (Plurinational State of)";
		replace cowcode =	346	if country == "Bosnia and Herzegovina" | country == "Bosnia-Herz" | country == "Bosnia" | country == "Bosnia and Herzego" | country == "Bosnia & Herzegovina" | country == "Bosnia and Herzgegovina"  | country == "Bosnia-Herzegovina";		
		replace cowcode = 571 if country == "Botswana" ;
		replace cowcode = 140 if country == "Brazil" ;
		replace cowcode =	835	if country == "Brunei" | country == "Brunei Darussalam" ;	
		replace cowcode = 355 if country == "Bulgaria" ;
		replace cowcode = 439 if country == "Burkina Faso" | country == "Burkina-Faso";
		replace cowcode = 516 if country == "Burundi" ;
		replace cowcode =	811	if country == "Cambodia";	
		replace cowcode = 471 if country == "Cameroon" ;
		replace cowcode = 20 if country == "Canada" ;
		replace cowcode = 402 if country == "Cape Verde" | country == "Cape Verde Island" | country == "C. Verde Is." | country == "Cabo Verde" ;
		replace cowcode = 482 if country == "Central African Republic" | country == "Central Afr. Rep." | country == "Cen. African Rep." | country == "Cent. Af. Rep."
							   | country == "Central African Rep." | country == "Central African Re";
		replace cowcode = 483 if country == "Chad" ;
		replace cowcode = 155 if country == "Chile" ;
		replace cowcode = 710 if country == "China" | country == "PRC" | country == "China, P.R.: Mainland";
		replace cowcode = 100 if country == "Colombia" | country == "Culombia" ;
		replace cowcode = 581 if country == "Comoros" | country == "Comoro Island" | country == "Comoro Is.";
		replace cowcode = 484 if country == "Congo, Rep." | country == "Congo" | country == "Congo-Brazzaville" | country == "Congo, Republic of" | country == "Rep. of the Congo"
							   | country == "Rep. Of Congo" | country == "Congo Brazzaville" | country == "Congo, Republic of the" | country == "Congo, Republic" | country == "Congo. Republic"
							   | country == "Congo  Republic" | country == "Congo Republic" | country == "Congo (Brazzaville)" | country == "Congo, Rep. Of";
		replace cowcode = 94 if country == "Costa Rica" | country == "Costarica";
		replace cowcode =	344	if country == "Croatia";	
		replace cowcode =	40	if country == "Cuba";	
		replace cowcode =	352	if country == "Cyprus";	
		replace cowcode =	316	if country == "Czech Republic" | country == "Czech Rep." | country == "Czechrep" | country == "Czech Republik";
		replace cowcode = 315 if country == "Czechoslovakia" ;
		replace cowcode = 390 if country == "Denmark" | country == "Denmark ";
		replace cowcode = 522 if country == "Djibouti" ;
		replace cowcode =	54	if country == "Dominica";
		replace cowcode = 42 if country == "Dominican Republic" | country == "Dominican Rep" | country == "Dom. Rep." | country == "Dominican Rep.";
		replace cowcode =	860	if country == "East Timor" | country == "Timor-Leste" | country == "Timor Leste" | country == "Timor-leste";
		replace cowcode = 130 if country == "Ecuador" ;
		replace cowcode = 651 if country == "Egypt, Arab Rep." | country == "Egypt" ;
		replace cowcode = 92 if country == "El Salvador" ;
		replace cowcode =	411	if country == "Equatorial Guinea" | country == "Eq. Guinea" | country == "Equatorial Guin";
		replace cowcode =	531	if country == "Eritrea";		
		replace cowcode =	366	if country == "Estonia";		
		replace cowcode = 530 if country == "Ethiopia" ;
		replace cowcode =	987	if country == "Federated States of Micronesia" | country == "Micronesia, Fed. Sts." |country == "Micronesia (Federated States of)";
		replace cowcode = 950 if country == "Fiji" ;
		replace cowcode = 375 if country == "Finland" ;
		replace cowcode = 220 if country == "France" ;
		replace cowcode = 481 if country == "Gabon" ;
		replace cowcode = 420 if country == "Gambia, The" | country == "Gambia" ;
		replace cowcode =	372	if country == "Georgia";
		replace cowcode =	265	if country == "German Democratic Republic" | country == "East Germany" | country =="GDR" | country == "Germany East";		
		replace cowcode =	260	if country == "German Federal Republic" | country == "FRG/Germany" | country == "West Germany" | country == "Germany West";		
		replace cowcode = 255 if country == "Germany" | country == "Germany ";
		replace cowcode = 452 if country == "Ghana" ;
		replace cowcode = 350 if country == "Greece" ;
		replace cowcode = 55 if country == "Grenada" ;
		replace cowcode = 90 if country == "Guatemala" ;
		replace cowcode = 438 if country == "Guinea" ;
		replace cowcode = 404 if country == "Guinea-Bissau" | country == "Guinea-Bisau" ;
		replace cowcode = 110 if country == "Guyana" ;
		replace cowcode = 41 if country == "Haiti" ;
		replace cowcode =	240	if country == "Hanover";
		replace cowcode =	273	if country == "Hesse Electoral";		
		replace cowcode =	275	if country == "Hesse Grand Ducal";		
		replace cowcode = 91 if country == "Honduras" | country == "Honduras        ";
		replace cowcode = 310 if country == "Hungary" ;
		replace cowcode = 395 if country == "Iceland" ;
		replace cowcode = 750 if country == "India" ;
		replace cowcode = 850 if country == "Indonesia" | country == "Indonesia       ";
		replace cowcode = 630 if country == "Iran, Islamic Rep." | country == "Iran" | country == "Iran, Islamic Republic of" | country == "Iran (Islamic Republic of)" | country == "Iran,IslamicRep.";
		replace cowcode = 645 if country == "Iraq" ;
		replace cowcode = 205 if country == "Ireland" ;
		replace cowcode = 666 if country == "Israel" ;
		replace cowcode = 325 if country == "Italy" ;
		replace cowcode = 437 if country == "Cote d'Ivoire" | country == "Ivory Coast" | country == "Côte d'Ivoire" | country == "Cote d´Ivoire" | country == "Cote dIvoire"
							   | country == "Cote d\`Ivoire" | country == "Cote D’Ivoire" | country == "Cote D\`Ivoire" | country =="Côte-d\'Ivoire" | country == "Cote d´Ivoire" | country == "Cote d?Ivoire"
							   | country == "Côte-d\'Ivoire" | country == "Cote d´Ivoire" | country == "Côte d´Ivoire" | country == "CÃ´te d'Ivoire" | country == "Cote D'Ivoire";
		replace cowcode = 51 if country == "Jamaica" ;
		replace cowcode = 740 if country == "Japan" ;
		replace cowcode = 663 if country == "Jordan" ;
		replace cowcode =	705	if country == "Kazakhstan";	
		replace cowcode = 501 if country == "Kenya" | country == "Kenya  ";
		replace cowcode =	946	if country == "Kiribati";		
		replace cowcode =	730	if country == "Korea";		
		replace cowcode =	347	if country == "Kosovo";		
		replace cowcode =	690	if country == "Kuwait" | country == "Kuweit";		
		replace cowcode =	703	if country == "Kyrgyzstan" | country == "Kyrgyz Republic" | country == "Kyrgyz Rep";		
		replace cowcode = 812 if country == "Lao PDR" | country == "Laos" | country == "Lao People's Democratic Republic";
		replace cowcode =	367	if country == "Latvia";		
		replace cowcode =	660	if country == "Lebanon";		
		replace cowcode = 570 if country == "Lesotho" ;
		replace cowcode = 450 if country == "Liberia" ;
		replace cowcode = 620 if country == "Libya" | country == "Libyan Arab Jamahiriya";
		replace cowcode =	223	if country == "Liechtenstein";	
		replace cowcode =	368	if country == "Lithuania";
		replace cowcode = 212 if country == "Luxembourg" ;
		replace cowcode =	343	if country == "Macedonia" | country == "Macedonia, FYR" | country == "Macedonia FYR" | country == "Macedonia,FYR" | country == "FYR Macedonia" | country == "Macedonia (Former Yugoslav Republic of)"
								 | country == "Macedonia (FYR)" | country == "The former Yugoslav Republic of Macedonia";
		replace cowcode = 580 if country == "Madagascar" ;
		replace cowcode = 553 if country == "Malawi" ;
		replace cowcode = 820 if country == "Malaysia" ;
		replace cowcode =	781	if country == "Maldives";
		replace cowcode = 432 if country == "Mali" ;
		replace cowcode = 338 if country == "Malta" ;
		replace cowcode =	983	if country == "Marshall Islands";
		replace cowcode = 435 if country == "Mauritania" | country == "Mauritania (1979)" ;
		replace cowcode = 590 if country == "Mauritius" ;
		replace cowcode =	280	if country == "Mecklenburg Schwerin";	
		replace cowcode = 70 if country == "Mexico" ;
		replace cowcode =	332	if country == "Modena";		
		replace cowcode =	359	if country == "Moldova" | country == "Moldovia" | country == "Republic of Moldova" | country == "Moldovaa" | country == "Moldova (Republic of)";		
		replace cowcode =	221	if country == "Monaco";		
		replace cowcode = 712 if country == "Mongolia" ;
		replace cowcode =	341	if country == "Montenegro";
		replace cowcode = 600 if country == "Morocco" ;
		replace cowcode = 541 if country == "Mozambique" ;
		replace cowcode = 775 if country == "Myanmar" | country == "Burma" | country == "Myanmar (Burma)";
		replace cowcode =	565	if country == "Namibia";		
		replace cowcode =	970	if country == "Nauru";		
		replace cowcode = 790 if country == "Nepal" ;
		replace cowcode = 210 if country == "Netherlands" ;
		replace cowcode = 920 if country == "New Zealand" ;
		replace cowcode = 93 if country == "Nicaragua" ;
		replace cowcode = 436 if country == "Niger" ;
		replace cowcode = 475 if country == "Nigeria" ;
		replace cowcode =	731	if country == "North Korea" | country == "Korea, Dem. Rep." | country == "Korea, North" | country == "PRK" | country == "Korea, Dem.Rep" | country == "Korea North" 
								 | country == "Korea (North)" | country == "Korea (Democratic People's Rep. of)" | country == "Korea, Dem. Rep. Of";
		replace cowcode = 385 if country == "Norway" ;
		replace cowcode =	698	if country == "Oman";
		replace cowcode = 770 if country == "Pakistan" ;
		replace cowcode =	986	if country == "Palau";	
		replace cowcode = 95 if country == "Panama" ;
		replace cowcode =	327	if country == "Papal States";		
		replace cowcode = 910 if country == "Papua New Guinea" | country == "P. N. Guinea" | country == "Papua N.G.";
		replace cowcode = 150 if country == "Paraguay" ;
		replace cowcode =	335	if country == "Parma";
		replace cowcode = 135 if country == "Peru" ;
		replace cowcode = 840 if country == "Philippines" ;
		replace cowcode = 290 if country == "Poland" ;
		replace cowcode = 235 if country == "Portugal" ;
		replace cowcode =	694	if country == "Qatar";	
		replace cowcode =	694	if country == "Qatar";	
		replace cowcode =	817	if country == "Republic of Vietnam" | country == "Vietnam, South" | country == "Vietnam-South" | country == "South Vietnam" | country == "Vietnam South";
		replace cowcode = 360 if country == "Romania" | country == "Rumania" ;
		replace cowcode = 517 if country == "Rwanda" ;
		replace cowcode =	990	if country == "Samoa" | country == "Western Samoa";		
		replace cowcode =	331	if country == "San Marino";		
		replace cowcode =	403	if country == "Sao Tome and Principe" | country == "SaoTome & Principe" | country == "Sao Tome & Principe";		
		replace cowcode =	670	if country == "Saudi Arabia";		
		replace cowcode =	269	if country == "Saxony";		
		replace cowcode = 433 if country == "Senegal" ;
		replace cowcode = 591 if country == "Seychelles" | country == "Seychelle" ;
		replace cowcode = 451 if country == "Sierra Leone" ;
		replace cowcode = 830 if country == "Singapore" ;
		replace cowcode =	317	if country == "Slovakia" | country == "Slovak Republic";		
		replace cowcode =	349	if country == "Slovenia" | country == "Republic of Slovenia";		
		replace cowcode = 940 if country == "Solomon Islands" | country == "Solomon Is." ;
		replace cowcode = 520 if country == "Somalia" ;
		replace cowcode = 560 if country == "South Africa" | country == "S. Africa";
		replace cowcode = 732 if country == "Korea, Rep." | country == "South Korea" | country == "Korea, South" | country == "ROK" | country == "Korea, Republic of" 
							   | country == "Republic of Korea" | country == "S. Korea" | country == "Korea South" | country == "South Korea " | country == "Korea (South)"
							   | country == "Korea (Republic of)" | country == "Korea, Rep. Of";
		replace cowcode = 230 if country == "Spain" ;
		replace cowcode = 780 if country == "Sri Lanka" | country == "Sri Lanka (Ceylon)" ;
		replace cowcode =	60	if country == "St. Kitts and Nevis" | country == "St. Kitts & Nevis" | country == "Saint Kitts and Nevis";		
		replace cowcode =	56	if country == "St. Lucia" | country == "Saint Lucia";		
		replace cowcode =	57	if country == "St. Vincent and the Grenadines" | country == "St. Vincent & Grenadines" | country == "St.Vincent & Grenadines" | country == "Saint Vincent and the Grenadines";		
		replace cowcode = 625 if country == "Sudan" ;
		replace cowcode = 115 if country == "Suriname" | country == "Surinam" ;
		replace cowcode = 572 if country == "Swaziland" ;
		replace cowcode = 380 if country == "Sweden" ;
		replace cowcode = 225 if country == "Switzerland" ;
		replace cowcode = 652 if country == "Syrian Arab Republic" | country == "Syria" | country == "Syrian Arab Rep" | country == "Syria ";
		replace cowcode = 713 if country == "Taiwan" | country == "Taiwan, China" ;
		replace cowcode =	702	if country == "Tajikistan" | country == "Taijikistan";
		replace cowcode = 510 if country == "Tanzania" | country == "United Republic of Tanzania" | country == "Tanzania (United Republic of)";
		replace cowcode = 800 if country == "Thailand" ;
		replace cowcode = 461 if country == "Togo" ;
		replace cowcode =	955	if country == "Tonga";		
		replace cowcode = 52 if country == "Trinidad and Tobago" | country == "Trinidad & Tobago" | country == "Trinidad-Tobago" | country == "Trinidad/Tobago";
		replace cowcode = 616 if country == "Tunisia" | country == "Tunesia";
		replace cowcode = 640 if country == "Turkey" | country == "Turkey/Ottoman Empire";
		replace cowcode =	701	if country == "Turkmenistan";	
		replace cowcode =	337	if country == "Tuscany";		
		replace cowcode =	947	if country == "Tuvalu";		
		replace cowcode =	329	if country == "Two Sicilies";			
		replace cowcode = 365 if country == "Russian Federation" | country == "USSR" | country == "Russia" | country == "Soviet Union" | country == "Russian Federat" | country == "Ussr" | country == "Russia (Soviet Union)"
							   | country == "Russia (USSR)";
		replace cowcode = 500 if country == "Uganda" ;
		replace cowcode =	369	if country == "Ukraine";
		replace cowcode =	696	if country == "United Arab Emirates" | country == "UAE" | country == "United Arab Emir";
		replace cowcode = 200 if country == "United Kingdom" | country == "UK" | country == "Uk" | country == "Unit.Kingd.";
		replace cowcode = 2 if country == "United States" | country == "USA"  | country == "United States of America" | country == "Usa" | country == "United States Of America";
		replace cowcode = 165 if country == "Uruguay" ;
		replace cowcode =	704	if country == "Uzbekistan";
		replace cowcode = 935 if country == "Vanuatu" ;
		replace cowcode = 101 if country == "Venezuela" | country == "Venezuela, RB" | country == "Venezuela, Republica Bolivariana de" | country == "Venezuela, Rep" | country == "Venezuela (Bolivarian Republic of)";
		replace cowcode =	816	if country == "Vietnam" | country == "Viet Nam" | country == "North Vietnam" | country == "Vietnam North";
		replace cowcode =	271	if country == "Wuerttemburg";	
		replace cowcode = 678 if country == "Yemen Arab Republic" | country == "Yemen, Rep." | country == "Yemen, North" | country == "Yemen (AR)" | country == "Yemen, Republic of"
							   | country == "Yemen AR" | country == "Yemen North" | country == "North Yemen" | country == "North Yemen ";
		replace cowcode =	679	if country == "Yemen" | country == "Yemen ";		
		replace cowcode =	680	if country == "Yemen People's Republic" | country == "Yemen, South" | country == "Yemen (PDR)" | country == "Yemen PDR" | country == "Yemen South" | country == "South Yemen" 
							     | country == "Aden/South Yemen" | country == "Yemen People'S Republic";
		replace cowcode = 345 if country == "Yugoslavia" | country == "Yugoslavia, FR (Serbia/Montenegro)" | country == "Serbia and Montenegro" | country == "Yugoslavia, FR(S/M)" | country == "Serbia & Montenegro";
		replace cowcode = 490 if country == "Zaire" | country == "Congo, Dem. Rep." | country == "Democratic Republic of the Congo" | country == "Dem. Rep. Congo" 
							   | country == "Congo-Kinshasa" | country == "Congo (DRC)" | country == "Congo, Democratic Republic of" | country == "Dem. Rep. of the Congo"
							   | country == "Dem. Rep. of Congo (Zaire)" | country == "Congo, Dem. Republic" | country == "Congo Kinshasa" | country == "Democratic Republic of Congo (Zaire) "
							   | country == "Congo, Democratic Republic" | country == "Congo. Democratic Republic" | country == "Democratic Republic of Congo" | country == "Democratic Republic of the Congo "
							   | country == "Congo (Democratic Republic of the)" | country == "Congo, Dem. Rep. Of (Zaire)";
		replace cowcode = 551 if country == "Zambia" ;
		replace cowcode =	511	if country == "Zanzibar";		
		replace cowcode =	552	if country == "Zimbabwe" | country == "Zimbabwe (Rhodesia)";	
		replace cowcode = 715 if country == "Hong Kong" | country == "Hong Kong SAR, China" | country == "China, P.R.: Hong Kong" | country == "China, Hong Kong Special Administrative Region"
							   | country == "Hong Kong,China" | country == "Hong Kong SAR" | country == "Hong Kong, China (SAR)";
		replace cowcode = 716 if country == "Macao" | country == "Macao SAR, China" | country == "China, P.R.: Macao" | country == "China, Macao Special Administrative Region" | country == "Macau";
		


		/*WDI countries*/
		replace cowcode = 1001 if country == "American Samoa";
		replace cowcode = 1002 if country == "Aruba";
		replace cowcode = 1003 if country == "Bermuda";
		replace cowcode = 1004 if country == "Cayman Islands";
		replace cowcode = 1005 if country == "Channel Islands";
		replace cowcode = 1006 if country == "Curacao";
		replace cowcode = 1007 if country == "Faeroe Islands";
		replace cowcode = 1008 if country == "French Polynesia";
		replace cowcode = 1009 if country == "Greenland";
		replace cowcode = 1010 if country == "Guam";
		replace cowcode = 1011 if country == "Isle of Man";
		replace cowcode = 1012 if country == "New Caledonia";
		replace cowcode = 1013 if country == "Northern Mariana Islands";
		replace cowcode = 1014 if country == "Puerto Rico";
		replace cowcode = 1015 if country == "Serbia" | country == "Serbia, Republic of" | country == "Yugoslavia (Serbia)";
		replace cowcode = 1016 if country == "Sint Maarten (Dutch part)";
		replace cowcode = 1017 if country == "St. Martin (French part)";
		replace cowcode = 1018 if country == "Turks and Caicos Islands";
		replace cowcode = 1019 if country == "Virgin Islands (U.S.)";
		replace cowcode = 1020 if country == "West Bank and Gaza" | country == "Palestine" | country == "Palestinian Authority" | country == "Palestine, State of";
		replace cowcode = 1021 if country == "South Sudan";
		
		
		
		/*WDI geographic areas*/
		replace cowcode = 2010 if country == "East Asia & Pacific (all income levels)";
		replace cowcode = 2011 if country == "East Asia & Pacific (developing only)";
		replace cowcode = 2012 if country == "East Asia and the Pacific (IFC classification)";
		replace cowcode = 2020 if country == "Europe & Central Asia (all income levels)";
		replace cowcode = 2021 if country == "Europe & Central Asia (developing only)";
		replace cowcode = 2022 if country == "Europe and Central Asia (IFC classification)";
		replace cowcode = 2030 if country == "Latin America & Caribbean (all income levels)";
		replace cowcode = 2031 if country == "Latin America & Caribbean (developing only)";
		replace cowcode = 2032 if country == "Latin America and the Caribbean (IFC classification)";
		replace cowcode = 2040 if country == "Middle East & North Africa (all income levels)";
		replace cowcode = 2041 if country == "Middle East & North Africa (developing only)";
		replace cowcode = 2042 if country == "Middle East and North Africa (IFC classification)";
		replace cowcode = 2050 if country == "Sub-Saharan Africa (all income levels)";
		replace cowcode = 2051 if country == "Sub-Saharan Africa (developing only)";
		replace cowcode = 2052 if country == "Sub-Saharan Africa (IFC classification)";
		replace cowcode = 2060 if country == "North America";
		replace cowcode = 2070 if country == "European Union";
		replace cowcode = 2071 if country == "Euro area";
		replace cowcode = 2072 if country == "OECD members";
		replace cowcode = 2080 if country == "Arab World";
		replace cowcode = 2085 if country == "South Asia";
		replace cowcode = 2086 if country == "South Asia (IFC classification)";
		replace cowcode = 2090 if country == "Small states";
		replace cowcode = 2091 if country == "Pacific island small states";
		replace cowcode = 2092 if country == "Caribbean small states";
		replace cowcode = 2093 if country == "Other small states";
		replace cowcode = 2099 if country == "World";
		replace cowcode = 2100 if country == "Not classified";
		
		
		/*WDI income groups*/
		replace cowcode = 3001 if country == "Heavily indebted poor countries (HIPC)";
		replace cowcode = 3002 if country == "Least developed countries: UN classification";
		replace cowcode = 3003 if country == "Low income";
		replace cowcode = 3004 if country == "Lower middle income";
		replace cowcode = 3005 if country == "Low & middle income";
		replace cowcode = 3006 if country == "Middle income";
		replace cowcode = 3007 if country == "Upper middle income";
		replace cowcode = 3008 if country == "High income";
		replace cowcode = 3009 if country == "High income: OECD";
		replace cowcode = 3010 if country == "High income: nonOECD";
		
		/*AMECO aggregates*/
		replace cowcode = 2101 if country == "EA12 (12 countries)";
		replace cowcode = 2102 if country == "EA12 (including D_W West-Germany)";
		replace cowcode = 2103 if country == "EA17 (17 countries)";
		replace cowcode = 2104 if country == "EU12 (12 New Member States)";
		replace cowcode = 2105 if country == "EU15 (15 countries)";
		replace cowcode = 2106 if country == "EU15 (including D_W West-Germany)";
		replace cowcode = 2107 if country == "EU27 (27 countries)";
		replace cowcode = 2108 if country == "Euro area (12 countries)";
		replace cowcode = 2109 if country == "Euro area (17 countries)";
		replace cowcode = 2110 if country == "European Union (15 countries)";
		replace cowcode = 2111 if country == "European Union (27 countries)";
		replace cowcode = 2112 if country == "European Union (28 countries)";
		replace cowcode = 255  if country == "linked Germany)";
		
		/*GSF additions*/
		replace cowcode = 1022  if country == "Anguilla";
		replace cowcode = 1023  if country == "Netherlands Antilles";
		
		/*Barro * Lee additions*/
		replace cowcode = 1024 if country == "Reunion" | country == "R?nion";
		
		/*All the Ginis additions*/
		replace cowcode = 1025 if country == "French Guiana";
		replace cowcode = 1026 if country == "Guadeloupe";
		
		
		