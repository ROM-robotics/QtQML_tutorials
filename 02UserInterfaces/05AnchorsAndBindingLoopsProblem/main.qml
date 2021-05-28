import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        color: "black"
        //width: child.width
        //height: child.height
        implicitWidth: child.implicitWidth
        implicitHeight: child.implicitHeight

        Image {
            id: child
            source: "book.png"
            anchors.fill: parent
            anchors.margins: 5

        }
    }
}
