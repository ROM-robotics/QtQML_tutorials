import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ROM ROBOTICS")

    Rectangle{
        color: "#00a3fc";
        width: 640; height: 480;

        Image {
            source: "smallArm.png"
            x: 150; y: 150
            width: sourceSize.width*0.1
            height: sourceSize.height*0.1
            Component.onCompleted: console.log(width, height, sourceSize)
        }
    }
}
