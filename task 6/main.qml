import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task 6 - QML calls C++ code")

    Button {
        id: button
        x: 135
        y: 263
        width: 370
        height: 98
        text: qsTr("QML calls C++ code to print message on console")

        onClicked: {
            cppobject.printText(textInput.text);
        }
    }

    Rectangle {
        id: rectangle
        x: 66
        y: 40
        border.color: "blue"
        width: 509
        height: 200
        color: "#ffffff"

        TextInput {
            id: textInput
            x: 0
            y: 0
            width: 509
            height: 200
            text: qsTr("Type your message here")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignLeft
        }
    }
}
