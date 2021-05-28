import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    color: "white"
    width: 400
    height: 150
    visible: true
    title: qsTr("Hello World")

    Column{
        id: column
        anchors.verticalCenter: parent.verticalCenter;
        spacing: 15
        width: parent.width

        InputField{
            id:firstName
            focus: true
            title: "First Name"
            KeyNavigation.down: lastName
            anchors { left: parent.left; right: parent.right; leftMargin: 10; rightMargin: 10}
        }
        InputField{
            id:lastName
            title: "Last Name"
            KeyNavigation.up: firstName
            anchors { left: parent.left; right: parent.right; leftMargin: 10; rightMargin: 10}
        }


    }
}
