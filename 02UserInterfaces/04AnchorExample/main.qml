import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: bg
        width: 400; height: 200
        color: "lightblue"

        Image{
            id: book; source: "book2.png"
            anchors.left: bg.left
            anchors.leftMargin: bg.width/16
            anchors.verticalCenter: bg.verticalCenter
            scale: 1.8
        }
        Text {
            text: "Reading"; font.pixelSize: 32
            anchors.left: book.right
            anchors.leftMargin: 50
            anchors.baseline: book.verticalCenter
        }

        Rectangle {
            id: rightRectangle
            width: 100; height: 100
            color: "grey"
            anchors.right: bg.right
            anchors.verticalCenter: bg.verticalCenter

            Rectangle {
                color: "green"
                width: 50; height: 50
                //anchors.centerIn: parent
                anchors.fill: parent
                anchors.margins: 5
            }
        }
    }
}
