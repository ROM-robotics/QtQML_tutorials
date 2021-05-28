import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

   Rectangle{
       width: 300
       height: 100
       // --> slide
       Loader {
           id: loader
           source: "LineEdit.qml"
           anchors { left: parent.left; right: parent.right; top: parent.top }
       } // --> slide
   }
}
