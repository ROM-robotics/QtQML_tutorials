import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 1024; height: 600
        //anchors.fill: parent

        MultiPointTouchArea {
            anchors.fill: parent
            minimumTouchPoints: 1
            maximumTouchPoints: 3

            touchPoints: [
                TouchPoint{ id: touch1 },
                TouchPoint{ id: touch2 },
                TouchPoint{ id: touch3 }
            ]
        }

        Rectangle{
            x: touch1.x - width/2; y: touch1.y - height/2
            width: 200; height:200
            visible: touch1.pressed
            color: "cyan"
        }

        Rectangle{
            x: touch2.x - width/2; y: touch2.y - height/2
            width: 200; height:200
            visible: touch2.pressed
            color: "green"
        }

        Rectangle{
            x: touch3.x - width/2; y: touch3.y - height/2
            width: 200; height:200
            visible: touch3.pressed
            color: "blue"
        }
    }
}
