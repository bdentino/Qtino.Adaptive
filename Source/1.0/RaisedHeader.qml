import QtQuick 2.0

ShadowedRectangle {
    id: header

    property alias text: titleText.text
    property alias textColor: titleText.color
    property alias dropHeight: header.verticalOffset

    implicitHeight: 200
    implicitWidth: 600

    anchors {
        top: parent.top
        horizontalCenter: parent.horizontalCenter
    }
    width: parent.width + 10

    verticalOffset: 4
    horizontalOffset: 0
    z: 1

    Text {
        id: titleText
        color: '#ccc'
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 5
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.bold: true
        font.family: "GE Inspira"
        font.pixelSize: header.height * 0.4
    }
}
