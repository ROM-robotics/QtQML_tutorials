import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        color: "lightblue"
        width: parent.width; height: parent.height

        Rectangle{
            id: rect
            x: 100; y: 100
            width: 50; height: 50
            color: "red"

            Behavior on x { SpringAnimation { spring: 1; damping: 0.2}}
            Behavior on y { SpringAnimation { spring: 2; damping: 0.2}}

        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rect.x = mouse.x - rect.width/2
                rect.y = mouse.y - rect.height/2
            }
        }
    }
}
