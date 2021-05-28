import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: image
        width: 640; height: 480
        source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
        fillMode: Image.PerserveAspectFit

        Rectangle {
            color: "red"
            x: 0; y: 475
            height: 5; width: 1000*image.progress
            visible: image.progress !=1
        }
        onStateChanged: console.log(sourceSize)
    }
}

//AnimatedImage{}
