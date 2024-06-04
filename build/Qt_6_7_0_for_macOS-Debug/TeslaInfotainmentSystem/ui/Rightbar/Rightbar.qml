import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick
import QtLocation
import QtPositioning

import "../Musicbar"

Rectangle {
    anchors {
        left: sidebar.right
        right: parent.right
        top: parent.top
        bottom: mainControlBar.top
    }

    RowLayout {
        id: rightbarTopbar
        width: parent.width
        z: 1
        RowLayout {
            spacing: 30
            Layout.leftMargin: 30
            Layout.topMargin: 10
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/rightbar/lock.png"
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                fillMode: Image.PreserveAspectFit
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/rightbar/Subtract.png"
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                fillMode: Image.PreserveAspectFit
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/rightbar/Union.png"
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                fillMode: Image.PreserveAspectFit
            }
        }
        Item {
            Layout.fillWidth: true
        }

        RowLayout {
            spacing: 30
            Layout.rightMargin: 30
            Layout.topMargin: 10
            Text {
                text: qsTr("17 \xB0C")
                font {
                    pixelSize: 16
                }
            }
            Text {
                id: dateTimeText

                text: Qt.formatDateTime(new Date(), "hh:mm AP")
                font {
                    pixelSize: 16
                }

                Timer {
                    interval: 1000
                    repeat: true
                    running: true

                    onTriggered: {
                        dateTimeText.text = Qt.formatDateTime(new Date(),
                                                              "hh:mm AP")
                    }
                }
            }
        }
    }

    Rectangle {
        id: searchBar
        z: 1
        anchors {
            top: rightbarTopbar.bottom
            left: parent.left
            topMargin: 30
            leftMargin: 30
        }
        width: 250
        height: 50
        color: "#f5f5f5"
        radius: 50

        RowLayout {
            anchors {
                fill: parent
                leftMargin: 20
                rightMargin: 20
            }
            Layout.alignment: Qt.AlignVCenter
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/rightbar/navicon.png"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                fillMode: Image.PreserveAspectFit
            }
            Text {
                text: qsTr("Navigate")
                Layout.leftMargin: 15
                Layout.fillWidth: true
                color: "#606060"
            }
            Image {
                source: "qrc:TeslaInfotainmentSystem/assets/images/rightbar/Vector-37.png"
                Layout.preferredWidth: 12
                Layout.preferredHeight: 12
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    MultiEffect {
        z: 1
        source: searchBar
        anchors.fill: searchBar
        autoPaddingEnabled: false
        paddingRect: Qt.rect(40, 30, searchBar.width, searchBar.height)
        shadowBlur: 1.2
        shadowColor: '#80000000'
        shadowEnabled: true
        shadowVerticalOffset: 5
    }

    Musicbar {
        z: 1
        id: musicbar
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: 30
            rightMargin: 30
            bottomMargin: 20
        }
        width: parent.width - 60
        height: 100
    }

    MultiEffect {
        z: 1
        source: musicbar
        anchors.fill: musicbar
        autoPaddingEnabled: true
        paddingRect: Qt.rect(40, 50, musicbar.width, musicbar.height)
        shadowBlur: 1.2
        shadowColor: '#80000000'
        shadowEnabled: true
        shadowVerticalOffset: 5
    }

    Plugin {
        id: mapPlugin
        name: "osm"
        PluginParameter {
            name: "mapbox.access_token"
            value: "pk.eyJ1Ijoic3Rob3ZpbmEiLCJhIjoiY2x4MHN2cDN2MDN4NzJxcTF2MW1iYmhlZCJ9.Cr-oW81qN-6ElJ1A1kZeVQ"
        }
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(43.088947, -76.154480) // Oslo
        zoomLevel: 14
        z: 0
        property geoCoordinate startCentroid

        PinchHandler {
            id: pinch
            target: null
            onActiveChanged: if (active) {
                                 map.startCentroid = map.toCoordinate(
                                             pinch.centroid.position, false)
                             }
            onScaleChanged: delta => {
                                map.zoomLevel += Math.log2(delta)
                                map.alignCoordinateToPoint(
                                    map.startCentroid, pinch.centroid.position)
                            }
            onRotationChanged: delta => {
                                   map.bearing -= delta
                                   map.alignCoordinateToPoint(
                                       map.startCentroid,
                                       pinch.centroid.position)
                               }
            grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
            id: wheel
            // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
            // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
            // and we don't yet distinguish mice and trackpads on Wayland either
            acceptedDevices: Qt.platform.pluginName === "cocoa"
                             || Qt.platform.pluginName
                             === "wayland" ? PointerDevice.Mouse
                                             | PointerDevice.TouchPad : PointerDevice.Mouse
            rotationScale: 1 / 120
            property: "zoomLevel"
        }
        DragHandler {
            id: drag
            target: null
            onTranslationChanged: delta => map.pan(-delta.x, -delta.y)
        }
        Shortcut {
            enabled: map.zoomLevel < map.maximumZoomLevel
            sequence: StandardKey.ZoomIn
            onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }
        Shortcut {
            enabled: map.zoomLevel > map.minimumZoomLevel
            sequence: StandardKey.ZoomOut
            onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
    }
}
