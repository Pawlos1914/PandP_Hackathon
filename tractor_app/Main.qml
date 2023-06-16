import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 125
        height: 75
        anchors.centerIn: parent

        TextField{
            id: textfield
            placeholderText: "Go bananas!"
        }

        Button{
            id: button
            text: "Click me"
            onClicked: helloPop.open()
        }
    }

    Popup{
        id: helloPop
        anchors.centerIn: parent
        width: 150
        height: 75
        closePolicy: "CloseOnEscape"

        Column{
            anchors.centerIn: parent
            spacing: 10
            Text{
                text: textfield.text
            }


        Button{
            text: "close"
            width: 75
            onClicked: {
                helloPop.close()
            }
        }
        }
    }
}
