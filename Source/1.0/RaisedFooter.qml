import QtQuick 2.0

Item {
    property int dropHeight
    property alias color: footer.color
    property alias textColor: footer.textColor
    property alias text: footer.text

    anchors {
        bottom: parent.bottom
        horizontalCenter: parent.horizontalCenter
    }
    width: parent.width + 10

    RaisedHeader {
        id: footer
        dropHeight: -1 * parent.dropHeight
        anchors.fill: parent
    }
}
