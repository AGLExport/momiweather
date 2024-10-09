// SPDX-License-Identifier: GPL-3.0+
// Copyright (C) 2024 Automotive Grade Linux
import QtQuick
import QtQuick.Effects

Item {
	id: weatherItem
	visible: true
	width: 50
	height: 50
	x: mapX - (width / 2)
	y: mapY - (height / 2)

	property int mapX: 0
	property int mapY: 0
	property real latitude: 0
	property real longitude: 0
	property int timeZone: 0
	property string weatherIcon: ""
	property string positionName: ""

	Image {
		id: weatherImage
		x: 0
		y: 0
		width: 50
		height: 50
		fillMode: Image.PreserveAspectFit
		source: weatherIcon
	}
	MultiEffect {
		source: weatherImage
		anchors.fill: weatherImage
		brightness: 0.4
		saturation: 0.2
		shadowEnabled: true
		shadowOpacity: 1.0
		shadowBlur: 0.5
		shadowHorizontalOffset: 4.0
		shadowVerticalOffset: 4.0
	}

	Rectangle {
		id: weatherRect
		x: 0
		y: 40
		width: 50
		height: 10
		opacity: 0.8
		color: "#303030"
	}
	Text {
		id: positionText
		visible: true
		x: 0
		y: 40
		width: 50
		height: 10
		text: positionName
		font.pixelSize: 10
		font.bold: true
		color: "#FFFFFF"
		verticalAlignment: Text.AlignVCenter
		horizontalAlignment: Text.AlignHCenter
	}
}
