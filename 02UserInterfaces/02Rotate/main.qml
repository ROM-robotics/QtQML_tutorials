import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 400; height: 400
        color: "#00a3fc"

        Rectangle{
            color: "red"
            width: smallArm.width; height: smallArm.height
            x: 150; y: 150

            Image{
                id: smallArm
                source: "smallArm.png"
                scale: 1.0   // view အနေနဲ့ပဲ scal ဖြစ်မယ်။ smallArm ရဲ့ size က မူရင်း size ပဲ။ ဒါကို backaground အဖြစ် parent rectangle မှာတွေ့ရမယ်။
                rotation: 45 // origin က width/2, height/2
                // အဲ့တာကို မကြိုက်ရင်
                //transformOrigin:  Item.topLeft သေချာအောင် documentation ကြည့်ပါ။
            }
        }
    }
}
