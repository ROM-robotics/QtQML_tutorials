import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 400; height: 100
        color: "lightblue"
        LineEdit{
            anchors.centerIn: parent
            width: 300; height: 50
        }
    }
}
