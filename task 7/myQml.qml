import QtQuick 2.0
import QtQuick.Controls 2.3

Rectangle{
    width: 640
    height: 480

    border.color: "blue"
    TextInput {
        id: textInput
        x: 0
        y: 0
        width: 640
        height: 167
        text: qsTr("Text Input")
        font.pixelSize: 25
    }

    Button {
        id: button
        x: 230
        y: 261
        width: 181
        height: 72
        text: qsTr("Call C++ code")
        font.pointSize: 12

        /* Calling C++ code */
        onClicked: {
            mainWidget.printStringQt(textInput.text)
        }
    }


    /* Calling QML code from C++ */
    /* A function that's called from C++ */
    function setQmlText(){
        textInput.text = mainWidget.getUserText()
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
