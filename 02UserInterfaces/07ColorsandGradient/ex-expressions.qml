 import QtQuick 2.9

// gradient တွက်တာက gpu သုံးရင် မြန်ပါတယ်။ 8bit 16bit display မျိုးအတွက်ဆိုရင်တော့ gradient photo နဲ့ အစားထိုးတာရင် ကောင်းပါလိမ့်မယ်။
Item {
    id: root

    Rectangle{
        x:0 ; y: 0; width: 100; height: 100; color: "#ff0000"
    }
    Rectangle{
        x:100 ; y: 0; width: 100; height: 100; color: "#00ff00"
    }
    Rectangle{
        x:200 ; y: 0; width: 100; height: 100; color: "#0000ff"
    }
    Rectangle{
        x: 300; y: 0; width: 100; height: 100
        gradient: Gradient{
            GradientStop{
                position: 0.0; color: "green"
            }
            GradientStop{
                position: 1.0; color: "blue"
            }
        }
    }
    Rectangle{
        x: 400; y: 0; width: 100; height: 100
        gradient: Gradient{
            GradientStop{
                position: -0.50; color: "green"
            }
            GradientStop{
                position: 0.8; color: "blue"
            }
        }
    }
    Rectangle{
        x: 500; y: 0; width: 100; height: 100
        rotation: 45
        scale: 1.5
        gradient: Gradient{
            GradientStop{
                position: 0.0; color: "green"
            }
            GradientStop{
                position: 0.5; color: "yellow"
            }
            GradientStop{
                position: 1.0; color: "blue"
            }
        }
    }
}
