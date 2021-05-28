import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: background
        width: 300; height: 100
        color: "lightblue"
        anchors.right: root.right

        Rectangle{
            color: "green"
            y: 25
            height: 50; width: 50
            anchors.right: background.right
            anchors.top: background.top
            anchors.left: background.left
        }
    }
}
