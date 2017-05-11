import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 720
    height: 540
    color: "#f7f6f6"
    title: qsTr("Unbeliavable Traffic Simulator")

    Rectangle {
        id: road
        x: 635
        width: 85
        height: 100
        color: "#cdc9c9"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
        border.width: 2
        MouseArea {
            id: roadMA
            x: 0
            y: 0
            width: 85
            height: 100
            hoverEnabled: true
            onEntered: {
                road.color = "#a19e9e"
            }
            onExited: {
                road.color = "#cdc9c9"
            }
        }
        Image {
            id: imageRoad
            x: 20
            y: 8
            width: 50
            height: 50
            source: "Images/Desktop/UTS/Resim/roadb.png"
        }

        Text {
            id: roadText
            x: 17
            y: 64
            width: 52
            height: 20
            text: qsTr("Road")
            textFormat: Text.PlainText
            verticalAlignment: Text.AlignVCenter
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
    }

    Rectangle {
        id: roundabout
        x: 635
        width: 85
        height: 100
        color: "#cdc9c9"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 99
        border.width: 2
        MouseArea {
            id: roundaboutMA
            x: 0
            y: 0
            width: 85
            height: 100
            hoverEnabled: true
            onEntered: {
                roundabout.color = "#a19e9e"
            }
            onExited: {
                roundabout.color = "#cdc9c9"
            }
        }
        Image {
            id: imageRoundabout
            x: 18
            y: 8
            width: 50
            height: 50
            source: "Images/Desktop/UTS/Resim/roundb.png"
        }

        Text {
            id: roundaboutText
            x: 4
            y: 64
            height: 20
            text: qsTr("Roundabout")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
    }

    Rectangle {
        id: sourceid
        x: 635
        width: 85
        height: 100
        color: "#cdc9c9"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 198
        border.width: 2
        MouseArea {
            id: sourceMA
            x: 0
            y: 0
            width: 85
            height: 100
            hoverEnabled: true
            onEntered: {
                sourceid.color = "#a19e9e"
            }
            onExited: {
                sourceid.color = "#cdc9c9"
            }
        }

        Text {
            id: sourceText
            x: 22
            y: 63
            height: 20
            text: qsTr("Source")
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Rectangle {
        id: toolbar
        height: 22
        color: "#cdc9c9"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        border.width: 0
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
        height: 347
        color: "#ffffff"
        anchors.right: road.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
        border.width: 2
    }

    Rectangle {
        id: run
        x: 635
        width: 85
        height: 50
        color: "green"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 297
        border.width: 2
        MouseArea {
            id: runMA
            x: 1
            y: 1
            width: 84
            height: 47
        }
        Text {
            id: runText
            x: 30
            y: 14
            height: 20
            text: qsTr("Run")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
    }
}
