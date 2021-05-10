 import QtQuick 2.9

Rectangle {
    id: root
    width: 400; height:400;
    color: "grey"
    Rectangle{
        width: 300; height: 150;
        color: "lightblue"
        x: 50
        y: 50
        Rectangle{
            x: 50; y: 50
            width: 50; height: 50
            color: "white"
        }
        z: 1  // layer သဘာမျိုး ဒီ rectangle က အပေါ်ကရှိမယ်။
    }

    Rectangle{
        width: 300; height: 150;
        color: "green"
        x: 50
        y: 150
        Rectangle{
            x: -10; y: 50    // child ဟာ parent ရဲ့ အပြင်ကိုသွားခွင့်ရှိတယ်။
            width: 150; height: 50
            color: "blue"
        }
        clip: true    // clip true ဆိုရင်တော့ အပြင်ရောက်နေတဲ့ child ကိုဖြတ်ချမယ်။
    }
}  // ဒီ code က maintainable မဖြစ်ဘူး အဲ့တော့ id : root ပေးပြီး variables များအသုံးပြုပါ။
