
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 480; height: 640

    GroupBox {
        anchors.centerIn: parent
        id: loginBox

        ColumnLayout {

            RowLayout {
                id: username
                Label {
                    text: "Username"
                    Layout.alignment: Qt.AlignLeft
                }

                Rectangle {
                    id: container
                    width: 200
                    height: 30
                    Layout.alignment: Qt.AlignRight
                    color: "#d4d4d4"
                    border.width: 1
                    border.color: "#838383"
                    TextEdit {
                        id: txt
                        anchors.fill: parent
                        padding: 3
                        font.pixelSize: 18
                        focus: true
                        wrapMode: TextEdit.Wrap
                        onTextChanged: {
                            var pos = txt.positionAt(1, container.height);
                            if(txt.length >= pos)
                            {
                                txt.remove(pos, txt.length);
                            }
                        }
                    }
                }

            }

            Rectangle {
                height: 20
            }

            RowLayout {
                id: password
                Label {
                    text: "Password "
                    Layout.alignment: Qt.AlignLeft
                }

                Rectangle {
                    id: container2
                    width: 200
                    height: 30
                    Layout.alignment: Qt.AlignRight
                    color: "#d4d4d4"
                    border.width: 1
                    border.color: "#838383"
                    TextEdit {
                        id: txt2
                        anchors.fill: parent
                        padding: 3
                        font.pixelSize: 18
                        focus: true
                        wrapMode: TextEdit.Wrap
                        onTextChanged: {
                            var pos = txt2.positionAt(1, container.height);
                            if(txt2.length >= pos)
                            {
                                txt2.remove(pos, txt2.length);
                            }
                        }
                    }
                }

            }

            Rectangle {
                height: 20
            }

            Button {
                text: "Login"
                font.pixelSize: 18
                Layout.alignment: Qt.AlignCenter
            }

        }
    }
}
