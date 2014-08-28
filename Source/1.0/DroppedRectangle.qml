import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: shadowedRect

    property alias horizontalOffset: rectShadow.horizontalOffset
    property alias verticalOffset: rectShadow.verticalOffset
    property alias color: rect.color
    property alias radius: rect.radius
    property alias border: rect.border
    property double shadowOpacity: 1

    implicitHeight: 500
    implicitWidth: 500

    Item {
        id: container;
        anchors.centerIn: parent;
        width:  rect.width  + (4 * rectShadow.radius);
        height: rect.height + (4 * rectShadow.radius);

        Rectangle {
            id: rect
            width: shadowedRect.width
            height: shadowedRect.height
            radius: 0;
            color: '#333'
            anchors.centerIn: parent
            border.width: 0
            border.color: rect.color
        }
        opacity: 1 - shadowOpacity
    }


    InnerShadow {
        id: rectShadow;
        anchors.fill: source
        cached: true;
        radius: 8.0;
        samples: 16;
        color: "#80000000";
        smooth: true;
        source: container;
        horizontalOffset: 5
        verticalOffset: 5
        spread: 0

        Behavior on verticalOffset { NumberAnimation { duration: 300 } }
        Behavior on horizontalOffset { NumberAnimation { duration: 300 } }
        opacity: shadowOpacity
    }
}
