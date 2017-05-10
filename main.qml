import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#cdc9c9"
    title: qsTr("Unbeliavable Traffic Simulator")

    Rectangle {
        id: road
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
        border.width: 2
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: roadMA
            width: 57
            height: 76
            hoverEnabled: true
            onEntered: {
                road.color = "#a19e9e"
            }
            onExited: {
                road.color = "#cdc9c9"
            }
            onClicked: {
                roadAtt.visible = true
                roundaboutAtt.visible = false
                sourceAtt.visible = false
            }
        }
        Image {
            id: imageRoad
            x: 4
            y: 13
            width: 50
            height: 50
            source: "Images/Desktop/UTS/Resim/roadb.png"
        }
    }
    Rectangle {
        id: roadAtt
        y: 329
        height: 151
        color: "#cdc9c9"
        border.width: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: run.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        visible: false
        Text {
            id: roadAText
            x: 278
            y: 69
            text: qsTr("Road")
            visible: true
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: roundabout
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
        border.width: 2
        anchors.top: toolbar.bottom
        anchors.topMargin: 73
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: roundaboutMA
            x: 0
            y: 0
            width: 57
            height: 76
            hoverEnabled: true
            onEntered: {
                roundabout.color = "#a19e9e"
            }
            onExited: {
                roundabout.color = "#cdc9c9"
            }
            onClicked: {
                roadAtt.visible = false
                roundaboutAtt.visible = true
                sourceAtt.visible = false
            }
        }
        Image {
            id: imageRoundabout
            x: 4
            y: 13
            width: 50
            height: 50
            source: "Images/Desktop/UTS/Resim/roundb.png"
        }
    }
    Rectangle {
        id: roundaboutAtt
        y: 329
        height: 151
        color: "#cdc9c9"
        border.width: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        visible: false
        anchors.right: run.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        Text {
            id: roundaboutAText
            x: 256
            y: 69
            text: qsTr("Round About")
            visible: true
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: sourceid
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
        border.width: 2
        anchors.top: toolbar.bottom
        anchors.topMargin: 146
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: sourceMA
            x: 0
            y: 0
            width: 57
            height: 76
            onClicked: {
                roadAtt.visible = false
                roundaboutAtt.visible = false
                sourceAtt.visible = true
            }
        }
    }
    Rectangle {
        id: sourceAtt
        y: 329
        height: 151
        color: "#cdc9c9"
        border.width: 1
        visible: false
        anchors.right: run.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0


        Text {
            id: sourceAText
            x: 273
            y: 69
            text: qsTr("Source")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: toolbar
        height: 22
        color: "#cdc9c9"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        Rectangle {
            id: fileNew
            x: 0
            y: 0
            width: 57
            height: 22
            color: "#cdc9c9"
            Text {
                id: fileNewText
                x: 17
                y: 0
                width: 23
                height: 22
                text: qsTr("New")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
            MouseArea {
                id: newMA
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileNew.color = "#a19e9e"
                }
                onExited: {
                    fileNew.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: fileOpen
            x: 58
            y: 0
            width: 57
            height: 22
            color: "#cdc9c9"
            Text {
                id: fileOpenText
                x: 17
                y: 0
                width: 23
                height: 22
                text: qsTr("Open")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
            MouseArea {
                id: openMA
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileOpen.color = "#a19e9e"
                }
                onExited: {
                    fileOpen.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: fileSave
            x: 116
            y: 0
            width: 57
            height: 22
            color: "#cdc9c9"
            Text {
                id: fileSaveText
                x: 17
                y: 0
                width: 23
                height: 22
                text: qsTr("Save")
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }
            MouseArea {
                id: saveMA
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileSave.color = "#a19e9e"
                }
                onExited: {
                    fileSave.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: fileExit
            x: 174
            y: 0
            width: 57
            height: 22
            color: "#cdc9c9"
            Text {
                id: fileExitText
                x: 17
                y: 0
                width: 23
                height: 22
                text: qsTr("Exit")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
            }
            MouseArea {
                id: exitMA
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileExit.color = "#a19e9e"
                }
                onExited: {
                    fileExit.color = "#cdc9c9"
                }
                onClicked: {
                    window.close()
                }
            }
        }
    }

    Rectangle {
        id: paintarea
        color: "#ffffff"
        border.width: 2
        anchors.bottom: roadAtt.top
        anchors.bottomMargin: 0
        anchors.right: road.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
    }

    Rectangle {
        id: run
        x: 583
        width: 57
        height: 64
        color: "green"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 242
        border.width: 2
        MouseArea {
            id: runMA
            x: 1
            y: 1
            width: 56
            height: 63
        }
        Text {
            id: runText
            x: 19
            y: 26
            text: qsTr("Run")
            font.pixelSize: 12
        }
    }
}
