import QtQuick
import QtQuick.Controls

Window {
	id: momiWeather
	width: 1920
	height: 1080
	visible: true
	color: "#0a0a33"
	title: qsTr("Momi Weather")

	Button {
		id: reloadButton
		x: 1800
		y: 10
		icon.height: 100
		icon.width: 100
		icon.source: "icons/wikimedia/View-refresh_Gion-2.svg"
		background.opacity: 0
		onPressed: {
			momiWeather.fetch_weather_from_open_meteo_all();
		}
	}

	Text {
		x: 10
		y: 10
		font.pixelSize: 20
		font.bold: false
		color: "#ffffff"
		text: "Weather data is powerd by Open-Meteo. https://open-meteo.com"
	}

	Text {
		id: updatedTime
		x: 10
		y: 40
		font.pixelSize: 20
		font.bold: false
		color: "#ffffff"
	}

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

		WeatherItem {
			id: weatherIstanbul
			positionName: "Istanbul"
			latitude: 41.0049
			longitude: 28.5718
			mapX: 1104
			mapY: 258
			timeZone: 3
		}

		// Northern America
		WeatherItem {
			id: weatherHonolulu
			positionName: "Honolulu"
			latitude: 21.3069 
			longitude: -157.8583
			mapX: 120
			mapY: 368
			timeZone: -10
		}

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

		// Central America
		WeatherItem {
			id: weatherMexico
			positionName: "Mexico City"
			latitude: 19.26
			longitude: -99.08
			mapX: 420
			mapY: 370
			timeZone: -6
		}

		// Sous America
		WeatherItem {
			id: weatherRio
			positionName: "Rio de Janeiro"
			latitude: 34.0194
			longitude: -118.411
			mapX: 714
			mapY: 600
			timeZone: -3
		}

		WeatherItem {
			id: weatherLima
			positionName: "Lima"
			latitude: -12.0336
			longitude: -77.0215
			mapX: 542
			mapY: 528
			timeZone: -5
		}

		// Africa
		WeatherItem {
			id: weatherCape
			positionName: "Cape Town"
			latitude: -33.9248
			longitude: 18.4204
			mapX: 1060
			mapY: 662
			timeZone: 2
		}

		WeatherItem {
			id: weatherLuanda
			positionName: "Luanda"
			latitude: -8.5018
			longitude: 13.144
			mapX: 1028
			mapY: 528
			timeZone: 1
		}

		WeatherItem {
			id: weatherAbidjan
			positionName: "Abidjan"
			latitude: 5.19
			longitude: -4.02
			mapX: 932
			mapY: 450
			timeZone: 0
		}

		WeatherItem {
			id: weatherNairobi
			positionName: "Nairobi"
			latitude: -1.1711
			longitude: 36.4902
			mapX: 1170
			mapY: 480
			timeZone: 3
		}

		WeatherItem {
			id: weatherCairo
			positionName: "Cairo"
			latitude: 30.0240
			longitude: 31.1409
			mapX: 1124
			mapY: 318
			timeZone: 2
		}

		WeatherItem {
			id: weatherTunis
			positionName: "Tunis"
			latitude: 36.4823
			longitude: 10.1054
			mapX: 1012
			mapY: 284
			timeZone: 1
		}

		// Western Asia
		WeatherItem {
			id: weatherBaghdad
			positionName: "Baghdad"
			latitude: 33.1855
			longitude: 44.2158
			mapX: 1200
			mapY: 300
			timeZone: 3
		}

		WeatherItem {
			id: weatherDoha
			positionName: "Doha"
			latitude: 25.1712
			longitude: 51.3200
			mapX: 1232
			mapY: 340
			timeZone: 3
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

		WeatherItem {
			id: weatherKozhikode
			positionName: "Kozhikode"
			latitude: 11.15
			longitude: 75.46
			mapX: 1365
			mapY: 418
			timeZone: 5
		}

		// Southeast Asia
		WeatherItem {
			id: weatherHanoi
			positionName: "Hanoi"
			latitude: 21.00
			longitude: 105.85
			mapX: 1522
			mapY: 370
			timeZone: 7
		}

		WeatherItem {
			id: weatherBangkok
			positionName: "Bangkok"
			latitude: 13.45
			longitude: 100.29
			mapX: 1492
			mapY: 404
			timeZone: 7
		}

		WeatherItem {
			id: weatherSingapore
			positionName: "Singapore"
			latitude: 1.17
			longitude: 103.50
			mapX: 1516
			mapY: 472
			timeZone: 8
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
			id: weatherSeoul
			positionName: "Seoul"
			latitude: 37.3336
			longitude: 126.5924
			mapX: 1632
			mapY: 278
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
			id: weatherChengdu
			positionName: "Chengdu"
			latitude: 30.3936
			longitude: 104.0348
			mapX: 1518
			mapY: 308
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

		// Australia
		WeatherItem {
			id: weatherCanberra
			positionName: "Canberra"
			latitude: -35.16
			longitude: 149.07
			mapX: 1753
			mapY: 662
			timeZone: 8
		}
	}

	function fetch_weather_from_open_meteo_all() {
		const positions_eur = [weatherLondon, weatherLisboa, weatherParis, weatherBerlin, weatherHelsinki];
		const positions_nam = [weatherHonolulu, weatherLos, weatherToronto, weatherWashington];
		const positions_csa = [weatherMexico, weatherRio, weatherLima];
		const positions_sea = [weatherHanoi, weatherBangkok, weatherSingapore];
		const positions_eas = [weatherTokyo, weatherSeoul, weatherBeijing, weatherChengdu, weatherTaipei];
		const positions_was = [weatherBaghdad, weatherDoha];
		const positions_sas = [weatherNewDelhi, weatherKozhikode];
		const positions_afr = [weatherCape, weatherLuanda, weatherAbidjan, weatherNairobi, weatherCairo, weatherTunis];
		const positions_aus = [weatherCanberra];

		for (var i = 0; i < positions_eur.length; i++) {
			fetch_weather_from_open_meteo(positions_eur[i]);
		}

		for (var i = 0; i < positions_nam.length; i++) {
			fetch_weather_from_open_meteo(positions_nam[i]);
		}

		for (var i = 0; i < positions_csa.length; i++) {
			fetch_weather_from_open_meteo(positions_csa[i]);
		}

		for (var i = 0; i < positions_sea.length; i++) {
			fetch_weather_from_open_meteo(positions_sea[i]);
		}

		for (var i = 0; i < positions_eas.length; i++) {
			fetch_weather_from_open_meteo(positions_eas[i]);
		}

		for (var i = 0; i < positions_was.length; i++) {
			fetch_weather_from_open_meteo(positions_was[i]);
		}

		for (var i = 0; i < positions_sas.length; i++) {
			fetch_weather_from_open_meteo(positions_sas[i]);
		}

		for (var i = 0; i < positions_afr.length; i++) {
			fetch_weather_from_open_meteo(positions_afr[i]);
		}

		for (var i = 0; i < positions_aus.length; i++) {
			fetch_weather_from_open_meteo(positions_aus[i]);
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
				if (currentHour > 5 && currentHour < 19) {
					iconImage = iconPathDay;
				} else {
					iconImage = iconPathNight;
				}
				iconImage = iconImage + weatherIconMap.get(json_resonce.current.weather_code);
				obj.weatherIcon = iconImage;
				obj.visible = true;

				updatedTime.text = "Last updated: " + currentDate.toLocaleTimeString(currentDate, "hh:mm ap");
			}
		};
		xhr.send();
	}

	Timer{
		id:weatherTimer
		interval: 10000
		repeat: true
		onTriggered:{
			momiWeather.fetch_weather_from_open_meteo_all();
			interval = 15 * 60 * 1000
		}
	}

	Component.onCompleted: {
		weatherTimer.start();
	}
}
