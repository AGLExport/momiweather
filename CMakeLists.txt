cmake_minimum_required(VERSION 3.16)
project(momiweather LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_add_executable(momiweather
    main.cpp
)

target_link_libraries(momiweather
    PRIVATE Qt6::Quick
)

set(momiweather_resource_files
    "Main.qml" "WeatherItem.qml"
    "images/Blue_Marble_2002_1920x960.png"
    "icons/wikimedia/View-refresh_Gion-2.svg"
    "icons/day/1.svg" "icons/day/2.svg" "icons/day/3.svg" "icons/day/4.svg" "icons/day/5.svg"
    "icons/day/6.svg" "icons/day/7.svg" "icons/day/8.svg" "icons/day/9.svg" "icons/day/10.svg"
    "icons/day/11.svg" "icons/day/12.svg" "icons/day/13.svg" "icons/day/14.svg" "icons/day/15.svg"
    "icons/day/20.svg" "icons/day/21.svg" "icons/day/22.svg" "icons/day/23.svg" "icons/day/24.svg"
    "icons/day/25.svg" "icons/day/26.svg" "icons/day/27.svg" "icons/day/28.svg" "icons/day/29.svg"
    "icons/day/30.svg" "icons/day/31.svg" "icons/day/32.svg" "icons/day/33.svg" "icons/day/34.svg"
    "icons/day/40.svg" "icons/day/41.svg" "icons/day/42.svg" "icons/day/43.svg" "icons/day/44.svg"
    "icons/day/45.svg" "icons/day/46.svg" "icons/day/47.svg" "icons/day/48.svg" "icons/day/49.svg"
    "icons/day/50.svg"
    "icons/night/1.svg" "icons/night/2.svg" "icons/night/3.svg" "icons/night/4.svg" "icons/night/5.svg"
    "icons/night/6.svg" "icons/night/7.svg" "icons/night/8.svg" "icons/night/9.svg" "icons/night/10.svg"
    "icons/night/11.svg" "icons/night/12.svg" "icons/night/13.svg" "icons/night/14.svg" "icons/night/15.svg"
    "icons/night/20.svg" "icons/night/21.svg" "icons/night/22.svg" "icons/night/23.svg" "icons/night/24.svg"
    "icons/night/25.svg" "icons/night/26.svg" "icons/night/27.svg" "icons/night/28.svg" "icons/night/29.svg"
    "icons/night/30.svg" "icons/night/31.svg" "icons/night/32.svg" "icons/night/33.svg" "icons/night/34.svg"
    "icons/night/40.svg" "icons/night/41.svg" "icons/night/42.svg" "icons/night/43.svg" "icons/night/44.svg"
    "icons/night/45.svg" "icons/night/46.svg" "icons/night/47.svg" "icons/night/48.svg" "icons/night/49.svg"
    "icons/night/50.svg"
)

qt6_add_resources(momiweather "momiweather"
    PREFIX
        "/"
    FILES
        ${momiweather_resource_files}
)

install(TARGETS momiweather
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
