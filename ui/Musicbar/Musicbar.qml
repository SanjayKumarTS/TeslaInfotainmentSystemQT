import QtQuick 2.15
import QtQuick.Layouts

Rectangle {
    color: "#f5f5f5"
    RowLayout {
        anchors.fill: parent
        spacing: 0
        Image {
            Layout.alignment: Qt.AlignLeft
            source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/album-cover.png"
            fillMode: Image.PreserveAspectFit
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.height
        }

        ColumnLayout {
            spacing: 3
            Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            Layout.margins: 0
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/heart.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
            Text {
                text: qsTr("Mia & Sebastian's Theme")
                font {
                    pixelSize: 14
                }
            }
            Text {
                text: qsTr("Justin Hurwitz")
                font {
                    pixelSize: 12
                }
            }
            Text {
                text: qsTr("La La Land (Original Motion Pictures")
                font {
                    pixelSize: 10
                }
            }
            Text {
                Layout.alignment: Qt.AlignRight
                text: qsTr("-1:23")
                font {
                    pixelSize: 8
                }
            }
            Rectangle {
                width: 200
                height: 2
                color: "grey"
                Rectangle {
                    width: 100
                    height: 2
                    color: "black"
                }
            }
        }
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 60
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/previous.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/pause.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/next.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/search.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/Musicbar/up.png"
                fillMode: Image.PreserveAspectFit
                Layout.preferredHeight: 15
                Layout.preferredWidth: 15
            }
        }
    }
}
