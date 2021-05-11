 import QtQuick 2.9

//Rectangle{
//    id: background
//    width: 300; height: 100
//    color: "lightblue"

//    Rectangle{
//        color: "green"
//        width: 50       // override by anchors
//        height: 50      // override by anchors
//        anchors.top: background.top
//        anchors.right: background.right
//        anchors.left: background.left
//    }
//}

Rectangle{
    id: bg
    width: 400; height: 200
    color: "lightblue"

    Image {
        id: book
        source: "../images/book.png"
        anchors{
            left: bg.left
            leftMargin: bg.width/32
            verticalCenter: bg.verticalCenter
        }
        scale: 0.3
    }
    Text {
        id: label
        text: qsTr("Writing")
        font.pixelSize: 32
        anchors.left: book.right
        anchors.leftMargin: 32
        anchors.baseline: book.verticalCenter
    }

    Rectangle{
        color: "green"
        width: 50; height: 50
        anchors.centerIn: parent
        anchors.margins: 10
    }
}
