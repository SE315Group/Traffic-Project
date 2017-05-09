import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#a9ccd6"
    title: qsTr("Unbeliavable Traffic Simulator")

    Rectangle {
        id: road
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
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
                trafficlampAtt.visible = false
                crosswalkAtt.visible = false
            }
        }
        Image {
            id: imageRoad
            x: 8
            y: 13
            width: 41
            height: 51
            source: "../../Desktop/UTS/Resim/roadb.png"
        }
    }
    Rectangle {
        id: roadAtt
        y: 329
        height: 151
        color: "#cdc9c9"
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
        anchors.top: toolbar.bottom
        anchors.topMargin: 77
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
                trafficlampAtt.visible = false
                crosswalkAtt.visible = false
            }
        }
        Image {
            id: imageRoundabout
            x: 8
            y: 14
            width: 41
            height: 49
            source: "../../Desktop/UTS/Resim/roundb.png"
        }
    }
    Rectangle {
        id: roundaboutAtt
        y: 329
        height: 151
        color: "#cdc9c9"
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
        id: trafficlamp
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
        anchors.top: toolbar.bottom
        anchors.topMargin: 154
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: trafficlampMA
            x: 0
            y: 0
            width: 57
            height: 76
            hoverEnabled: true
            onEntered: {
                trafficlamp.color = "#a19e9e"
            }
            onExited: {
                trafficlamp.color = "#cdc9c9"
            }
            onClicked: {
                roadAtt.visible = false
                roundaboutAtt.visible = false
                trafficlampAtt.visible = true
                crosswalkAtt.visible = false
            }
        }
        Image {
            id: imageTrafficlamp
            x: 8
            y: 14
            width: 41
            height: 48
            source: "../../Desktop/UTS/Resim/ışıkb.png"
        }
    }
    Rectangle {
        id: trafficlampAtt
        y: 329
        height: 151
        color: "#cdc9c9"
        visible: false
        anchors.right: run.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: trafficlampAText
            x: 258
            y: 69
            text: qsTr("Traffic Lamp")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: crosswalk
        x: 583
        width: 57
        height: 76
        color: "#cdc9c9"
        anchors.top: toolbar.bottom
        anchors.topMargin: 231
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: crosswalkMA
            x: 0
            y: 0
            width: 57
            height: 76
            hoverEnabled: true
            onEntered: {
                crosswalk.color = "#a19e9e"
            }
            onExited: {
                crosswalk.color = "#cdc9c9"
            }
            onClicked: {
                roadAtt.visible = false
                roundaboutAtt.visible = false
                trafficlampAtt.visible = false
                crosswalkAtt.visible = true
            }
        }
        Image {
            id: imageCrosswalk
            x: 8
            y: 13
            width: 41
            height: 50
            source: "../../Desktop/UTS/Resim/walkb.png"
        }
    }
    Rectangle {
        id: crosswalkAtt
        y: 329
        height: 151
        color: "#cdc9c9"
        visible: false
        anchors.right: run.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: crosswalkAText
            x: 263
            y: 69
            text: qsTr("Cross Walk")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: toolbar
        height: 22
        color: "#cdc9c9"
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
        y: 373
        width: 57
        height: 64
        color: "#cdc9c9"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 43
        anchors.right: parent.right
        anchors.rightMargin: 0

        MouseArea {
            id: runMA
            x: 1
            y: 1
            width: 56
            height: 63
            hoverEnabled: true
            onEntered: {
                run.color = "#a19e9e"
            }
            onExited: {
                run.color = "#cdc9c9"
            }
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
