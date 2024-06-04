import QtQuick 2.15

Rectangle {
    anchors {
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    height: parent.height / 10
    color: "Black"

    Row {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: parent.width / 25

        Image {
            id: model3Icon
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/model3-icon.png"
            fillMode: Image.PreserveAspectFit
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }

        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/defrost.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }

        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/heater.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }

        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/seat-1.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/arrow-1.png"
                anchors.horizontalCenter: parent.horizontalCenter
                width: 30
                height: 15
            }
            Text {
                id: temperature1
                text: qsTr("20 \xB0")
                color: "white"
                font {
                    pixelSize: 32
                    weight: 200
                }

                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/arrow.png"
                anchors.horizontalCenter: parent.horizontalCenter
                width: 30
                height: 15
            }
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter
            spacing: 2
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/fan.png"
                width: 26
                height: 26
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: qsTr("MANUAL")
                color: "white"
                font.pixelSize: 8
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/arrow-1.png"
                anchors.horizontalCenter: parent.horizontalCenter
                width: 30
                height: 15
            }
            Text {
                id: temperature2
                text: qsTr("20 \xB0")
                color: "white"
                font {
                    pixelSize: 32
                    weight: 200
                }

                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/arrow.png"
                anchors.horizontalCenter: parent.horizontalCenter
                width: 30
                height: 15
            }
        }

        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/seat.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/music.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/phone.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }
        Image {
            source: "qrc:TeslaInfotainmentSystem/assets/images/mainControlBar/volume.png"
            width: 34
            height: 34
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
