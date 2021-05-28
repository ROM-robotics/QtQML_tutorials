import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ROM ROBOTICS")

    Rectangle{
        x: 50; y: 50; width: 200; height: 300
        color: "green"
        opacity: 0.5

        Rectangle{
            x: 100; y: 25; width: 200; height: 50
            color: "red"
            opacity: 0.5
        }
        Rectangle{ // inherit opacity from parent
            x: 100; y: 90; width: 200; height: 50
            color: "red"
        }
    }
    Rectangle{
        x: 150; y: 205; width: 200; height: 50
        color: "red"
        opacity: 0.5
    }
    Rectangle{ // inherit opacity from parent
        x: 150; y: 270; width: 200; height: 50
        color: "red"
    }
}
