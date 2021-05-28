import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        x: 100; y: 50
        width: height*2; height: 100
        // ဒီမှာ height ဆိုတဲ့ကောင်က Window ရဲ့ height မဟုတ်ဘူး။ local scope ဖြစ်တဲ့
        // Rectangle ထဲက height ပဲဖြစ်ပါတယ်။ parent ရဲ့ width ကိုသုံးဖို့ဆို အောက်ပါအတိုင်းသုံးပါ။
        // width: myWindow.height
        color: "lightblue"
    }

    Text {
        id: myText
        text: "ROM ROBOTICS"
        x: 150; y: 150
        font.family: "Helvetica"; font.pixelSize: 50
    }
    Rectangle {
        x:150; y:208
        width: myText.width; height: 2
        color: "green"
    }

    TextInput {
        id: myTextInput
        text: "ROM ROBOTICS"
        x: 150; y: 250
        font.family: "Helvetica"; font.pixelSize: 50
    }
    Rectangle {
        x:150; y:308
        width: myTextInput.width; height: 2    // ဒါက property  binding ပဲ။ signal slot ထက် ပိုရိုးရှင်းတယ်။
        color: "green"
    }
}
