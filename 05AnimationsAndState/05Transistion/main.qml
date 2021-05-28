import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 150
    height: 150
    visible: true

    Rectangle{
        anchors.fill: parent
        color: "black"


        Rectangle {
            id: redLight
            x: 25; y: 15; width: 100; height: 100
            radius: 50
        }
        Rectangle {
            id: yellowLight
            x: 25; y: 130; width: 100; height: 100
            radius: 50
        }
        Rectangle {
            id: greenLight
            x: 25; y: 245; width: 100; height: 100
            radius: 50
        }

        states: [
            State{
                name: "stopState"
                PropertyChanges { target: red; color: "red" }
                PropertyChanges { target: yellow; color: "lightGray" }
                PropertyChanges { target: green; color: "lightGray" }
            },
            State{
                name: "waitState"
                PropertyChanges { target: red; color: "red" }
                PropertyChanges { target: yellow; color: "yellow" }
                PropertyChanges { target: green; color: "lightGray" }
            },
            State{
                name: "driveState"
                PropertyChanges { target: red; color: "lightGray" }
                PropertyChanges { target: yellow; color: "lightGray" }
                PropertyChanges { target: green; color: "green" }
            },
            State{
                name: "slowState"
                PropertyChanges { target: red; color: "lightGray" }
                PropertyChanges { target: yellow; color: "yellow" }
                PropertyChanges { target: green; color: "lightGray" }
            }

        ]
        state: "stopState"

        Timer {
            interval: 3000
            repeat: true
            running: true
            onTriggered: {
                var states = ["stopState", "waitState", "driveState", "slowState"]
                var nextIndex = ( states.indexOf(parent.state) + 1 ) % states.length
                parent.state = states[nextIndex]
            }
        }

        transitions: [
           Transition{
                from: "stopState"; to: "waitState"
                PropertyAnimation{
                    targets: [redLight, yellowLight]
                    properties: "color"; duration: 100
                }
            },
            Transition{
                 from: "waitState"; to: "driveState"
                 PropertyAnimation{
                     targets: [redLight, yellowLight, greenLight]
                     properties: "color"; duration: 100
                 }
             },
            Transition{
                 from: "driveState"; to: "slowState"
                 PropertyAnimation{
                     targets: [greenLight, yellowLight]
                     properties: "color"; duration: 100
                 }
             },
            Transition{
                 from: "slowState"; to: "stopState"
                 PropertyAnimation{
                     targets: [yellowLight, redLight]
                     properties: "color"; duration: 100
                 }
             }
        ]


    }
}
