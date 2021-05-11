 import QtQuick 2.9

Rectangle{
    id: root
    color: "lightgrey"
    width: 500
    height: 500
    Item {
        property int _minSide:Math.min(root.width, root.height)
        x: 10 + (root.width - _minSide)/2
        y: 10 + (root.height- _minSide)/2
        width: _minSide - 20
        height: _minSide - 20

        scale: Math.min(width/background.sourceSize.width, height/background.sourceSize.height)
        transformOrigin: Item.TopLeft
        Image {
            id: background
            source: "../images/background.png"
        }
        Image {
            id: smallArm
            source: "../images/smallArm.png"
            x: background.width/2 - width/2
            y: background.height/2 - 914
            transform: Rotation{
                origin.x: smallArm.width/2
                origin.y: 914

                RotationAnimation on angle{
                    from: 0
                    to: 360*2 // two round trips in a day
                    duration: 60000
                    loops:Animation.Infinite
                }
            }
        }
        Image {
            id: largeArm
            source: "../images/largeArm.png"
            x: background.width /2 - width/2
            y: background.height/2 - 1255
            transform: Rotation{
                origin.x: largeArm.width/2
                origin.y: 1255
                angle: 90
                RotationAnimation on angle{
                    from: 0
                    to: 360*2    // 24 hours in a day
                    duration: 60000 // run through a complete day in one minute
                    loops: Animation.Infinite
                }
            }
        }
    }
}
