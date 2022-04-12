import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
Window {
    width: 640
    height: 640
    visible: true
    title: qsTr("Task 4 - RotationAnimation")

    Rectangle{
        id: root
        height: 400
        width: 400
        anchors.centerIn: parent
        color: "blue"
        radius: 0.2*width
        property bool isRunning: false

        RotationAnimation on rotation {
            from: 0
            to: 360
            duration: 5000
            loops: Animation.Infinite
            running: root.isRunning
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
               if (root.isRunning){
                   root.isRunning=false
               }else{
                   root.isRunning=true
               }
            }
        }
    }

    Label {
        id: label
        x: 73
        y: 20
        width: 438
        height: 39
        text: qsTr("Press on shape to start/stop rotating")
        font.pointSize: 12
    }

}
