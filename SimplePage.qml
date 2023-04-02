import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    id: root

    property alias backgroundColor: backgroundRect.color
    property alias buttonText: navButton.text
    property alias textTitle: textLabel.text
    property int widthButton: navButton.width
    property int posXButton: 0

    signal buttonClicked();

    background: Rectangle {
        id: backgroundRect
        height: parent.height - backgroundTitlePage.height
        y: parent.height - backgroundTitlePage.height * 4 + 0.1
    }

    Button {
        id: navButton
        anchors.bottom: parent.bottom
        anchors.margins: defMargin

        x: root.posXButton

        width: parent.width / 4
        height: parent.height / 15

        font.pointSize: ((parent.width + parent.height) / 150) + 1

        onClicked: {
            root.buttonClicked();
        }
    }

    Rectangle {
        id: backgroundTitlePage

        width: parent.width
        height: parent.height / 5
        color: Qt.darker(backgroundRect.color)

        opacity: 0.5

        Text {
            id: textLabel
            font.pointSize: ((parent.width + parent.height) / 20) + 1
            anchors.centerIn: parent
            color: Qt.lighter(backgroundRect.color)

        }
    }

}
