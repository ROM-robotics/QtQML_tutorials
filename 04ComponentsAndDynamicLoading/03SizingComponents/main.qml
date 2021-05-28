import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")


    Row {
        id: topButtonRow

        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        spacing: 20
        Button{
            width: 300
            text: "Open"
        }
        Button{
            width: 300
            text: "Close"
        }
    }

    Rectangle{
        id: content
        color: "lightsteelblue"
        anchors {
            top: topButtonRow.bottom
            bottom: bottomButtonRow.top
            left: parent.left
            right: parent.right
        }

        Button{
            id: contentButton
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
            }
            height: 100
            text: "Test"
        }

        Rectangle{
            anchors{
                left: contentButton.right
                verticalCenter: contentButton.verticalCenter
            }

            height: contentButton.height
            width:50
            color: "red"
        }
    }

    Row{
        id: bottomButtonRow

        anchors{
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }

        spacing: 20

        Button{
            text: "OK"
        }
        Button{
            text: "Cancel"
        }
    }
}
