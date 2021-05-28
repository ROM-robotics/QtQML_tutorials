import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: cellCount * itemSize
    height: cellCount * itemSize
    visible: true
    title: qsTr("Hello World")

    property int cellCount: 4
    property int itemSize: 80



        Rectangle{
            property int __row;
            property int __col;

            color: "blue"
            x: __col * root.itemSize
            y: __row * root.itemSize
            // --> hide
            focus: true
            Keys.onLeftPressed: __col = (__col + root.cellCount-1) % root.cellCount
            Keys.onRightPressed: __col = ( __col + 1) % root.cellCount
            Keys.onDownPressed: __row = (__row + 1) % root.cellCount
            Keys.onUpPressed: __row = (__row+root.cellCount-1) % root.cellCount
            // --> hide
        }

}
