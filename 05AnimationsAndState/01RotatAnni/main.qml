import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image{
        id: ball
        source: "ball.png"
        anchors.centerIn: parent
        smooth: true
        scale: 0.4
        RotationAnimation on rotation {
            from: 45; to: 315
            direction: RotationAnimation.Shortest
            duration: 1000
        }
    }
}
