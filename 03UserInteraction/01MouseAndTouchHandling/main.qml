import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("ROM ROBOTICS")

    Rectangle{
        width: 400; height: 300
        color: "lightblue"

        Text {
            text: "Press me"
            x: 100; y: 100
            MouseArea{
                anchors.fill: parent
                onPressed: parent.color = "green"
                onReleased: parent.color= "black"
            }
        }

        Text {
            text: "Click me"; font.pixelSize: 48
            x: 100; y: 200
            color: mouseArea.pressed ? "green" : "black"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
                //onClicked: parent.font.bold = !parent.font.bold
            }
        }


    }
}
