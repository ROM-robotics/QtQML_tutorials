 import QtQuick 2.9

Rectangle{
    width: 400; height: 400
    color: "#00a3fc"
    Image{
        x: 150; y: 500
        source: "../images/rocket.png"
        width: sourceSize.width*0.5     // Image ရဲ့ property  သိဖို့ F1 နဲ့ help ဖိုင်ကိုကြည့်ပါ။
        height: sourceSize.height*0.5
        Component.onCompleted: console.log(width, height, sourceSize)
    }
}
