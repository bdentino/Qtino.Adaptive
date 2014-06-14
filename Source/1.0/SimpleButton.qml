import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

Button {
    style: ButtonStyle {
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 50
            color: control.pressed ? 'darkgrey' : 'grey'
            radius: 10
        }
        label: Text {
            anchors.centerIn: parent
            text: control.text
            font.family: "GE Inspira"
            font.pointSize: 20
            color: control.pressed ? 'white' : 'black'
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
