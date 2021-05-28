import QtQuick 2.7
import QtQuick.Window 2.2

//Window {
//    width: 1000
//    height: 1000
//    visible: true
//    title: qsTr("Hello World")

    Flickable{
        id: flick
        width: 400; height: 400
        contentWidth: 500
        contentHeight: 500

        PinchArea {
            anchors.fill: parent
            pinch.target: img
            pinch.maximumScale: 1.0
            pinch.minimumScale: 0.1
            pinch.dragAxis: Pinch.XAndYAxis
        }

        Image{
            id: img
            width: flick.contentWidth
            height: flick.contentHeight
            source: "logo.png"
        }
    }
//}
