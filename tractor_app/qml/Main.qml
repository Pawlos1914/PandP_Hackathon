import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")
    id: root


    Column {
        id: column
        anchors.centerIn: parent

        Text {
            text: "    Go Bananas!"
            font.pixelSize: 26
        }

        Image {
            source: "../images/farmLand.jpg"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                   console.info("image clicked!")
                    var component = Qt.createComponent("LoginPage.qml");
                    var window    = component.createObject(root);
                    window.show();
                    root.hide();
                }
            }
        }
    }

}
