import QtQuick 2.12
import QtQuick.Window 2.12

Window{
    visible: true
    width: 400;height: 400
Item {
    id: root
    anchors.fill: parent

    Rectangle{
        id: myRect
        color: "lightblue"
        x: 100; y: 100
        width: 200; height: 100

        Text {
            anchors.centerIn: parent
            text: "State: "+ root.state +"\ny: "+myRect.y
            font.pixelSize: 20
        }

        MouseArea{
            anchors.fill: parent
            onClicked:
                switch (root.state) {
                    case "stateA": root.state = "stateB"; break
                    case "stateB": root.state = "stateC"; break
                    case "":
                    case "stateC": root.state = "stateA"; break
                }
        }
    }

    states: [
        State{
            name: "stateA"
            PropertyChanges{
                target: myRect
                x: 200
                y: 200
                color: "red"
            }
        },
        State{
            name: "stateB"
            PropertyChanges{
                target: myRect
                x: 0
                y: 150
                color: "cyan"
            }
        },
        State{
            name: "stateC"
            PropertyChanges{
                target: myRect
                x: 0
                color: "lightgreen"
            }
        }
    ]
}
}
