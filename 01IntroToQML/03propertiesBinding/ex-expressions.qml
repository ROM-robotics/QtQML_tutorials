import QtQuick 2.0

Item {
    width: 300; height: 115;

    TextInput{ //Text
        id: textElement
        x: 50; y: 25
        text: "Rom Robotics"
        font.family: "Helvetica"; font.pixelSize: 50
    }
    Rectangle {
        x: 50; y: 79; height: 5
        width: textElement.width
        color: "green"
    }
    // This is property binding.
}
