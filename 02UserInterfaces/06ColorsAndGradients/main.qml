import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            x:0; y:0; width: 100; height: 100; color: "#ff0000"
        }
        Rectangle {
            x:100; y:0; width: 100; height: 100; color: Qt.rgba(0,0.75,0,1)
        }
        Rectangle {
            x:200; y:0; width: 100; height: 100; color: "blue"
        }

        Rectangle {
            x:300; y:0; width: 100; height: 100;

            rotation: 45
            scale: 1.5
            gradient: Gradient {
                GradientStop {
                    position: 0.0; color: "green"

                }
                GradientStop {
                    position: 0.5; color: "yellow"
                }
                GradientStop {
                    position: 1.0; color: "blue"
                }
            }
        }

        // Qt 5.12 မှစပြီး gradient ကို vertical horizontal ပြောင်းလို့ရပါသည်။
        // gradient ဟာ opengl နဲ့ gpu အသုံးပြုမှုရှိလို့ 8bit color ပဲရှိတယ့် mcu လိုကောင်မျိုးမှာအဆင်မပြေနိုင်ဘူး
        // ဒါကြောင့် ရှေးကတည်းက ပုံတွေသုံးခဲ့တယ်။
        // dithering ဆိုတာကိုလည်း လေ့လာသင့်တယ်။
    }
}
