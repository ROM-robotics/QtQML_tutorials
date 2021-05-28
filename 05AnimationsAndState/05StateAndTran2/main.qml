import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 150
    height: 360
    visible: true
Rectangle {
    anchors.fill: parent
    color: "black"

    Rectangle {
        id: red
        x: 25; y: 15
        width: 100; height: 100
        radius: 50
        color: ( parent.state=="waitState" || parent.state=="stopState") ? "red" : "lightGray"
    }

    Rectangle {
        id: yellow
        x: 25; y: 130
        width: 100; height: 100
        radius: ( parent.state=="waitState" || parent.state=="slowState") ? 25:50
        color: ( parent.state=="waitState" || parent.state=="slowState") ? "yellow" : "lightGray"
    }

    Rectangle {
        id: green
        x: 25; y: 245
        width: 100; height: 100
        radius: 50
        color: parent.state=="driveState"?"green":"lightGray"
    } // <-- setup


    state: "stopState"

    Timer {
        interval: 2000
        repeat: true
        running: true
        onTriggered: {
            var states = ["stopState", "waitState", "driveState", "slowState"]
            var nextIndex = ( states.indexOf(parent.state) + 1 ) % states.length
            parent.state = states[nextIndex]
        }
    }
}
}
