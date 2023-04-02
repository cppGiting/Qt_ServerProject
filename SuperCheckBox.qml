import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Item {
    id: root

    property alias text: textTitle.text

    signal clicked();

    Rectangle {
        id: checkBox

        property bool isClicked: false

        color: isClicked ? "black" : "white"

        width: parent.width / 4
        height: parent.height / 5

        opacity: isClicked ? 0.4 : 0.9

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked();
                checkBox.isClicked = !checkBox.isClicked;
            }
        }
    }

    Text {
        id: textTitle
        x: checkBox.width + checkBox.width / 2
        y: checkBox.y - checkBox.height / 2.5
        font.pointSize: parent.width / 10 + parent.height / 10

    }
}
