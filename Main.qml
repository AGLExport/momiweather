import QtQuick

Window {
	width: 1920
	height: 1080
	visible: true
	color: "#0a0a33"
	title: qsTr("Momi Weather")

	Image {
		id: backgroundMap
		x: 0
		y: 120
		source: "images/Blue_Marble_2002_1920x960.png"

		Text {
			x: 10
			y: 930
			text: "https://commons.wikimedia.org CC BY-SA 4.0"
			font.pixelSize: 18
			font.bold: true
			color: "#000000"
		}

		// Europe
		WeatherItem {
			id: weatherLondon
			positionName: "London"
			latitude: 51.5072
			longitude: -0.1275
			mapX: 960
			mapY: 180
			timeZone: 0
		}

		WeatherItem {
			id: weatherLisboa
			positionName: "Lisboa"
			latitude: 38.7071
			longitude: -9.13549
			mapX: 910
			mapY: 272
			timeZone: 0
		}

		WeatherItem {
			id: weatherParis
			positionName: "Paris"
			latitude: 48.8566
			longitude: 2.3522
			mapX: 960
			mapY: 230
			timeZone: 1
		}

		WeatherItem {
			id: weatherBerlin
			positionName: "Berlin"
			latitude: 52.5186
			longitude: 13.4081
			mapX: 1028
			mapY: 202
			timeZone: 1
		}

		WeatherItem {
			id: weatherHelsinki
			positionName: "Helsinki"
			latitude: 60.17083
			longitude: 24.93750
			mapX: 1094
			mapY: 156
			timeZone: 2
		}



		// Northern America
		WeatherItem {
			id: weatherLos
			positionName: "Los Angeles"
			latitude: 34.0194
			longitude: -118.411
			mapX: 320
			mapY: 294
			timeZone: -7
		}

		WeatherItem {
			id: weatherToronto
			positionName: "Toronto"
			latitude: 43.6532
			longitude: -79.3831
			mapX: 538
			mapY: 230
			timeZone: -4
		}

		WeatherItem {
			id: weatherWashington
			positionName: "Washington DC"
			latitude: 38.9041
			longitude: -77.0171
			mapX: 570
			mapY: 272
			timeZone: -4
		}

		// Africa
		WeatherItem {
			id: weatherCape
			positionName: "Cape Town"
			latitude: -33.9248
			longitude: 18.424
			mapX: 1060
			mapY: 662
			timeZone: 2
		}


		// Southern Asia
		WeatherItem {
			id: weatherNewDelhi
			positionName: "New Delhi"
			latitude: 28.61
			longitude: 77.23
			mapX: 1366
			mapY: 320
			timeZone: 5
		}

		// Eastern Asia
		WeatherItem {
			id: weatherTokyo
			positionName: "Tokyo"
			latitude: 35.6894
			longitude: 139.6917
			mapX: 1706
			mapY: 290
			timeZone: 9
		}

		WeatherItem {
			id: weatherBeijing
			positionName: "Beijing"
			latitude: 39.9035
			longitude: 116.388
			mapX: 1586
			mapY: 266
			timeZone: 8
		}

		WeatherItem {
			id: weatherTaipei
			positionName: "Taipei"
			latitude: 25.0329
			longitude: 121.5654
			mapX: 1606
			mapY: 346
			timeZone: 8
		}

	}

	function fetch_weather_from_open_meteo_all() {
		const positions_eur = [weatherLondon, weatherLisboa, weatherParis, weatherBerlin, weatherHelsinki];
		const positions_nam = [weatherLos, weatherToronto, weatherWashington];
		const positions_eas = [weatherTokyo, weatherBeijing, weatherTaipei];
		const positions_sas = [weatherNewDelhi];
		const positions_afr = [weatherCape];
		

		for (var i = 0; i < positions_eur.length; i++) {
			fetch_weather_from_open_meteo(positions_eur[i]);
		}

		for (var i = 0; i < positions_nam.length; i++) {
			fetch_weather_from_open_meteo(positions_nam[i]);
		}

		for (var i = 0; i < positions_eas.length; i++) {
			fetch_weather_from_open_meteo(positions_eas[i]);
		}

		for (var i = 0; i < positions_sas.length; i++) {
			fetch_weather_from_open_meteo(positions_sas[i]);
		}

		for (var i = 0; i < positions_afr.length; i++) {
			fetch_weather_from_open_meteo(positions_afr[i]);
		}
	}

	function fetch_weather_from_open_meteo(obj) {
		var xhr = new XMLHttpRequest();
		const method="GET";
		const iconPathDay = "icons/day/";
		const iconPathNight = "icons/night/";
		const weatherIconMap = new Map([
			[ 0, "1.svg"],	//Clear sky
			[ 1, "2.svg"],	[ 2, "3.svg"],	[ 3, "4.svg"],	// Mainly clear, partly cloudy, and overcast
			[45, "15.svg"],	[48, "15.svg"],	// Fog and depositing rime fog
			[51, "9.svg"],	[53, "9.svg"],	[55, "9.svg"],	// Drizzle: Light, moderate, and dense intensity
			[56, "12.svg"],	[57, "12.svg"],	// Freezing Drizzle: Light and dense intensity
			[61, "10.svg"],	[63, "10.svg"],	[65, "10.svg"],	// Rain: Slight, moderate and heavy intensity
			[66, "48.svg"],	[67, "48.svg"],	// Freezing Rain: Light and heavy intensity
			[71, "49.svg"],	[73, "13.svg"],	[75, "50.svg"],	// Snow fall: Slight, moderate, and heavy intensity
			[77, "49.svg"],	// Snow grains
			[80, "46.svg"],	[81, "9.svg"],	[82, "10.svg"],	// Rain showers: Slight, moderate, and violent
			[85, "49.svg"],	[86, "50.svg"],	// Snow showers slight and heavy
			[95, "11.svg"],	// Thunderstorm: Slight or moderate
			[96, "22.svg"],	[99, "11.svg"],	// Thunderstorm with slight and heavy hail
		]);

		var url = "https://api.open-meteo.com/v1/forecast?latitude=" + obj.latitude
					 + "&longitude=" + obj.longitude + "&current=is_day,weather_code&forecast_days=1";

		xhr.open(method, url, true);
		xhr.onreadystatechange = function () {
			if (xhr.readyState === XMLHttpRequest.DONE) {
				var json_resonce = JSON.parse((xhr.responseText));
				var currentDate = new Date();
				var currentHour = (currentDate.getUTCHours() + obj.timeZone) % 24;
				var iconImage;
				//console.log(obj.positionName + " : " + currentHour)
				if (currentHour > 5 && 19 < currentHour) {
					iconImage = iconPathDay;
				} else {
					iconImage = iconPathNight;
				}
				iconImage = iconImage + weatherIconMap.get(json_resonce.current.weather_code);
				obj.weatherIcon = iconImage;
				obj.visible = true;
			}
		};
		xhr.send();
	}

	Component.onCompleted: {
		fetch_weather_from_open_meteo_all();
		//fetch_weather_from_open_meteo2(weatherLondon)
		//fetch_weather_from_open_meteo2(weatherBeijing)
		//fetch_weather_from_open_meteo2(weatherTokyo)
	}
}
