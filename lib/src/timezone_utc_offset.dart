import 'lat_lng_to_timezone.dart';

/// get the UTC time offset from  a timezone name
Duration? getTimezoneUTCOffset(String timezone, {bool daylight = false}) {
  final offsets = _timezoneUTCOffsets[timezone];
  if (offsets == null) return null;
  return Duration(seconds: daylight ? offsets[1] : offsets[0]);
}

/// get time UTC offset for a timezone from GPS coordinates
Duration? getTimezoneUTCOffsetFromGPS(num lat, num lng, {bool daylight = false}) {
  final timezone = latLngToTimezoneString(lat, lng);
  return getTimezoneUTCOffset(timezone, daylight: daylight);
}

/// timezone UTC offsets
const Map<String, List<int>> _timezoneUTCOffsets = {
  "Africa/Abidjan": [0, 0],
  "Africa/Accra": [0, 0],
  "Africa/Addis_Ababa": [10800, 10800],
  "Africa/Algiers": [3600, 3600],
  "Africa/Asmara": [10800, 10800],
  "Africa/Asmera": [10800, 10800],
  "Africa/Bamako": [0, 0],
  "Africa/Bangui": [3600, 3600],
  "Africa/Banjul": [0, 0],
  "Africa/Bissau": [0, 0],
  "Africa/Blantyre": [7200, 7200],
  "Africa/Brazzaville": [3600, 3600],
  "Africa/Bujumbura": [7200, 7200],
  "Africa/Cairo": [7200, 7200],
  "Africa/Casablanca": [0, 3600],
  "Africa/Ceuta": [3600, 7200],
  "Africa/Conakry": [0, 0],
  "Africa/Dakar": [0, 0],
  "Africa/Dar_es_Salaam": [10800, 10800],
  "Africa/Djibouti": [10800, 10800],
  "Africa/Douala": [3600, 3600],
  "Africa/El_Aaiun": [0, 3600],
  "Africa/Freetown": [0, 0],
  "Africa/Gaborone": [7200, 7200],
  "Africa/Harare": [7200, 7200],
  "Africa/Johannesburg": [7200, 7200],
  "Africa/Juba": [10800, 10800],
  "Africa/Kampala": [10800, 10800],
  "Africa/Khartoum": [10800, 10800],
  "Africa/Kigali": [7200, 7200],
  "Africa/Kinshasa": [3600, 3600],
  "Africa/Lagos": [3600, 3600],
  "Africa/Libreville": [3600, 3600],
  "Africa/Lome": [0, 0],
  "Africa/Luanda": [3600, 3600],
  "Africa/Lubumbashi": [7200, 7200],
  "Africa/Lusaka": [7200, 7200],
  "Africa/Malabo": [3600, 3600],
  "Africa/Maputo": [7200, 7200],
  "Africa/Maseru": [7200, 7200],
  "Africa/Mbabane": [7200, 7200],
  "Africa/Mogadishu": [10800, 10800],
  "Africa/Monrovia": [0, 0],
  "Africa/Nairobi": [10800, 10800],
  "Africa/Ndjamena": [3600, 3600],
  "Africa/Niamey": [3600, 3600],
  "Africa/Nouakchott": [0, 0],
  "Africa/Ouagadougou": [0, 0],
  "Africa/Porto-Novo": [3600, 3600],
  "Africa/Sao_Tome": [0, 0],
  "Africa/Timbuktu": [0, 0],
  "Africa/Tripoli": [7200, 7200],
  "Africa/Tunis": [3600, 3600],
  "Africa/Windhoek": [3600, 7200],
  "America/Adak": [-36000, -32400],
  "America/Anchorage": [-32400, -28800],
  "America/Anguilla": [-14400, -14400],
  "America/Antigua": [-14400, -14400],
  "America/Araguaina": [-10800, -10800],
  "America/Argentina/Buenos_Aires": [-10800, -10800],
  "America/Argentina/Catamarca": [-10800, -10800],
  "America/Argentina/ComodRivadavia": [-10800, -10800],
  "America/Argentina/Cordoba": [-10800, -10800],
  "America/Argentina/Jujuy": [-10800, -10800],
  "America/Argentina/La_Rioja": [-10800, -10800],
  "America/Argentina/Mendoza": [-10800, -10800],
  "America/Argentina/Rio_Gallegos": [-10800, -10800],
  "America/Argentina/Salta": [-10800, -10800],
  "America/Argentina/San_Juan": [-10800, -10800],
  "America/Argentina/San_Luis": [-10800, -10800],
  "America/Argentina/Tucuman": [-10800, -10800],
  "America/Argentina/Ushuaia": [-10800, -10800],
  "America/Aruba": [-14400, -14400],
  "America/Asuncion": [-10800, -10800],
  "America/Atikokan": [-18000, -18000],
  "America/Atka": [-36000, -32400],
  "America/Bahia": [-10800, -10800],
  "America/Bahia_Banderas": [-21600, -18000],
  "America/Barbados": [-14400, -14400],
  "America/Belem": [-10800, -10800],
  "America/Belize": [-21600, -21600],
  "America/Blanc-Sablon": [-14400, -14400],
  "America/Boa_Vista": [-14400, -14400],
  "America/Bogota": [-18000, -18000],
  "America/Boise": [-25200, -21600],
  "America/Buenos_Aires": [-10800, -10800],
  "America/Cambridge_Bay": [-25200, -21600],
  "America/Campo_Grande": [-14400, -10800],
  "America/Cancun": [-18000, -18000],
  "America/Caracas": [-16200, -16200],
  "America/Catamarca": [-10800, -10800],
  "America/Cayenne": [-10800, -10800],
  "America/Cayman": [-18000, -18000],
  "America/Chicago": [-21600, -18000],
  "America/Chihuahua": [-25200, -21600],
  "America/Coral_Harbour": [-18000, -18000],
  "America/Cordoba": [-10800, -10800],
  "America/Costa_Rica": [-21600, -21600],
  "America/Creston": [-25200, -25200],
  "America/Cuiaba": [-14400, -10800],
  "America/Curacao": [-14400, -14400],
  "America/Danmarkshavn": [0, 0],
  "America/Dawson": [-28800, -25200],
  "America/Dawson_Creek": [-25200, -25200],
  "America/Denver": [-25200, -21600],
  "America/Detroit": [-18000, -14400],
  "America/Dominica": [-14400, -14400],
  "America/Edmonton": [-25200, -21600],
  "America/Eirunepe": [-18000, -18000],
  "America/El_Salvador": [-21600, -21600],
  "America/Ensenada": [-28800, -25200],
  "America/Fort_Nelson": [-25200, -25200],
  "America/Fort_Wayne": [-18000, -14400],
  "America/Fortaleza": [-10800, -10800],
  "America/Glace_Bay": [-14400, -10800],
  "America/Godthab": [-10800, -7200],
  "America/Goose_Bay": [-14400, -10800],
  "America/Grand_Turk": [-14400, -14400],
  "America/Grenada": [-14400, -14400],
  "America/Guadeloupe": [-14400, -14400],
  "America/Guatemala": [-21600, -21600],
  "America/Guayaquil": [-18000, -18000],
  "America/Guyana": [-14400, -14400],
  "America/Halifax": [-14400, -10800],
  "America/Havana": [-18000, -14400],
  "America/Hermosillo": [-25200, -25200],
  "America/Indiana/Indianapolis": [-18000, -14400],
  "America/Indiana/Knox": [-21600, -18000],
  "America/Indiana/Marengo": [-18000, -14400],
  "America/Indiana/Petersburg": [-18000, -14400],
  "America/Indiana/Tell_City": [-21600, -18000],
  "America/Indiana/Vevay": [-18000, -14400],
  "America/Indiana/Vincennes": [-18000, -14400],
  "America/Indiana/Winamac": [-18000, -14400],
  "America/Indianapolis": [-18000, -14400],
  "America/Inuvik": [-25200, -21600],
  "America/Iqaluit": [-18000, -14400],
  "America/Jamaica": [-18000, -18000],
  "America/Jujuy": [-10800, -10800],
  "America/Juneau": [-32400, -28800],
  "America/Kentucky/Louisville": [-18000, -14400],
  "America/Kentucky/Monticello": [-18000, -14400],
  "America/Knox_IN": [-21600, -18000],
  "America/Kralendijk": [-14400, -14400],
  "America/La_Paz": [-14400, -14400],
  "America/Lima": [-18000, -18000],
  "America/Los_Angeles": [-28800, -25200],
  "America/Louisville": [-18000, -14400],
  "America/Lower_Princes": [-14400, -14400],
  "America/Maceio": [-10800, -10800],
  "America/Managua": [-21600, -21600],
  "America/Manaus": [-14400, -14400],
  "America/Marigot": [-14400, -14400],
  "America/Martinique": [-14400, -14400],
  "America/Matamoros": [-21600, -18000],
  "America/Mazatlan": [-25200, -21600],
  "America/Mendoza": [-10800, -10800],
  "America/Menominee": [-21600, -18000],
  "America/Merida": [-21600, -18000],
  "America/Metlakatla": [-28800, -28800],
  "America/Mexico_City": [-21600, -18000],
  "America/Miquelon": [-10800, -7200],
  "America/Moncton": [-14400, -10800],
  "America/Monterrey": [-21600, -18000],
  "America/Montevideo": [-10800, -7200],
  "America/Montreal": [-18000, -14400],
  "America/Montserrat": [-14400, -14400],
  "America/Nassau": [-18000, -14400],
  "America/New_York": [-18000, -14400],
  "America/Nipigon": [-18000, -14400],
  "America/Nome": [-32400, -28800],
  "America/Noronha": [-7200, -7200],
  "America/North_Dakota/Beulah": [-21600, -18000],
  "America/North_Dakota/Center": [-21600, -18000],
  "America/North_Dakota/New_Salem": [-21600, -18000],
  "America/Ojinaga": [-25200, -21600],
  "America/Panama": [-18000, -18000],
  "America/Pangnirtung": [-18000, -14400],
  "America/Paramaribo": [-10800, -10800],
  "America/Phoenix": [-25200, -25200],
  "America/Port-au-Prince": [-18000, -14400],
  "America/Port_of_Spain": [-14400, -14400],
  "America/Porto_Acre": [-18000, -18000],
  "America/Porto_Velho": [-14400, -14400],
  "America/Puerto_Rico": [-14400, -14400],
  "America/Punta_Arenas": [-10800, -10800],
  "America/Rainy_River": [-21600, -18000],
  "America/Rankin_Inlet": [-21600, -18000],
  "America/Recife": [-10800, -10800],
  "America/Regina": [-21600, -21600],
  "America/Resolute": [-21600, -18000],
  "America/Rio_Branco": [-18000, -18000],
  "America/Rosario": [-10800, -10800],
  "America/Santa_Isabel": [-28800, -25200],
  "America/Santarem": [-10800, -10800],
  "America/Santiago": [-10800, -10800],
  "America/Santo_Domingo": [-14400, -14400],
  "America/Sao_Paulo": [-10800, -7200],
  "America/Scoresbysund": [-3600, 0],
  "America/Shiprock": [-25200, -21600],
  "America/Sitka": [-32400, -28800],
  "America/St_Barthelemy": [-14400, -14400],
  "America/St_Johns": [-12600, -9000],
  "America/St_Kitts": [-14400, -14400],
  "America/St_Lucia": [-14400, -14400],
  "America/St_Thomas": [-14400, -14400],
  "America/St_Vincent": [-14400, -14400],
  "America/Swift_Current": [-21600, -21600],
  "America/Tegucigalpa": [-21600, -21600],
  "America/Thule": [-14400, -10800],
  "America/Thunder_Bay": [-18000, -14400],
  "America/Tijuana": [-28800, -25200],
  "America/Toronto": [-18000, -14400],
  "America/Tortola": [-14400, -14400],
  "America/Vancouver": [-28800, -25200],
  "America/Virgin": [-14400, -14400],
  "America/Whitehorse": [-28800, -25200],
  "America/Winnipeg": [-21600, -18000],
  "America/Yakutat": [-32400, -28800],
  "America/Yellowknife": [-25200, -21600],
  "Antarctica/Casey": [28800, 28800],
  "Antarctica/Davis": [25200, 25200],
  "Antarctica/DumontDUrville": [36000, 36000],
  "Antarctica/Macquarie": [39600, 39600],
  "Antarctica/Mawson": [18000, 18000],
  "Antarctica/McMurdo": [43200, 46800],
  "Antarctica/Palmer": [-10800, -10800],
  "Antarctica/Rothera": [-10800, -10800],
  "Antarctica/South_Pole": [43200, 46800],
  "Antarctica/Syowa": [10800, 10800],
  "Antarctica/Troll": [0, 7200],
  "Antarctica/Vostok": [21600, 21600],
  "Arctic/Longyearbyen": [3600, 7200],
  "Asia/Aden": [10800, 10800],
  "Asia/Almaty": [21600, 21600],
  "Asia/Amman": [7200, 10800],
  "Asia/Anadyr": [43200, 43200],
  "Asia/Aqtau": [18000, 18000],
  "Asia/Aqtobe": [18000, 18000],
  "Asia/Ashgabat": [18000, 18000],
  "Asia/Ashkhabad": [18000, 18000],
  "Asia/Atyrau": [18000,18000],
  "Asia/Baghdad": [10800, 10800],
  "Asia/Bahrain": [10800, 10800],
  "Asia/Baku": [14400, 18000],
  "Asia/Bangkok": [25200, 25200],
  "Asia/Barnaul": [25200, 25200],
  "Asia/Beirut": [7200, 10800],
  "Asia/Bishkek": [21600, 21600],
  "Asia/Brunei": [28800, 28800],
  "Asia/Calcutta": [19800, 19800],
  "Asia/Chita": [28800, 28800],
  "Asia/Choibalsan": [28800, 32400],
  "Asia/Chongqing": [28800, 28800],
  "Asia/Chungking": [28800, 28800],
  "Asia/Colombo": [19800, 19800],
  "Asia/Dacca": [21600, 21600],
  "Asia/Damascus": [7200, 10800],
  "Asia/Dhaka": [21600, 21600],
  "Asia/Dili": [32400, 32400],
  "Asia/Dubai": [14400, 14400],
  "Asia/Dushanbe": [18000, 18000],
  "Asia/Famagusta": [7200, 10800],
  "Asia/Gaza": [7200, 10800],
  "Asia/Harbin": [28800, 28800],
  "Asia/Hebron": [7200, 10800],
  "Asia/Ho_Chi_Minh": [25200, 25200],
  "Asia/Hong_Kong": [28800, 28800],
  "Asia/Hovd": [25200, 28800],
  "Asia/Irkutsk": [28800, 28800],
  "Asia/Istanbul": [7200, 10800],
  "Asia/Jakarta": [25200, 25200],
  "Asia/Jayapura": [32400, 32400],
  "Asia/Jerusalem": [7200, 10800],
  "Asia/Kabul": [16200, 16200],
  "Asia/Kamchatka": [43200, 43200],
  "Asia/Karachi": [18000, 18000],
  "Asia/Kashgar": [21600, 21600],
  "Asia/Kathmandu": [20700, 20700],
  "Asia/Katmandu": [20700, 20700],
  "Asia/Khandyga": [32400, 32400],
  "Asia/Kolkata": [19800, 19800],
  "Asia/Krasnoyarsk": [25200, 25200],
  "Asia/Kuala_Lumpur": [28800, 28800],
  "Asia/Kuching": [28800, 28800],
  "Asia/Kuwait": [10800, 10800],
  "Asia/Macao": [28800, 28800],
  "Asia/Macau": [28800, 28800],
  "Asia/Magadan": [36000, 36000],
  "Asia/Makassar": [28800, 28800],
  "Asia/Manila": [28800, 28800],
  "Asia/Muscat": [14400, 14400],
  "Asia/Nicosia": [7200, 10800],
  "Asia/Novokuznetsk": [25200, 25200],
  "Asia/Novosibirsk": [21600, 21600],
  "Asia/Omsk": [21600, 21600],
  "Asia/Oral": [18000, 18000],
  "Asia/Phnom_Penh": [25200, 25200],
  "Asia/Pontianak": [25200, 25200],
  "Asia/Pyongyang": [30600, 30600],
  "Asia/Qatar": [10800, 10800],
  "Asia/Qostanay": [21600, 21600],
  "Asia/Qyzylorda": [21600, 21600],
  "Asia/Rangoon": [23400, 23400],
  "Asia/Riyadh": [10800, 10800],
  "Asia/Riyadh87": [10800, 10800],
  "Asia/Riyadh88": [10800, 10800],
  "Asia/Riyadh89": [10800, 10800],
  "Asia/Saigon": [25200, 25200],
  "Asia/Sakhalin": [36000, 36000],
  "Asia/Samarkand": [18000, 18000],
  "Asia/Seoul": [32400, 32400],
  "Asia/Shanghai": [28800, 28800],
  "Asia/Singapore": [28800, 28800],
  "Asia/Srednekolymsk": [39600, 39600],
  "Asia/Taipei": [28800, 28800],
  "Asia/Tashkent": [18000, 18000],
  "Asia/Tbilisi": [14400, 14400],
  "Asia/Tehran": [12600, 16200],
  "Asia/Tel_Aviv": [7200, 10800],
  "Asia/Thimbu": [21600, 21600],
  "Asia/Thimphu": [21600, 21600],
  "Asia/Tokyo": [32400, 32400],
  "Asia/Tomsk": [25200, 25200],
  "Asia/Ujung_Pandang": [28800, 28800],
  "Asia/Ulaanbaatar": [28800, 32400],
  "Asia/Ulan_Bator": [28800, 32400],
  "Asia/Urumqi": [21600, 21600],
  "Asia/Ust-Nera": [36000, 36000],
  "Asia/Vientiane": [25200, 25200],
  "Asia/Vladivostok": [36000, 36000],
  "Asia/Yakutsk": [32400, 32400],
  "Asia/Yekaterinburg": [18000, 18000],
  "Asia/Yangon": [23400, 23400],
  "Asia/Yerevan": [14400, 14400],
  "Atlantic/Azores": [-3600, 0],
  "Atlantic/Bermuda": [-14400, -10800],
  "Atlantic/Canary": [0, 3600],
  "Atlantic/Cape_Verde": [-3600, -3600],
  "Atlantic/Faeroe": [0, 3600],
  "Atlantic/Faroe": [0, 3600],
  "Atlantic/Jan_Mayen": [3600, 7200],
  "Atlantic/Madeira": [0, 3600],
  "Atlantic/Reykjavik": [0, 0],
  "Atlantic/South_Georgia": [-7200, -7200],
  "Atlantic/St_Helena": [0, 0],
  "Atlantic/Stanley": [-10800, -10800],
  "Australia/ACT": [36000, 39600],
  "Australia/Adelaide": [34200, 37800],
  "Australia/Brisbane": [36000, 36000],
  "Australia/Broken_Hill": [34200, 37800],
  "Australia/Canberra": [36000, 39600],
  "Australia/Currie": [36000, 39600],
  "Australia/Darwin": [34200, 34200],
  "Australia/Eucla": [31500, 31500],
  "Australia/Hobart": [36000, 39600],
  "Australia/LHI": [37800, 39600],
  "Australia/Lindeman": [36000, 36000],
  "Australia/Lord_Howe": [37800, 39600],
  "Australia/Melbourne": [36000, 39600],
  "Australia/NSW": [36000, 39600],
  "Australia/North": [34200, 34200],
  "Australia/Perth": [28800, 28800],
  "Australia/Queensland": [36000, 36000],
  "Australia/South": [34200, 37800],
  "Australia/Sydney": [36000, 39600],
  "Australia/Tasmania": [36000, 39600],
  "Australia/Victoria": [36000, 39600],
  "Australia/West": [28800, 28800],
  "Australia/Yancowinna": [34200, 37800],
  "Brazil/Acre": [-18000, -18000],
  "Brazil/DeNoronha": [-7200, -7200],
  "Brazil/East": [-10800, -7200],
  "Brazil/West": [-14400, -14400],
  "CET": [3600, 7200],
  "CST6CDT": [-21600, -18000],
  "Canada/Atlantic": [-14400, -10800],
  "Canada/Central": [-21600, -18000],
  "Canada/East-Saskatchewan": [-21600, -21600],
  "Canada/Eastern": [-18000, -14400],
  "Canada/Mountain": [-25200, -21600],
  "Canada/Newfoundland": [-12600, -9000],
  "Canada/Pacific": [-28800, -25200],
  "Canada/Saskatchewan": [-21600, -21600],
  "Canada/Yukon": [-28800, -25200],
  "Chile/Continental": [-10800, -10800],
  "Chile/EasterIsland": [-18000, -18000],
  "Cuba": [-18000, -14400],
  "EET": [7200, 10800],
  "EST": [-18000, -18000],
  "EST5EDT": [-18000, -14400],
  "Egypt": [7200, 7200],
  "Eire": [0, 3600],
  "Etc/GMT": [0, 0],
  "Etc/GMT+0": [0, 0],
  "Etc/GMT+1": [-3600, -3600],
  "Etc/GMT+10": [-36000, -36000],
  "Etc/GMT+11": [-39600, -39600],
  "Etc/GMT+12": [-43200, -43200],
  "Etc/GMT+2": [-7200, -7200],
  "Etc/GMT+3": [-10800, -10800],
  "Etc/GMT+4": [-14400, -14400],
  "Etc/GMT+5": [-18000, -18000],
  "Etc/GMT+6": [-21600, -21600],
  "Etc/GMT+7": [-25200, -25200],
  "Etc/GMT+8": [-28800, -28800],
  "Etc/GMT+9": [-32400, -32400],
  "Etc/GMT-0": [0, 0],
  "Etc/GMT-1": [3600, 3600],
  "Etc/GMT-10": [36000, 36000],
  "Etc/GMT-11": [39600, 39600],
  "Etc/GMT-12": [43200, 43200],
  "Etc/GMT-13": [46800, 46800],
  "Etc/GMT-14": [50400, 50400],
  "Etc/GMT-2": [7200, 7200],
  "Etc/GMT-3": [10800, 10800],
  "Etc/GMT-4": [14400, 14400],
  "Etc/GMT-5": [18000, 18000],
  "Etc/GMT-6": [21600, 21600],
  "Etc/GMT-7": [25200, 25200],
  "Etc/GMT-8": [28800, 28800],
  "Etc/GMT-9": [32400, 32400],
  "Etc/GMT0": [0, 0],
  "Etc/Greenwich": [0, 0],
  "Etc/UCT": [0, 0],
  "Etc/UTC": [0, 0],
  "Etc/Universal": [0, 0],
  "Etc/Zulu": [0, 0],
  "Europe/Amsterdam": [3600, 7200],
  "Europe/Andorra": [3600, 7200],
  "Europe/Astrakhan": [14400, 14400],
  "Europe/Athens": [7200, 10800],
  "Europe/Belfast": [0, 3600],
  "Europe/Belgrade": [3600, 7200],
  "Europe/Berlin": [3600, 7200],
  "Europe/Bratislava": [3600, 7200],
  "Europe/Brussels": [3600, 7200],
  "Europe/Bucharest": [7200, 10800],
  "Europe/Budapest": [3600, 7200],
  "Europe/Busingen": [3600, 7200],
  "Europe/Chisinau": [7200, 10800],
  "Europe/Copenhagen": [3600, 7200],
  "Europe/Dublin": [0, 3600],
  "Europe/Gibraltar": [3600, 7200],
  "Europe/Guernsey": [0, 3600],
  "Europe/Helsinki": [7200, 10800],
  "Europe/Isle_of_Man": [0, 3600],
  "Europe/Istanbul": [7200, 10800],
  "Europe/Jersey": [0, 3600],
  "Europe/Kaliningrad": [7200, 10800],
  "Europe/Kiev": [7200, 10800],
  "Europe/Kirov": [10800, 10800],
  "Europe/Lisbon": [0, 3600],
  "Europe/Ljubljana": [3600, 7200],
  "Europe/London": [0, 3600],
  "Europe/Luxembourg": [3600, 7200],
  "Europe/Madrid": [3600, 7200],
  "Europe/Malta": [3600, 7200],
  "Europe/Mariehamn": [7200, 10800],
  "Europe/Minsk": [10800, 10800],
  "Europe/Monaco": [3600, 7200],
  "Europe/Moscow": [10800, 10800],
  "Europe/Nicosia": [7200, 10800],
  "Europe/Oslo": [3600, 7200],
  "Europe/Paris": [3600, 7200],
  "Europe/Podgorica": [3600, 7200],
  "Europe/Prague": [3600, 7200],
  "Europe/Riga": [7200, 10800],
  "Europe/Rome": [3600, 7200],
  "Europe/Samara": [14400, 14400],
  "Europe/San_Marino": [3600, 7200],
  "Europe/Sarajevo": [3600, 7200],
  "Europe/Saratov": [14400, 14400],
  "Europe/Simferopol": [7200, 10800],
  "Europe/Skopje": [3600, 7200],
  "Europe/Sofia": [7200, 10800],
  "Europe/Stockholm": [3600, 7200],
  "Europe/Tallinn": [7200, 10800],
  "Europe/Tirane": [3600, 7200],
  "Europe/Tiraspol": [7200, 10800],
  "Europe/Ulyanovsk": [14400, 14400],
  "Europe/Uzhgorod": [7200, 10800],
  "Europe/Vaduz": [3600, 7200],
  "Europe/Vatican": [3600, 7200],
  "Europe/Vienna": [3600, 7200],
  "Europe/Vilnius": [7200, 10800],
  "Europe/Volgograd": [10800, 10800],
  "Europe/Warsaw": [3600, 7200],
  "Europe/Zagreb": [3600, 7200],
  "Europe/Zaporozhye": [7200, 10800],
  "Europe/Zurich": [3600, 7200],
  "Factory": [0, 0],
  "GB": [0, 3600],
  "GB-Eire": [0, 3600],
  "GMT": [0, 0],
  "GMT+0": [0, 0],
  "GMT-0": [0, 0],
  "GMT0": [0, 0],
  "Greenwich": [0, 0],
  "HST": [-36000, -36000],
  "Hongkong": [28800, 28800],
  "Iceland": [0, 0],
  "Indian/Antananarivo": [10800, 10800],
  "Indian/Chagos": [21600, 21600],
  "Indian/Christmas": [25200, 25200],
  "Indian/Cocos": [23400, 23400],
  "Indian/Comoro": [10800, 10800],
  "Indian/Kerguelen": [18000, 18000],
  "Indian/Mahe": [14400, 14400],
  "Indian/Maldives": [18000, 18000],
  "Indian/Mauritius": [14400, 14400],
  "Indian/Mayotte": [10800, 10800],
  "Indian/Reunion": [14400, 14400],
  "Iran": [12600, 16200],
  "Israel": [7200, 10800],
  "Jamaica": [-18000, -18000],
  "Japan": [32400, 32400],
  "Kwajalein": [43200, 43200],
  "Libya": [7200, 7200],
  "MET": [3600, 7200],
  "MST": [-25200, -25200],
  "MST7MDT": [-25200, -21600],
  "Mexico/BajaNorte": [-28800, -25200],
  "Mexico/BajaSur": [-25200, -21600],
  "Mexico/General": [-21600, -18000],
  "Mideast/Riyadh87": [0, 0],
  "Mideast/Riyadh88": [0, 0],
  "Mideast/Riyadh89": [0, 0],
  "NZ": [43200, 46800],
  "NZ-CHAT": [45900, 49500],
  "Navajo": [0, 0],
  "PRC": [0, 0],
  "PST8PDT": [0, 0],
  "Pacific/Apia": [46800, 50400],
  "Pacific/Auckland": [43200, 46800],
  "Pacific/Bougainville": [39600, 39600],
  "Pacific/Chatham": [45900, 49500],
  "Pacific/Chuuk": [36000, 36000],
  "Pacific/Easter": [-18000, -18000],
  "Pacific/Efate": [39600, 39600],
  "Pacific/Enderbury": [46800, 46800],
  "Pacific/Fakaofo": [46800, 46800],
  "Pacific/Fiji": [43200, 46800],
  "Pacific/Funafuti": [43200, 43200],
  "Pacific/Galapagos": [-21600, -21600],
  "Pacific/Gambier": [-32400, -32400],
  "Pacific/Guadalcanal": [39600, 39600],
  "Pacific/Guam": [36000, 36000],
  "Pacific/Honolulu": [-36000, -36000],
  "Pacific/Johnston": [-36000, -36000],
  "Pacific/Kiritimati": [50400, 50400],
  "Pacific/Kosrae": [39600, 39600],
  "Pacific/Kwajalein": [43200, 43200],
  "Pacific/Majuro": [43200, 43200],
  "Pacific/Marquesas": [-34200, -34200],
  "Pacific/Midway": [-39600, -39600],
  "Pacific/Nauru": [43200, 43200],
  "Pacific/Niue": [-39600, -39600],
  "Pacific/Norfolk": [39600, 39600],
  "Pacific/Noumea": [39600, 39600],
  "Pacific/Pago_Pago": [-39600, -39600],
  "Pacific/Palau": [32400, 32400],
  "Pacific/Pitcairn": [-28800, -28800],
  "Pacific/Pohnpei": [39600, 39600],
  "Pacific/Ponape": [39600, 39600],
  "Pacific/Port_Moresby": [36000, 36000],
  "Pacific/Rarotonga": [-36000, -36000],
  "Pacific/Saipan": [36000, 36000],
  "Pacific/Samoa": [-39600, -39600],
  "Pacific/Tahiti": [-36000, -36000],
  "Pacific/Tarawa": [43200, 43200],
  "Pacific/Tongatapu": [46800, 46800],
  "Pacific/Truk": [36000, 36000],
  "Pacific/Wake": [43200, 43200],
  "Pacific/Wallis": [43200, 43200],
  "Pacific/Yap": [36000, 36000],
  "Poland": [3600, 7200],
  "Portugal": [0, 3600],
  "ROC": [28800, 28800],
  "ROK": [32400, 32400],
  "Singapore": [28800, 28800],
  "Turkey": [7200, 10800],
  "UCT": [0, 0],
  "US/Alaska": [-32400, -28800],
  "US/Aleutian": [-36000, -32400],
  "US/Arizona": [-25200, -25200],
  "US/Central": [-21600, -18000],
  "US/East-Indiana": [-18000, -14400],
  "US/Eastern": [-18000, -14400],
  "US/Hawaii": [-36000, -36000],
  "US/Indiana-Starke": [-21600, -18000],
  "US/Michigan": [-18000, -14400],
  "US/Mountain": [-25200, -21600],
  "US/Pacific": [-28800, -25200],
  "US/Pacific-New": [-28800, -25200],
  "US/Samoa": [-39600, -39600],
  "UTC": [0, 0],
  "Universal": [0, 0],
  "W-SU": [10800, 10800],
  "WET": [0, 3600],
  "Zulu": [0, 0],
};
