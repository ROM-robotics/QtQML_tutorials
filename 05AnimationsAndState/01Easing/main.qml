import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        y: 150; width: 100; height: 100
        color: "green"

        NumberAnimation on x {
            from: 0; to: 150; duration: 1000
            //easing.type: Easing.OutExpo
            //easing.type: Easing.InOutElastic
            easing.type: Easing.InOutBack
        }
    }
}
