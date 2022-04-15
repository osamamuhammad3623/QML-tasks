import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Traffic Light Project")
    /* indecates if a light is on, as you can't turn on more than one light */
    property bool g_lightOn: false

    Image {
        id: backgroundLight
        source: "images/trafficlight.png"
        anchors.centerIn: parent
    }

    TrafficCircle{
        id: redLight
        x: 254
        y: 18
        width: 133
        height: 133
        color: "red"
    }

    TrafficCircle{
        id: yellowLight
        x: 254
        y: 174
        width: 133
        height: 133
        color: "yellow"
    }

    TrafficCircle{
        id: greenLight
        x: 254
        y: 327
        width: 133
        height: 133
        color: "green"
    }

}

