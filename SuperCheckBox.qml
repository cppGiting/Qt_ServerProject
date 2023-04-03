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

        color: "white"

        width: parent.width / 4
        height: parent.height / 5

        opacity: objData.getCheckBoxPress() ? 0.4 : 0.9

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked();
                objData.setCheckBoxPress(!objData.getCheckBoxPress());
                checkBox.color = objData.getCheckBoxPress() ? "black" : "white";
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
