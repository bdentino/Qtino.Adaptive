import QtQuick 2.2

MouseArea {
    id: iconButton

    property string defaultIconSource
    property string pressedIconSource: defaultIconSource
    property color textColor: 'black'
    property string text


    Item {
        id: bgItem
        anchors.fill: parent
        Image {
            id: iconArea
            anchors.top: parent.top
            height: parent.height - labelText.height - 5
            width: height
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 5
            sourceSize: Qt.size(width, height)
            source: iconButton.pressed ? Qt.resolvedUrl(iconButton.pressedIconSource)
                                    : Qt.resolvedUrl(iconButton.defaultIconSource)
        }
        Text {
            id: labelText
            text: iconButton.text
            color: textColor
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            height: Text.paintedHeight
            font.family: "Avenir Next"
            font.pixelSize: parent.height * 0.25
            clip: true
        }
        clip: true
    }
}
