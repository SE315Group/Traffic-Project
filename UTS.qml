import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#a19e9e"
    title: qsTr("Unbeliavable Traffic Simulator")

    Rectangle {
        id: road
        x: 583
        width: 57
        height: 76
        color: "#a19e9e"
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        MouseArea {
            id: roadMA
            x: 0
            y: 0
            width: 57
            height: 76
            Image {
                id: imageRoad
                x: 0
                y: 0
                width: 57
                height: 76
                source: "../../Desktop/roadb.png"
            }
        }
    }
    Rectangle {
        id: roundabout
        x: 583
        width: 57
        height: 76
        color: "#a19e9e"
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
        }
        Image {
            id: imageRoundAbout
            x: 0
            y: 0
            width: 57
            height: 76
            source: "../../Desktop/roundb.png"
        }
    }
    Rectangle {
        id: trafficlamp
        x: 583
        width: 57
        height: 76
        color: "#a19e9e"
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
        }
        Image {
            id: imageTrafficLamp
            x: 0
            y: 0
            width: 57
            height: 76
            source: "../../Desktop/ışıkb.png"
        }
    }
    Rectangle {
        id: crosswalk
        x: 583
        width: 57
        height: 76
        color: "#a19e9e"
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
        }
        Image {
            id: imageCrossWalk
            x: 0
            y: 0
            width: 57
            height: 76
            source: "../../Desktop/walkb.png"
        }
    }
    Rectangle {
        id: paintarea
        color: "#ffffff"
        anchors.bottom: properties.top
        anchors.bottomMargin: 1
        anchors.right: road.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 0
        Text {
            id: paintareatext
            anchors.centerIn: paintarea
            text: "Paint Area"
            color: "black"
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
            id: filenew
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
                id: mouseAreaNew
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    filenew.color = "#a19e9e"
                }
                onExited: {
                    filenew.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: fileopen
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
                id: mouseAreaOpen
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileopen.color = "#a19e9e"
                }
                onExited: {
                    fileopen.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: filesave
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
                id: mouseAreaSave
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    filesave.color = "#a19e9e"
                }
                onExited: {
                    filesave.color = "#cdc9c9"
                }
            }
        }
        Rectangle {
            id: fileexit
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
                id: mouseAreaExit
                x: 0
                y: 0
                width: 57
                height: 22
                hoverEnabled: true
                onEntered: {
                    fileexit.color = "#a19e9e"
                }
                onExited: {
                    fileexit.color = "#cdc9c9"
                }
                onClicked: {
                    window.close()
                }
            }
        }
    }
    Rectangle {
        id: properties
        y: 330
        height: 150
        color: "#f5421c"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: road.left
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
    Rectangle {
        id: run
        height: 75
        color: "#a19e9e"
        anchors.left: properties.right
        anchors.leftMargin: 3
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.top: toolbar.bottom
        anchors.topMargin: 337
        MouseArea {
            id: runMA
            x: 0
            y: 0
            width: 51
            height: 75
        }
        Text {
            id: textRun
            x: 8
            y: 53
            width: 35
            height: 17
            text: qsTr("Run")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
        Image {
            id: image
            x: 8
            y: 8
            width: 35
            height: 39
            source: "../../Desktop/run.png"
        }
    }
}
