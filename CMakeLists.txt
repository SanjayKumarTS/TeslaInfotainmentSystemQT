cmake_minimum_required(VERSION 3.16)

project(TeslaInfotainmentSystem VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appTeslaInfotainmentSystem
    main.cpp
)

qt_add_qml_module(appTeslaInfotainmentSystem
    URI TeslaInfotainmentSystem
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES assets/images/mainControlBar/arrow-1.png assets/images/mainControlBar/arrow.png assets/images/mainControlBar/defrost.png assets/images/mainControlBar/fan.png assets/images/mainControlBar/heater.png assets/images/mainControlBar/model3-icon.png assets/images/mainControlBar/music.png assets/images/mainControlBar/phone.png assets/images/mainControlBar/seat-1.png assets/images/mainControlBar/seat.png assets/images/mainControlBar/volume.png
        QML_FILES ui/MainControlBar/MainControlBar.qml
        QML_FILES ui/Sidebar/Sidebar.qml
        RESOURCES assets/images/sidebar/battery.png assets/images/sidebar/camera.png assets/images/sidebar/Group-1.png assets/images/sidebar/Group.png assets/images/sidebar/headlights.png assets/images/sidebar/microphone.png assets/images/sidebar/minus.png assets/images/sidebar/plus.png assets/images/sidebar/power.png assets/images/sidebar/Speed-Limit.png assets/images/sidebar/speedometer-line.png assets/images/sidebar/steering-wheel.png assets/images/sidebar/tire-pressure.png
        QML_FILES ui/Rightbar/Rightbar.qml
        RESOURCES assets/images/rightbar/gear.png assets/images/rightbar/lock.png assets/images/rightbar/navicon.png assets/images/rightbar/scale.png assets/images/rightbar/Subtract.png assets/images/rightbar/Union.png assets/images/rightbar/Vector-37.png
        QML_FILES ui/Musicbar/Musicbar.qml
        RESOURCES assets/images/Musicbar/album-cover.png assets/images/Musicbar/heart.png assets/images/Musicbar/next.png assets/images/Musicbar/pause.png assets/images/Musicbar/previous.png assets/images/Musicbar/search.png assets/images/Musicbar/up.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTeslaInfotainmentSystem PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTeslaInfotainmentSystem
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTeslaInfotainmentSystem
    PRIVATE Qt6::Quick
)


include(GNUInstallDirs)
install(TARGETS appTeslaInfotainmentSystem
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
