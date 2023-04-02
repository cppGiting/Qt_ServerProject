import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Server")

    opacity: visibleButton.vis ? 1 : 0.5

    property int defMargin: 10

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: pageOne
    }

    SimplePage {
        id: pageOne

        backgroundColor: "crimson"
        buttonText: "Connects clients"
        posXButton: parent.width - widthButton
        onButtonClicked: {
            stackView.push(pageTwo);
        }

        SuperCheckBox {
            id: superCheckBox
            text: "open port 65080"

            width: parent.width / 20 + parent.height / 20
            height: parent.height / 16 + parent.width / 16

            y: parent.height / 3
            x: (parent.width - width) / 3.35

        }

        textTitle: "Setting server"
        Button {
            text: "EXIT"
            id: exitButton
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.margins: defMargin

            x: root.posXButton

            width: parent.width / 4
            height: parent.height / 15

            font.pointSize: ((parent.width + parent.height) / 150) + 1

            onClicked: {
                Qt.exit(0);
            }
        }

        Button {
            id: visibleButton
            property bool vis: true

            text: vis ? "visible 100%" : "visible: 50%"

            anchors.bottom: exitButton.bottom
            anchors.left: parent.left
            anchors.margins: defMargin
            anchors.bottomMargin: parent.height / 15

            x: root.posXButton

            width: parent.width / 4
            height: parent.height / 15

            font.pointSize: ((parent.width + parent.height) / 150) + 1

            onClicked: {
                vis = !vis;
            }
        }

    }

    SimplePage {
        id: pageTwo

        backgroundColor: "silver"
        visible: false

        buttonText: "Settings server"
        textTitle: "Connects clients"

        onButtonClicked: {
            stackView.pop()
        }
    }

}
