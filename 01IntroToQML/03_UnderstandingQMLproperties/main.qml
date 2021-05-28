import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 400; height: 400
        color: "grey"

        Rectangle{
            color: "lightblue"
            x: 50; y: 50
            width: 300; height: 150;
            Rectangle{
                x: 50; y: 50
                width: 50; height: 50;
                color: "white"
            }
        z: 1
        }

        Rectangle{
            color: "#aa00ff00"
            x: 50; y: 150
            width: 300; height: 140;
            clip: true
            Rectangle{
                x: -50; y: 50
                width: 150; height: 50;
                color: "blue"
            }
        }
    }
}
