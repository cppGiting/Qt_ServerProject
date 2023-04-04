import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Rectangle {

    property int w: 0
    property int h: 0
    property int sumWH: (w + h ) / 2

    property string idClient: "0"
    property string status: "no active"

    border.width: sumWH / 1000 // (w + h) / 2 - Общее число чтобы менялось от height и width
    radius: sumWH / 35
    border.color: status == "active" ? "green" : "red"
    opacity: 0.8

    height: h / 10
    x: w / 100
    Text {
        font.pointSize: sumWH / 80 + 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: w / 100
        anchors.topMargin: h / 200
        text: status
    }

    Text {
        font.pointSize: sumWH / 50 + 1
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: w / 15
        anchors.topMargin: h / 200
        text: idClient
    }
}
