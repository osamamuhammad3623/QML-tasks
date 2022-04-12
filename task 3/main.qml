import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Dialogs 1.2

Window {
    width: 640
    height: 640
    visible: true
    id: mainWindow
    title: qsTr("Task 3 - Color & Font dialogs")

    ColorDialog{
        id: selected_color
        title: "Choose a color"
    }

    FontDialog{
        id: selected_font
        title: "Choose Font options"
    }

    /*
    Color Button
    */
    Button {
        id: colorBtn
        x: 43
        y: 145
        width: 180
        height: 40
        text: qsTr("Color")
        onClicked: {
            selected_color.open()
        }
    }

    /*
    Font Button
    */
    Button {
        id: fontBtn
        x: 235
        y: 145
        width: 180
        height: 40
        text: qsTr("Font")
        onClicked: {
            selected_font.open()
        }
    }

    /*
    User-input area
    */
    Rectangle {
        id: rectangle
        x: 43
        y: 35
        width: 555
        height: 95
        color: "#ffffff"
        border.color: "black"
        border.width: 1

        TextInput {
            id: userInput
            x: 0
            y: 0
            width: 555
            height: 95
            text: qsTr("Type your message here")
            font.pixelSize: 15
        }
    }


    /*
    Output area
    */
    Rectangle {
        id: rectangle1
        x: 43
        y: 213
        width: 555
        height: 362
        color: "#ffffff"
        border.color: "black"
        border.width: 1

        TextInput {
            x: 0
            y: 0
            width: 555
            height: 362
            text: userInput.text
            font: selected_font.font
            color: selected_color.color
            readOnly: true
        }
    }


}
