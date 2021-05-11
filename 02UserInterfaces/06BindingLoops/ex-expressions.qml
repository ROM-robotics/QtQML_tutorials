 import QtQuick 2.9

//Rectangle {
//    color: "black"
//    width: child.width     // ကြက်ဥ ကြက်မ ပြသနာ
//    height: child.height

//    Image {
//        id: child
//        source: "../images/bluegreen.jpg"
//        anchors.fill: parent
//        anchors.margins: 5
//        scale: 1
//    }
//}

Rectangle {
    color: "black"
    implicitWidth: child.implicitWidth     // problem solve
    implicitHeight: child.implicitHeight
    Image {
        id: child
        source: "../images/bluegreen.jpg"
        anchors.fill: parent
        anchors.margins: 5

    }
}
