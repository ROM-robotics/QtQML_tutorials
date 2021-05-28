import QtQuick 2.0

Item {
    id: root

    property alias text: label.text

    implicitWidth: label.implicitWidth + __margin * 2
    implicitHeight: background.implicitHeight

    readonly property int __margin: 35

    BorderImage {
        id: background
        source: "button.png"
        border { left: root.__margin; right: root.__margin }
        Text {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 30
        }
    }
}
