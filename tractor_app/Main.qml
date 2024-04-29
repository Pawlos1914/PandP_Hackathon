import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "MyUI"

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
            icon.name: "click-icon"
            icon.source: "images/click.png"
            onClicked: helloPop.open()
        }
    }

    PassCode{
        id: helloPop
    }
}
