import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 400; height: 400
        color: "lightblue"

        Rectangle{
            id: rect
            x: 300; y: 300
            width: 100; height: 100
            color: "green"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                anim.to = ( rect.x == 150?0:150)
                anim.running=true
            }
        }

        NumberAnimation{
                id: anim
                target: rect
                properties: "x,y"
                to: 150; duration: 1000
                running: true
        }
    }
}
