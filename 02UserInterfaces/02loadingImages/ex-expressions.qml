 import QtQuick 2.9

Image{
    id: image
    width: 1000;height: 1000
    source: "https://eoimages.gsfc.nasa.gov/images/imagerecords/74000/74393/world.topo.200407.3x5400x2700.jpg"
    fillMode: Image.PreserveAspectFit
    Rectangle{
        color: "red"
        x: 0; y: 950;
        height:10
        width: 1000*image.progress
        visible: image.progress !=1 // progress မပြီးသေးရင် bar နဲ့ ပြပေးမယ်။
    }
}
