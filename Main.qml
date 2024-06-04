import QtQuick
import "ui/MainControlBar"
import "ui/Sidebar"
import "ui/Rightbar"

Window {
    width: 1920
    height: 1200
    visible: true
    title: qsTr("Tesla Infotainment")

    MainControlBar {
        id: mainControlBar
    }

    Sidebar {
        id: sidebar
    }

    Rightbar {
        id: rightbar
    }
}
