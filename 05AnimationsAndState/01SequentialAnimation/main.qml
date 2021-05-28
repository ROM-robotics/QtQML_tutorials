import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: rocket
        width:20; height: 60;
        color: "red"

    }
//    SequentialAnimation{
//        NumberAnimation {
//            target: rocket; properties: "scale"
//            from: 2.0; to: 0.2; duration: 1000
//        }
//        NumberAnimation {
//            target: rocket; properties: "opacity"
//            from: 1.0; to: 0.0; duration: 1000
//        }
//        running: true
//    }
    ParallelAnimation{
                NumberAnimation {
                    target: rocket; properties: "scale"
                    from: 2.0; to: 0.2; duration: 1000
                }
                NumberAnimation {
                    target: rocket; properties: "opacity"
                    from: 1.0; to: 0.0; duration: 1000
                }
                running: true
    }
}
