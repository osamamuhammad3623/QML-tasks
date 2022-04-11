import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 640
    visible: true
    title: qsTr("Task 1")

    Slider {
        id: rotationSlider
        x: 0
        y: 0
        width: 640
        height: 40
        value: 0
        onValueChanged: {
            mainRectangle.rotation = value * 360
        }
    }

    Rectangle {
        id: mainRectangle
        x: 218
        y: 185
        width: 204
        height: 204
        color: "#ff0000"

        Rectangle {
            id: centerRect
            x: 295
            y: 215
            width: 51
            height: 51
            color: "#0012ff"
            anchors.centerIn:  mainRectangle
        }

        Rectangle {
            id: bottomRightRect
            x: 428
            y: 342
            width: 51
            height: 51
            color: "#0012ff"
            anchors.top: mainRectangle.bottom
            anchors.left: mainRectangle.right
        }

        Rectangle {
            id: bottomLeftRect
            x: 165
            y: 342
            width: 51
            height: 51
            color: "#0012ff"
            anchors.top: mainRectangle.bottom
            anchors.right: mainRectangle.left
        }

        Rectangle {
            id: topRightRect
            x: 428
            y: 85
            width: 51
            height: 51
            color: "#0012ff"
            anchors.bottom: mainRectangle.top
            anchors.left: mainRectangle.right
        }

        Rectangle {
            id: topLeftRect
            x: 165
            y: 85
            width: 51
            height: 51
            color: "#0012ff"
            anchors.bottom: mainRectangle.top
            anchors.right: mainRectangle.left
        }
    }


}
