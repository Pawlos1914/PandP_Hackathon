import QtQuick
import QtQuick.Window
import QtQuick.Controls

Popup{
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
