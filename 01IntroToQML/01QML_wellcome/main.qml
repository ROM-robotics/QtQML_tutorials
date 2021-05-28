import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        x: 100; y: 50
        height: 100
        width: foo()
        color: "lightblue"

        function foo() {
            console.log("hello world", height)
            return height*2
        }
    }

    Rectangle{
        x:100; y:120; z: -1
        height: 100
        width: height*2
        color: "green"
    }

}
// check reference documentation with F1
// child တွေရဲ့ စမှတ်ဟာ parent ပါပဲ။
