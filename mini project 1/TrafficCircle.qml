import QtQuick 2.0

Rectangle {
    id: root
    x: 0
    y: 0
    width: parent.width
    height: parent.height
    color: "#ff0000"
    radius: 100
    property bool textVisible: false

    Text{
        id: redText
        width: parent.width
        height: parent.height
        visible: parent.textVisible
        text: "ON"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 30
        color: "blue"

        ColorAnimation on color{
            from: root.color
            to: redText.color
            duration: 1000
            loops: Animation.Infinite
            running: parent.visible
        }
    }

    /*
    if the light is already on: turn it off, and release the global lock
    if no, turn it on, and hold the global lock to prevent other lights to be on
    */
    MouseArea{
        anchors.fill: parent
        onClicked: {
            if (parent.textVisible){
                parent.textVisible=false
                mainWindow.g_lightOn=false
            }else if (!mainWindow.g_lightOn){
                if(parent.textVisible){
                    parent.textVisible=false
                }else{
                    parent.textVisible=true
                }

                mainWindow.g_lightOn=true
            }
        }
    }
}
