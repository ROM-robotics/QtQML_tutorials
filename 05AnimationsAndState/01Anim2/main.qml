import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rect1
        x: 150; y: 150
        width: 100
        height: 100
        color: "green"
    }


    ColorAnimation {
        target: rect1
        property: "color"
        from: Qt.rgba(0,0.5,0,1)
        to: Qt.rgba(1,1,1,1)
        duration: 5000
        running: true
    }

}
