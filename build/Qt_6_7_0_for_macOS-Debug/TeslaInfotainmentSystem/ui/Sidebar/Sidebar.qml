import QtQuick 2.15
import QtQuick.Layouts

Rectangle {
    anchors {
        left: parent.left
        top: parent.top
        bottom: mainControlBar.top
    }
    width: parent.width / 3
    color: "#F1F1F1"

    ColumnLayout {
        width: parent.width
        Layout.leftMargin: 10
        Layout.rightMargin: 10

        RowLayout {
            width: parent.width
            Layout.topMargin: 10
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/tire-pressure.png"
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                Layout.leftMargin: 30
            }

            Image {
                Layout.alignment: Qt.AlignRight
                Layout.rightMargin: 20
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/headlights.png"
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
            }
        }

        Text {
            id: speed
            text: qsTr("63")
            font {
                pixelSize: 60
                weight: 500
            }
            Layout.alignment: Qt.AlignHCenter
        }

        RowLayout {
            width: parent.width - 20
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            Text {
                Layout.alignment: Qt.AlignLeft
                text: qsTr("P R N <b style='color: black;'>D</b>")
                font {
                    letterSpacing: 3
                }
                textFormat: Text.RichText
                color: "#919191"
            }

            Text {
                text: qsTr("MPH")
                Layout.alignment: Qt.AlignHCenter
                color: "#919191"
            }

            RowLayout {
                Layout.alignment: Qt.AlignRight
                Text {
                    text: qsTr("90%")
                    color: "#919191"
                }
                Image {
                    source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/battery.png"
                    Layout.preferredWidth: 40
                    Layout.preferredHeight: 15
                }
            }
        }

        RowLayout {
            width: parent.width
            Layout.topMargin: 10
            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/speedometer-line.png"
                fillMode: Image.PreserveAspectFit
                Layout.rightMargin: 10
                Layout.leftMargin: 10
                Layout.fillWidth: true
            }
        }

        RowLayout {
            width: parent.width - 20
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.topMargin: 10

            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/steering-wheel.png"
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
            }
            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                Image {
                    Layout.alignment: Qt.AlignLeft
                    source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/minus.png"
                    Layout.preferredWidth: 30
                    Layout.preferredHeight: 30
                }
                Rectangle {
                    width: 30
                    height: 30
                    color: "transparent"
                    border {
                        width: 2
                        color: "#919191"
                    }
                    radius: 40

                    Text {
                        anchors.centerIn: parent
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("65")
                    }
                }
                Image {
                    Layout.alignment: Qt.AlignRight
                    source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/plus.png"
                    Layout.preferredWidth: 30
                    Layout.preferredHeight: 30
                }
            }
            Image {
                Layout.alignment: Qt.AlignRight
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/Speed-Limit.png"
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
            }
        }

        RowLayout {
            width: parent.width
            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/Group.png"
                fillMode: Image.PreserveAspectFit
                Layout.rightMargin: 40
                Layout.leftMargin: 40
                Layout.fillWidth: true
            }
        }
        Rectangle {
            width: parent.width
            height: 1
            color: "#c4c2c2"
        }
        RowLayout {
            width: parent.width - 250
            Layout.leftMargin: 125
            Layout.rightMargin: 125
            Layout.topMargin: 10

            Image {
                Layout.alignment: Qt.AlignLeft
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/power.png"
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
            }
            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/camera.png"
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
            }
            Image {
                Layout.alignment: Qt.AlignRight
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/microphone.png"
                Layout.preferredWidth: 30
                Layout.preferredHeight: 30
            }
        }
        RowLayout {
            width: parent.width
            height: parent.height
            Layout.topMargin: 40
            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "qrc:TeslaInfotainmentSystem/assets/images/sidebar/Group-1.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredWidth: 40
            }
        }
    }
}
