 import QtQuick 2.9
/* OPACITY
Rectangle{
    color: "blue"
Rectangle{
    x: 50; y: 50; width: 200; height: 300
    color: "white"
    opacity: 0.5
    Rectangle{
        x: 100; y: 25; width: 200; height: 50
        color: "red"
        opacity: 0.5    // opacity က inheritance ဖြစ်တယ်။
    }
    Rectangle{
        x: 100; y: 90; width: 200; height: 50
        color: "red"    // opacity က inheritance ဖြစ်တယ်။
    }
}

Rectangle{
    x: 150; y: 210; width: 200; height: 50
    color: "red"
    opacity: 0.5
}
Rectangle{
    x: 150; y: 275; width: 200; height: 50
    color: "red"   // opacity က inheritance ဖြစ်တယ်။
}
}
*/

Rectangle {
    width: 400; height: 400
    color: "#00a3fc"
    Rectangle {
        color: "red"
        width: rocket.width
        height: rocket.height
        x: 150; y: 150
        //clip: true
        Image {
            id: rocket
            source: "../images/rocket.png"
            width: sourceSize.width * 0.3
            height: sourceSize.height * 0.3
//            scale: 1.5        //
            rotation: 45.0
            transformOrigin: Item.TopLeft

        }
    }
}










