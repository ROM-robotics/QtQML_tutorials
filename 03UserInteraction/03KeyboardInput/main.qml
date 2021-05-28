import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")

    TextInput{
        anchors.left: parent.left; y: 16
        anchors.right: parent.right
        text: "SSID"; font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        focus: true
        activeFocusOnTab: true
        KeyNavigation.down: passwd
    }

    TextInput{
        id: passwd
        anchors.left: parent.left; y: 64
        anchors.right: parent.right
        text: "PASWORD"; font.pixelSize: 32
        color: activeFocus ? "black" : "gray"
        activeFocusOnTab: true
    }
    //Keys.onLeftPressed: rocket.rotation = ( rocket.rotation - 10 ) %360
}
