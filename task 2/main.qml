import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 640
    visible: true
    id: mainWindow
    title: qsTr("Task 2")

    Rectangle{
        id: rectangle
        x: 15
        y: 59
        border.width: 1
        height:  50
        width: mainWindow.width - 30

        TextInput{
            id: userInput
            anchors.fill: parent
            font.pointSize: 12
            anchors.rightMargin: 0
            anchors.bottomMargin: 1
            anchors.leftMargin: 0
            anchors.topMargin: -1
            cursorVisible: true
            onTextChanged: {
                userOutput.text = Qt.btoa(userInput.text)
            }
        }
    }

    Rectangle {
        id: rectangleoutput
        x: 15
        y: 149
        width: mainWindow.width - 30
        height: 450
        border.width: 1
        TextInput {
            id: userOutput
            anchors.fill: parent
            anchors.rightMargin: 0
            cursorVisible: true
            anchors.topMargin: 0
            anchors.leftMargin: 0
            font.pointSize: 12
            anchors.bottomMargin: 0
        }
    }

    Label {
        id: label
        x: 16
        y: 13
        width: 391
        height: 40
        text: qsTr("Enter a message to convert to Base64:")
        font.pointSize: 12
    }
}
