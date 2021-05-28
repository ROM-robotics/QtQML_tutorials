import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    color: "black"
    width: 200; height: 200
    visible: true

    Flipable { // --> Slide
        id: flip
        anchors.centerIn: parent
        property bool flipped: false

        front: Rectangle {
            color: "green"
            width: 100
            height: 100
            anchors.centerIn: parent
        }

        back: Rectangle {
            color: "red"
            width: 100
            height: 100
            anchors.centerIn: parent
        }

        transform: Rotation {
            axis.x: 0; axis.y: 1; axis.z: 0
            angle: flip.flipped ? 180 : 0

            Behavior on angle {
                NumberAnimation { duration: 500 }
            }
        }
    } // --> Slide
    MouseArea {
        anchors.fill: parent
        onClicked: flip.flipped = !flip.flipped
    }
    Text {
        text: flip.side == Flipable.Front ? "Front" : "Back"
        anchors {
            bottom: parent.bottom
        }
        color: "white"
    }
}
