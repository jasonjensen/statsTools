assignCowCodes <- function(data) {
data$cowcode <- 0
data$cowcode <- ifelse(data$country == 'Afghanistan' | data$country == 'Afghanistan, Islamic Republic of' ,700, data$cowcode)
data$cowcode <- ifelse(data$country == 'Albania' ,339, data$cowcode)
data$cowcode <- ifelse(data$country == 'Algeria' ,615, data$cowcode)
data$cowcode <- ifelse(data$country == 'Andorra' ,232, data$cowcode)
data$cowcode <- ifelse(data$country == 'Angola' ,540, data$cowcode)
data$cowcode <- ifelse(data$country == 'Antigua & Barbuda' | data$country == 'Antigua and Barbuda' | data$country == 'Antigua',58, data$cowcode)
data$cowcode <- ifelse(data$country == 'Argentina' ,160, data$cowcode)
data$cowcode <- ifelse(data$country == 'Armenia' | data$country == 'Armenia, Republic of' | data$country == 'Republic of Armenia',371, data$cowcode)
data$cowcode <- ifelse(data$country == 'Australia',900, data$cowcode)
data$cowcode <- ifelse(data$country == 'Austria' ,305, data$cowcode)
data$cowcode <- ifelse(data$country == 'Austria-Hungary' ,300, data$cowcode)
data$cowcode <- ifelse(data$country == 'Azerbaijan' | data$country == 'Azerbaijan, Republic of' | data$country == 'Republic of Azerbaijan' | data$country == 'Azerbajan',373, data$cowcode)
data$cowcode <- ifelse(data$country == 'Baden' ,267, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bahamas, The' | data$country == 'Bahamas' ,31, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bahrain' | data$country == 'Bahrain, Kingdom of',692, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bangladesh' ,771, data$cowcode)
data$cowcode <- ifelse(data$country == 'Barbados' | data$country == 'Barbados        ' ,53, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bavaria' ,245, data$cowcode)
data$cowcode <- ifelse(data$country == 'Belarus',370, data$cowcode)
data$cowcode <- ifelse(data$country == 'Belgium' ,211, data$cowcode)
data$cowcode <- ifelse(data$country == 'Belize' ,80, data$cowcode)
data$cowcode <- ifelse(data$country == 'Benin' ,434, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bhutan',760, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bolivia' | data$country == 'Bolivia (Plurinational State of)',145, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bosnia and Herzegovina' | data$country == 'Bosnia-Herz' | data$country == 'Bosnia' | data$country == 'Bosnia and Herzego' | data$country == 'Bosnia & Herzegovina' | data$country == 'Bosnia and Herzgegovina' | data$country == 'Bosnia-Herzegovina',346, data$cowcode)
data$cowcode <- ifelse(data$country == 'Botswana' ,571, data$cowcode)
data$cowcode <- ifelse(data$country == 'Brazil' ,140, data$cowcode)
data$cowcode <- ifelse(data$country == 'Brunei' | data$country == 'Brunei Darussalam' ,835, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bulgaria' ,355, data$cowcode)
data$cowcode <- ifelse(data$country == 'Burkina Faso' | data$country == 'Burkina-Faso',439, data$cowcode)
data$cowcode <- ifelse(data$country == 'Burundi' ,516, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cambodia',811, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cameroon' ,471, data$cowcode)
data$cowcode <- ifelse(data$country == 'Canada' ,20, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cape Verde' | data$country == 'Cape Verde Island' | data$country == 'C. Verde Is.' | data$country == 'Cabo Verde' ,402, data$cowcode)
data$cowcode <- ifelse(data$country == 'Central African Republic' | data$country == 'Central Afr. Rep.' | data$country == 'Cen. African Rep.' | data$country == 'Cent. Af. Rep.' | data$country == 'Central African Rep.' | data$country == 'Central African Re' | data$country == 'Central African Repub' | data$country == 'Central African Rep',482, data$cowcode)
data$cowcode <- ifelse(data$country == 'Chad' ,483, data$cowcode)
data$cowcode <- ifelse(data$country == 'Chile' ,155, data$cowcode)
data$cowcode <- ifelse(data$country == 'China' | data$country == 'PRC' | data$country == 'China, P.R.: Mainland' | data$country == 'China, P.R.' | data$country == 'China, Mainland',710, data$cowcode)
data$cowcode <- ifelse(data$country == 'Colombia' | data$country == 'Culombia' ,100, data$cowcode)
data$cowcode <- ifelse(data$country == 'Comoros' | data$country == 'Comoro Island' | data$country == 'Comoro Is.',581, data$cowcode)
data$cowcode <- ifelse(data$country == 'Congo, Rep.' | data$country == 'Congo' | data$country == 'Congo-Brazzaville' | data$country == 'Congo, Republic of' | data$country == 'Rep. of the Congo' | data$country == 'Rep. Of Congo' | data$country == 'Congo Brazzaville' | data$country == 'Congo, Republic of the' | data$country == 'Congo, Republic' | data$country == 'Congo. Republic' | data$country == 'Congo  Republic' | data$country == 'Congo Republic' | data$country == 'Congo (Brazzaville)' | data$country == 'Congo, Rep. Of' | data$country == 'Congo, Rep. of' | data$country == 'Republic of The Congo (Brazzaville)' | data$country == 'Congo, Rep' | data$country == 'Congo (Republic of the)',484, data$cowcode)
data$cowcode <- ifelse(data$country == 'Costa Rica' | data$country == 'Costarica',94, data$cowcode)
data$cowcode <- ifelse(data$country == 'Croatia',344, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cuba',40, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cyprus',352, data$cowcode)
data$cowcode <- ifelse(data$country == 'Czech Republic' | data$country == 'Czech Rep.' | data$country == 'Czechrep' | data$country == 'Czech Republik' | data$country == 'Czech Rep',316, data$cowcode)
data$cowcode <- ifelse(data$country == 'Czechoslovakia' ,315, data$cowcode)
data$cowcode <- ifelse(data$country == 'Denmark' | data$country == 'Denmark ',390, data$cowcode)
data$cowcode <- ifelse(data$country == 'Djibouti' ,522, data$cowcode)
data$cowcode <- ifelse(data$country == 'Dominica' | data$country == 'Commonwealth of Dominica',54, data$cowcode)
data$cowcode <- ifelse(data$country == 'Dominican Republic' | data$country == 'Dominican Rep' | data$country == 'Dom. Rep.' | data$country == 'Dominican Rep.',42, data$cowcode)
data$cowcode <- ifelse(data$country == 'East Timor' | data$country == 'Timor-Leste' | data$country == 'Timor Leste' | data$country == 'Timor-leste',860, data$cowcode)
data$cowcode <- ifelse(data$country == 'Ecuador' ,130, data$cowcode)
data$cowcode <- ifelse(data$country == 'Egypt, Arab Rep.' | data$country == 'Egypt' ,651, data$cowcode)
data$cowcode <- ifelse(data$country == 'El Salvador' | data$country == 'Salvador, El',92, data$cowcode)
data$cowcode <- ifelse(data$country == 'Equatorial Guinea' | data$country == 'Eq. Guinea' | data$country == 'Equatorial Guin',411, data$cowcode)
data$cowcode <- ifelse(data$country == 'Eritrea',531, data$cowcode)
data$cowcode <- ifelse(data$country == 'Estonia',366, data$cowcode)
data$cowcode <- ifelse(data$country == 'Ethiopia' ,530, data$cowcode)
data$cowcode <- ifelse(data$country == 'Federated States of Micronesia' | data$country == 'Micronesia, Fed. Sts.' | data$country == 'Micronesia (Federated States of)' | data$country == 'Micronesia, Federated States of' | data$country == 'Micronesia',987, data$cowcode)
data$cowcode <- ifelse(data$country == 'Fiji' ,950, data$cowcode)
data$cowcode <- ifelse(data$country == 'Finland' ,375, data$cowcode)
data$cowcode <- ifelse(data$country == 'France' ,220, data$cowcode)
data$cowcode <- ifelse(data$country == 'Gabon' ,481, data$cowcode)
data$cowcode <- ifelse(data$country == 'Gambia, The' | data$country == 'Gambia' ,420, data$cowcode)
data$cowcode <- ifelse(data$country == 'Georgia',372, data$cowcode)
data$cowcode <- ifelse(data$country == 'German Democratic Republic' | data$country == 'East Germany' | data$country =='GDR' | data$country == 'Germany East',265, data$cowcode)
data$cowcode <- ifelse(data$country == 'German Federal Republic' | data$country == 'FRG/Germany' | data$country == 'West Germany' | data$country == 'Germany West',260, data$cowcode)
data$cowcode <- ifelse(data$country == 'Germany' | data$country == 'Germany ',255, data$cowcode)
data$cowcode <- ifelse(data$country == 'Ghana' ,452, data$cowcode)
data$cowcode <- ifelse(data$country == 'Greece' ,350, data$cowcode)
data$cowcode <- ifelse(data$country == 'Grenada' ,55, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guatemala' ,90, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guinea' ,438, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guinea-Bissau' | data$country == 'Guinea-Bisau' | data$country == 'Guinea Bissau' ,404, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guyana' ,110, data$cowcode)
data$cowcode <- ifelse(data$country == 'Haiti' ,41, data$cowcode)
data$cowcode <- ifelse(data$country == 'Hanover',240, data$cowcode)
data$cowcode <- ifelse(data$country == 'Hesse Electoral',273, data$cowcode)
data$cowcode <- ifelse(data$country == 'Hesse Grand Ducal',275, data$cowcode)
data$cowcode <- ifelse(data$country == 'Honduras' | data$country == 'Honduras        ',91, data$cowcode)
data$cowcode <- ifelse(data$country == 'Hungary' ,310, data$cowcode)
data$cowcode <- ifelse(data$country == 'Iceland' ,395, data$cowcode)
data$cowcode <- ifelse(data$country == 'India' ,750, data$cowcode)
data$cowcode <- ifelse(data$country == 'Indonesia' | data$country == 'Indonesia       ',850, data$cowcode)
data$cowcode <- ifelse(data$country == 'Iran, Islamic Rep.' | data$country == 'Iran' | data$country == 'Iran, Islamic Republic of' | data$country == 'Iran (Islamic Republic of)' | data$country == 'Iran,IslamicRep.' | data$country == 'Iran, I.R. of',630, data$cowcode)
data$cowcode <- ifelse(data$country == 'Iraq' ,645, data$cowcode)
data$cowcode <- ifelse(data$country == 'Ireland' ,205, data$cowcode)
data$cowcode <- ifelse(data$country == 'Israel' ,666, data$cowcode)
data$cowcode <- ifelse(data$country == 'Italy' ,325, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cote d\'Ivoire' | data$country == 'Ivory Coast' | data$country == 'C�te d\'Ivoire' | data$country == 'Cote d�Ivoire' | data$country == 'Cote dIvoire' | data$country == 'Cote d\`Ivoire' | data$country == 'Cote D�Ivoire' | data$country == 'Cote D\`Ivoire' | data$country =='C�te-d\'Ivoire' | data$country == 'Cote d�Ivoire' | data$country == 'Cote d?Ivoire' | data$country == 'C�te-d\'Ivoire' | data$country == 'Cote d�Ivoire' | data$country == 'C�te d�Ivoire' | data$country == 'Cote D\'Ivoire' | data$country == 'Côte d’Ivoire' | data$country == 'Cote d Ivoire',437, data$cowcode)
data$cowcode <- ifelse(data$country == 'Côte d\'Ivoire',437, data$cowcode)
data$cowcode <- ifelse(data$country == 'Jamaica' ,51, data$cowcode)
data$cowcode <- ifelse(data$country == 'Japan' ,740, data$cowcode)
data$cowcode <- ifelse(data$country == 'Jordan' ,663, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kazakhstan',705, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kenya' | data$country == 'Kenya  ',501, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kiribati',946, data$cowcode)
data$cowcode <- ifelse(data$country == 'Korea',730, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kosovo',347, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kuwait' | data$country == 'Kuweit',690, data$cowcode)
data$cowcode <- ifelse(data$country == 'Kyrgyzstan' | data$country == 'Kyrgyz Republic' | data$country == 'Kyrgyz Rep',703, data$cowcode)
data$cowcode <- ifelse(data$country == 'Lao PDR' | data$country == 'Laos' | data$country == 'Lao People\'s Democratic Republic' | data$country == 'Lao People’s Dem. Rep.' | data$country == 'Lao People\'s Dem, Republic' | data$country == 'Lao People\'s Dem. Republic',812, data$cowcode)
data$cowcode <- ifelse(data$country == 'Latvia',367, data$cowcode)
data$cowcode <- ifelse(data$country == 'Lebanon',660, data$cowcode)
data$cowcode <- ifelse(data$country == 'Lesotho' ,570, data$cowcode)
data$cowcode <- ifelse(data$country == 'Liberia' ,450, data$cowcode)
data$cowcode <- ifelse(data$country == 'Libya' | data$country == 'Libyan Arab Jamahiriya',620, data$cowcode)
data$cowcode <- ifelse(data$country == 'Liechtenstein',223, data$cowcode)
data$cowcode <- ifelse(data$country == 'Lithuania',368, data$cowcode)
data$cowcode <- ifelse(data$country == 'Luxembourg' ,212, data$cowcode)
data$cowcode <- ifelse(data$country == 'Macedonia' | data$country == 'Macedonia, FYR' | data$country == 'Macedonia FYR' | data$country == 'Macedonia,FYR' | data$country == 'FYR Macedonia' | data$country == 'Macedonia (Former Yugoslav Republic of)' | data$country == 'Macedonia (FYR)' | data$country == 'The former Yugoslav Republic of Macedonia' | data$country == 'Macedonia, former Yugoslav Republic (1993-)',343, data$cowcode)
data$cowcode <- ifelse(data$country == 'Madagascar' ,580, data$cowcode)
data$cowcode <- ifelse(data$country == 'Malawi' ,553, data$cowcode)
data$cowcode <- ifelse(data$country == 'Malaysia' ,820, data$cowcode)
data$cowcode <- ifelse(data$country == 'Maldives',781, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mali' ,432, data$cowcode)
data$cowcode <- ifelse(data$country == 'Malta' ,338, data$cowcode)
data$cowcode <- ifelse(data$country == 'Marshall Islands',983, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mauritania' | data$country == 'Mauritania (1979)' ,435, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mauritius' ,590, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mecklenburg Schwerin',280, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mexico' ,70, data$cowcode)
data$cowcode <- ifelse(data$country == 'Modena',332, data$cowcode)
data$cowcode <- ifelse(data$country == 'Moldova' | data$country == 'Moldovia' | data$country == 'Republic of Moldova' | data$country == 'Moldovaa' | data$country == 'Moldova (Republic of)' | data$country == 'Moldova, Republic of',359, data$cowcode)
data$cowcode <- ifelse(data$country == 'Monaco',221, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mongolia' ,712, data$cowcode)
data$cowcode <- ifelse(data$country == 'Montenegro',341, data$cowcode)
data$cowcode <- ifelse(data$country == 'Morocco' ,600, data$cowcode)
data$cowcode <- ifelse(data$country == 'Mozambique' ,541, data$cowcode)
data$cowcode <- ifelse(data$country == 'Myanmar' | data$country == 'Burma' | data$country == 'Myanmar (Burma)',775, data$cowcode)
data$cowcode <- ifelse(data$country == 'Namibia',565, data$cowcode)
data$cowcode <- ifelse(data$country == 'Nauru',970, data$cowcode)
data$cowcode <- ifelse(data$country == 'Nepal' ,790, data$cowcode)
data$cowcode <- ifelse(data$country == 'Netherlands' ,210, data$cowcode)
data$cowcode <- ifelse(data$country == 'New Zealand' ,920, data$cowcode)
data$cowcode <- ifelse(data$country == 'Nicaragua' ,93, data$cowcode)
data$cowcode <- ifelse(data$country == 'Niger' ,436, data$cowcode)
data$cowcode <- ifelse(data$country == 'Nigeria' ,475, data$cowcode)
data$cowcode <- ifelse(data$country == 'North Korea' | data$country == 'Korea, Dem. Rep.' | data$country == 'Korea, North' | data$country == 'PRK' | data$country == 'Korea, Dem.Rep' | data$country == 'Korea North' | data$country == 'Korea (North)' | data$country == 'Korea (Democratic People\'s Rep. of)'| data$country == 'Korea, Dem. Rep. Of',731, data$cowcode)
data$cowcode <- ifelse(data$country == 'Norway' ,385, data$cowcode)
data$cowcode <- ifelse(data$country == 'Oman',698, data$cowcode)
data$cowcode <- ifelse(data$country == 'Pakistan' ,770, data$cowcode)
data$cowcode <- ifelse(data$country == 'Palau',986, data$cowcode)
data$cowcode <- ifelse(data$country == 'Panama' ,95, data$cowcode)
data$cowcode <- ifelse(data$country == 'Papal States',327, data$cowcode)
data$cowcode <- ifelse(data$country == 'Papua New Guinea' | data$country == 'P. N. Guinea' | data$country == 'Papua N.G.',910, data$cowcode)
data$cowcode <- ifelse(data$country == 'Paraguay' ,150, data$cowcode)
data$cowcode <- ifelse(data$country == 'Parma',335, data$cowcode)
data$cowcode <- ifelse(data$country == 'Peru' ,135, data$cowcode)
data$cowcode <- ifelse(data$country == 'Philippines' ,840, data$cowcode)
data$cowcode <- ifelse(data$country == 'Poland' ,290, data$cowcode)
data$cowcode <- ifelse(data$country == 'Portugal' ,235, data$cowcode)
data$cowcode <- ifelse(data$country == 'Qatar',694, data$cowcode)
data$cowcode <- ifelse(data$country == 'Qatar',694, data$cowcode)
data$cowcode <- ifelse(data$country == 'Republic of Vietnam' | data$country == 'Vietnam, South' | data$country == 'Vietnam-South' | data$country == 'South Vietnam' | data$country == 'Vietnam South',817, data$cowcode)
data$cowcode <- ifelse(data$country == 'Romania' | data$country == 'Rumania' ,360, data$cowcode)
data$cowcode <- ifelse(data$country == 'Rwanda' ,517, data$cowcode)
data$cowcode <- ifelse(data$country == 'Samoa' | data$country == 'Western Samoa' | data$country == 'Samoa, Western' | data$country == 'Samoa (Western)',990, data$cowcode)
data$cowcode <- ifelse(data$country == 'San Marino',331, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sao Tome and Principe' | data$country == 'SaoTome & Principe' | data$country == 'Sao Tome & Principe' | data$country == 'São Tomé and Principe' | data$country == 'S�o Tom� & Pr�ncipe',403, data$cowcode)
data$cowcode <- ifelse(data$country == 'Saudi Arabia',670, data$cowcode)
data$cowcode <- ifelse(data$country == 'Saxony',269, data$cowcode)
data$cowcode <- ifelse(data$country == 'Senegal' ,433, data$cowcode)
data$cowcode <- ifelse(data$country == 'Seychelles' | data$country == 'Seychelle' ,591, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sierra Leone' ,451, data$cowcode)
data$cowcode <- ifelse(data$country == 'Singapore' ,830, data$cowcode)
data$cowcode <- ifelse(data$country == 'Slovakia' | data$country == 'Slovak Republic' | data$country == 'Slovak Rep',317, data$cowcode)
data$cowcode <- ifelse(data$country == 'Slovenia' | data$country == 'Republic of Slovenia',349, data$cowcode)
data$cowcode <- ifelse(data$country == 'Solomon Islands' | data$country == 'Solomon Is.' ,940, data$cowcode)
data$cowcode <- ifelse(data$country == 'Somalia' ,520, data$cowcode)
data$cowcode <- ifelse(data$country == 'South Africa' | data$country == 'S. Africa',560, data$cowcode)
data$cowcode <- ifelse(data$country == 'Korea, Rep.' | data$country == 'South Korea' | data$country == 'Korea, South' | data$country == 'ROK' | data$country == 'Korea, Republic of' | data$country == 'Republic of Korea' | data$country == 'S. Korea' | data$country == 'Korea South' | data$country == 'South Korea ' | data$country == 'Korea (South)' | data$country == 'Korea (Republic of)' | data$country == 'Korea, Rep. Of',732, data$cowcode)
data$cowcode <- ifelse(data$country == 'Spain' ,230, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sri Lanka' | data$country == 'Sri Lanka (Ceylon)' ,780, data$cowcode)
data$cowcode <- ifelse(data$country == 'St. Kitts and Nevis' | data$country == 'St. Kitts & Nevis' | data$country == 'Saint Kitts and Nevis' | data$country == 'St. Kitts',60, data$cowcode)
data$cowcode <- ifelse(data$country == 'St. Lucia' | data$country == 'Saint Lucia',56, data$cowcode)
data$cowcode <- ifelse(data$country == 'St. Vincent and the Grenadines' | data$country == 'St. Vincent & Grenadines' | data$country == 'St.Vincent & Grenadines' | data$country == 'Saint Vincent and the Grenadines' | data$country == 'Saint Vincent and The Grenadines',57, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sudan' ,625, data$cowcode)
data$cowcode <- ifelse(data$country == 'Suriname' | data$country == 'Surinam' ,115, data$cowcode)
data$cowcode <- ifelse(data$country == 'Swaziland' ,572, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sweden' ,380, data$cowcode)
data$cowcode <- ifelse(data$country == 'Switzerland' ,225, data$cowcode)
data$cowcode <- ifelse(data$country == 'Syrian Arab Republic' | data$country == 'Syria' | data$country == 'Syrian Arab Rep' | data$country == 'Syria ',652, data$cowcode)
data$cowcode <- ifelse(data$country == 'Taiwan' | data$country == 'Taiwan, China' | data$country == 'Taiwan (China)',713, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tajikistan' | data$country == 'Taijikistan',702, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tanzania' | data$country == 'United Republic of Tanzania' | data$country == 'Tanzania (United Republic of)'| data$country == 'Tanzania (United Republic of)' | data$country == 'Tanzania, United Republic of',510, data$cowcode)
data$cowcode <- ifelse(data$country == 'Thailand' ,800, data$cowcode)
data$cowcode <- ifelse(data$country == 'Togo' ,461, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tonga',955, data$cowcode)
data$cowcode <- ifelse(data$country == 'Trinidad and Tobago' | data$country == 'Trinidad & Tobago' | data$country == 'Trinidad-Tobago' | data$country == 'Trinidad/Tobago' | data$country == 'Trinidad',52, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tunisia' | data$country == 'Tunesia',616, data$cowcode)
data$cowcode <- ifelse(data$country == 'Turkey' | data$country == 'Turkey/Ottoman Empire',640, data$cowcode)
data$cowcode <- ifelse(data$country == 'Turkmenistan',701, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tuscany',337, data$cowcode)
data$cowcode <- ifelse(data$country == 'Tuvalu',947, data$cowcode)
data$cowcode <- ifelse(data$country == 'Two Sicilies',329, data$cowcode)
data$cowcode <- ifelse(data$country == 'Russian Federation' | data$country == 'USSR' | data$country == 'Russia' | data$country == 'Soviet Union' | data$country == 'Russian Federat' | data$country == 'Ussr' | data$country == 'Russia (Soviet Union)' | data$country == 'Russia (USSR)' | data$country == 'USSR (Soviet Union)',365, data$cowcode)
data$cowcode <- ifelse(data$country == 'Uganda' ,500, data$cowcode)
data$cowcode <- ifelse(data$country == 'Ukraine',369, data$cowcode)
data$cowcode <- ifelse(data$country == 'United Arab Emirates' | data$country == 'UAE' | data$country == 'United Arab Emir',696, data$cowcode)
data$cowcode <- ifelse(data$country == 'United Kingdom' | data$country == 'UK' | data$country == 'Uk' | data$country == 'Unit.Kingd.' | data$country == 'Britain',200, data$cowcode)
data$cowcode <- ifelse(data$country == 'United States' | data$country == 'USA'  | data$country == 'United States of America' | data$country == 'Usa'| data$country == 'United States Of America',2, data$cowcode)
data$cowcode <- ifelse(data$country == 'Uruguay' ,165, data$cowcode)
data$cowcode <- ifelse(data$country == 'Uzbekistan',704, data$cowcode)
data$cowcode <- ifelse(data$country == 'Vanuatu' ,935, data$cowcode)
data$cowcode <- ifelse(data$country == 'Venezuela' | data$country == 'Venezuela, RB' | data$country == 'Venezuela, Republica Bolivariana de' | data$country == 'Venezuela, Rep' | data$country == 'Venezuela (Bolivarian Republic of)',101, data$cowcode)
data$cowcode <- ifelse(data$country == 'Vietnam' | data$country == 'Viet Nam' | data$country == 'North Vietnam' | data$country == 'Vietnam North',816, data$cowcode)
data$cowcode <- ifelse(data$country == 'Wuerttemburg',271, data$cowcode)
data$cowcode <- ifelse(data$country == 'Yemen Arab Republic' | data$country == 'Yemen, Rep.' | data$country == 'Yemen, North' | data$country == 'Yemen (AR)' | data$country == 'Yemen, Republic of'| data$country == 'Yemen AR' | data$country == 'Yemen North' | data$country == 'North Yemen' | data$country == 'North Yemen ',678, data$cowcode)
data$cowcode <- ifelse(data$country == 'Yemen' | data$country == 'Yemen ',679, data$cowcode)
data$cowcode <- ifelse(data$country == 'Yemen People\'s Republic' | data$country == 'Yemen, South' | data$country == 'Yemen (PDR)' | data$country == 'Yemen PDR' | data$country == 'Yemen South' | data$country == 'South Yemen' | data$country == 'Aden/South Yemen' | data$country == 'Yemen People\'S Republic',680, data$cowcode)
data$cowcode <- ifelse(data$country == 'Yugoslavia' | data$country == 'Yugoslavia, FR (Serbia/Montenegro)' | data$country == 'Serbia and Montenegro' | data$country == 'Yugoslavia, FR(S/M)' | data$country == 'Serbia & Montenegro' | data$country == 'Yugoslavia, SFR'| data$country == 'Yugoslavia, FR/Union of Serbia and Montenegro' | data$country == 'Yugoslavia, SFR (1943-1992)',345, data$cowcode)
data$cowcode <- ifelse(data$country == 'Zaire' | data$country == 'Congo, Dem. Rep.' | data$country == 'Democratic Republic of the Congo' | data$country == 'Dem. Rep. Congo' | data$country == 'Congo-Kinshasa' | data$country == 'Congo (DRC)' | data$country == 'Congo, Democratic Republic of' | data$country == 'Dem. Rep. of the Congo'| data$country == 'Dem. Rep. of Congo (Zaire)' | data$country == 'Congo, Dem. Republic' | data$country == 'Congo Kinshasa' | data$country == 'Democratic Republic of Congo (Zaire) ' | data$country == 'Congo, Democratic Republic' | data$country == 'Congo. Democratic Republic' | data$country == 'Democratic Republic of Congo' | data$country == 'Democratic Republic of the Congo ' | data$country == 'Congo (Democratic Republic of the)' | data$country == 'Congo, Dem. Rep. Of (Zaire)' | data$country == 'Congo, Dem. Rep. of' | data$country == 'Congo, Dem Rep',490, data$cowcode)
data$cowcode <- ifelse(data$country == 'Zambia' ,551, data$cowcode)
data$cowcode <- ifelse(data$country == 'Zanzibar',511, data$cowcode)
data$cowcode <- ifelse(data$country == 'Zimbabwe' | data$country == 'Zimbabwe (Rhodesia)',552, data$cowcode)
data$cowcode <- ifelse(data$country == 'Hong Kong' | data$country == 'Hong Kong SAR, China' | data$country == 'China, P.R.: Hong Kong' | data$country == 'China, Hong Kong Special Administrative Region'| data$country == 'Hong Kong,China' | data$country == 'Hong Kong SAR' | data$country == 'Hong Kong, China (SAR)',715, data$cowcode)
data$cowcode <- ifelse(data$country == 'Macao' | data$country == 'Macao SAR, China' | data$country == 'China, P.R.: Macao' | data$country == 'China, Macao Special Administrative Region' | data$country == 'Macau',716, data$cowcode)



#WDI countries
data$cowcode <- ifelse(data$country == 'American Samoa',1001, data$cowcode)
data$cowcode <- ifelse(data$country == 'Aruba',1002, data$cowcode)
data$cowcode <- ifelse(data$country == 'Bermuda',1003, data$cowcode)
data$cowcode <- ifelse(data$country == 'Cayman Islands',1004, data$cowcode)
data$cowcode <- ifelse(data$country == 'Channel Islands',1005, data$cowcode)
data$cowcode <- ifelse(data$country == 'Curacao',1006, data$cowcode)
data$cowcode <- ifelse(data$country == 'Faeroe Islands',1007, data$cowcode)
data$cowcode <- ifelse(data$country == 'French Polynesia',1008, data$cowcode)
data$cowcode <- ifelse(data$country == 'Greenland',1009, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guam',1010, data$cowcode)
data$cowcode <- ifelse(data$country == 'Isle of Man',1011, data$cowcode)
data$cowcode <- ifelse(data$country == 'New Caledonia',1012, data$cowcode)
data$cowcode <- ifelse(data$country == 'Northern Mariana Islands',1013, data$cowcode)
data$cowcode <- ifelse(data$country == 'Puerto Rico',1014, data$cowcode)
data$cowcode <- ifelse(data$country == 'Serbia' | data$country == 'Serbia, Republic of' | data$country == 'Yugoslavia (Serbia)',1015, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sint Maarten (Dutch part)',1016, data$cowcode)
data$cowcode <- ifelse(data$country == 'St. Martin (French part)',1017, data$cowcode)
data$cowcode <- ifelse(data$country == 'Turks and Caicos Islands',1018, data$cowcode)
data$cowcode <- ifelse(data$country == 'Virgin Islands (U.S.)',1019, data$cowcode)
data$cowcode <- ifelse(data$country == 'West Bank and Gaza' | data$country == 'Palestine' | data$country == 'Palestinian Authority' | data$country == 'Palestine, State of' | data$country == 'Palestinian Territory, Occupied',1020, data$cowcode)
data$cowcode <- ifelse(data$country == 'South Sudan',1021, data$cowcode)



#WDI geographic areas
data$cowcode <- ifelse(data$country == 'East Asia & Pacific (all income levels)',2010, data$cowcode)
data$cowcode <- ifelse(data$country == 'East Asia & Pacific (developing only)',2011, data$cowcode)
data$cowcode <- ifelse(data$country == 'East Asia and the Pacific (IFC classification)',2012, data$cowcode)
data$cowcode <- ifelse(data$country == 'Europe & Central Asia (all income levels)',2020, data$cowcode)
data$cowcode <- ifelse(data$country == 'Europe & Central Asia (developing only)',2021, data$cowcode)
data$cowcode <- ifelse(data$country == 'Europe and Central Asia (IFC classification)',2022, data$cowcode)
data$cowcode <- ifelse(data$country == 'Latin America & Caribbean (all income levels)',2030, data$cowcode)
data$cowcode <- ifelse(data$country == 'Latin America & Caribbean (developing only)',2031, data$cowcode)
data$cowcode <- ifelse(data$country == 'Latin America and the Caribbean (IFC classification)',2032, data$cowcode)
data$cowcode <- ifelse(data$country == 'Middle East & North Africa (all income levels)',2040, data$cowcode)
data$cowcode <- ifelse(data$country == 'Middle East & North Africa (developing only)',2041, data$cowcode)
data$cowcode <- ifelse(data$country == 'Middle East and North Africa (IFC classification)',2042, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sub-Saharan Africa (all income levels)',2050, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sub-Saharan Africa (developing only)',2051, data$cowcode)
data$cowcode <- ifelse(data$country == 'Sub-Saharan Africa (IFC classification)',2052, data$cowcode)
data$cowcode <- ifelse(data$country == 'North America',2060, data$cowcode)
data$cowcode <- ifelse(data$country == 'European Union',2070, data$cowcode)
data$cowcode <- ifelse(data$country == 'Euro area',2071, data$cowcode)
data$cowcode <- ifelse(data$country == 'OECD members',2072, data$cowcode)
data$cowcode <- ifelse(data$country == 'Arab World',2080, data$cowcode)
data$cowcode <- ifelse(data$country == 'South Asia',2085, data$cowcode)
data$cowcode <- ifelse(data$country == 'South Asia (IFC classification)',2086, data$cowcode)
data$cowcode <- ifelse(data$country == 'Small states',2090, data$cowcode)
data$cowcode <- ifelse(data$country == 'Pacific island small states',2091, data$cowcode)
data$cowcode <- ifelse(data$country == 'Caribbean small states',2092, data$cowcode)
data$cowcode <- ifelse(data$country == 'Other small states',2093, data$cowcode)
data$cowcode <- ifelse(data$country == 'World',2099, data$cowcode)
data$cowcode <- ifelse(data$country == 'Not classified',2100, data$cowcode)


#WDI income groups
data$cowcode <- ifelse(data$country == 'Heavily indebted poor countries (HIPC)',3001, data$cowcode)
data$cowcode <- ifelse(data$country == 'Least developed countries: UN classification',3002, data$cowcode)
data$cowcode <- ifelse(data$country == 'Low income',3003, data$cowcode)
data$cowcode <- ifelse(data$country == 'Lower middle income',3004, data$cowcode)
data$cowcode <- ifelse(data$country == 'Low & middle income',3005, data$cowcode)
data$cowcode <- ifelse(data$country == 'Middle income',3006, data$cowcode)
data$cowcode <- ifelse(data$country == 'Upper middle income',3007, data$cowcode)
data$cowcode <- ifelse(data$country == 'High income',3008, data$cowcode)
data$cowcode <- ifelse(data$country == 'High income: OECD',3009, data$cowcode)
data$cowcode <- ifelse(data$country == 'High income: nonOECD',3010, data$cowcode)

#AMECO aggregates
data$cowcode <- ifelse(data$country == 'EA12 (12 countries)',2101, data$cowcode)
data$cowcode <- ifelse(data$country == 'EA12 (including D_W West-Germany)',2102, data$cowcode)
data$cowcode <- ifelse(data$country == 'EA17 (17 countries)',2103, data$cowcode)
data$cowcode <- ifelse(data$country == 'EU12 (12 New Member States)',2104, data$cowcode)
data$cowcode <- ifelse(data$country == 'EU15 (15 countries)',2105, data$cowcode)
data$cowcode <- ifelse(data$country == 'EU15 (including D_W West-Germany)',2106, data$cowcode)
data$cowcode <- ifelse(data$country == 'EU27 (27 countries)',2107, data$cowcode)
data$cowcode <- ifelse(data$country == 'Euro area (12 countries)',2108, data$cowcode)
data$cowcode <- ifelse(data$country == 'Euro area (17 countries)',2109, data$cowcode)
data$cowcode <- ifelse(data$country == 'European Union (15 countries)',2110, data$cowcode)
data$cowcode <- ifelse(data$country == 'European Union (27 countries)',2111, data$cowcode)
data$cowcode <- ifelse(data$country == 'European Union (28 countries)',2112, data$cowcode)
data$cowcode <- ifelse(data$country == 'linked Germany)',255, data$cowcode)

#GSF additions
data$cowcode <- ifelse(data$country == 'Anguilla',1022, data$cowcode)
data$cowcode <- ifelse(data$country == 'Netherlands Antilles',1023, data$cowcode)

#Barro * Lee additions
data$cowcode <- ifelse(data$country == 'Reunion' | data$country == 'R?nion',1024, data$cowcode)

#All the Ginis additions
data$cowcode <- ifelse(data$country == 'French Guiana',1025, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guadeloupe',1026, data$cowcode)

#Institute for Democracy And Electoral Assistance additions
data$cowcode <- ifelse(data$country == 'Cook Islands',1027, data$cowcode)
data$cowcode <- ifelse(data$country == 'Faroe Islands',1028, data$cowcode)
data$cowcode <- ifelse(data$country == 'Gibraltar',1029, data$cowcode)
data$cowcode <- ifelse(data$country == 'Montserrat',1030, data$cowcode)
data$cowcode <- ifelse(data$country == 'Virgin Islands, British' | data$country == "British Virgin Islands" | data$country == 'British Virgin Islands, The' ,1031, data$cowcode)

#Banking Regulations and Supervision additions
data$cowcode <- ifelse(data$country == 'Jersey',1032, data$cowcode)
data$cowcode <- ifelse(data$country == 'Guernsey',1033, data$cowcode)


return(data)
}

