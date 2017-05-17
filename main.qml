import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    id: window
    visible: true
    width: 720
    height: 540
    color: "#f7f6f6"
    title: qsTr("Unbeliavable Traffic Simulator")

    Connections{
            target: toLineObject
            onPassPointsToPaintMouseArea:{
                if(paintMouseArea.secondPressed==false){
                paintCanvas.firstX = x
                paintCanvas.firstY = y
                }
                else{
                paintCanvas.lastX = x
                paintCanvas.lastY = y
                }
            }
        }

    Rectangle {
        id: road
        x: 635
        y: 24
        width: 85
        height: 100
        color: "#cdc9c9"
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
            x: 18
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
        y: 120
        width: 85
        height: 100
        color: "#cdc9c9"
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
            y: 7
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
        y: 215
        width: 85
        height: 100
        color: "#cdc9c9"
        enabled: true
        smooth: true
        transformOrigin: Item.Center
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
        width: 720
        height: 24
        color: "#cdc9c9"
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

    Rectangle{
        id:paintArea
        width : 635
        height: 361
        color: "#BDBDBD"
        border.color: "#848484"
        property bool createRoad: false
        x: 0
        y: 24
        MouseArea {
            id:paintMouseArea
            anchors.fill:paintArea
            property bool secondPressed: false
            onPressed:{
                if(secondPressed==false){
                    paintCanvas.firstX = mouseX
                    paintCanvas.firstY = mouseY
                    secondPressed = true
                    paintArea.createRoad = true;
                    toLineObject.getPointsFromPaintMouseArea(paintCanvas.firstX,paintCanvas.firstY)
                    toLineObject.getRoadCreator(paintArea.createRoad)
                }
                else if(secondPressed==true){
                    paintCanvas.lastX = mouseX
                    paintCanvas.lastY = mouseY
                    toLineObject.getPointsFromPaintMouseArea(paintCanvas.lastX,paintCanvas.lastY)
                    paintCanvas.requestPaint()
                    secondPressed = false
                }
            }
        }
    }
    Canvas {
        id:paintCanvas
        anchors.fill:paintArea
        property int firstX: 0
        property int firstY: 0
        property int lastX: 0
        property int lastY: 0
        property bool reset: false
        onPaint: {
            var ctx = paintCanvas.getContext('2d');
            ctx.beginPath();
            ctx.strokeStyle = "black"
            ctx.strokeWidth = 2
            ctx.fillStyle = "white"
            ctx.arc(firstX,firstY,5,Math.PI * 0, Math.PI * 2, false)
            ctx.fill();
            ctx.moveTo(firstX,firstY)
            ctx.lineTo(lastX,lastY)
            ctx.stroke();
            if(reset){
                ctx.reset();
                reset=false
            }
        }
    }

    Rectangle {
        id: run
        x: 635
        y: 315
        width: 85
        height: 36
        color: "#008000"
        border.width: 2
        MouseArea {
            id: runMA
            x: 1
            y: 1
            width: 84
            height: 35
            hoverEnabled: true
            onEntered: {
                run.color = "#165c15"
            }
            onExited: {
                run.color = "#008000"
            }
        }
        Text {
            id: runText
            x: 30
            y: 10
            height: 20
            text: qsTr("Run")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
    }

    Rectangle {
        id: clear
        x: 635
        y: 351
        width: 85
        height: 34
        color: "#cdc9c9"
        border.width: 2
        MouseArea {
            id: clearMA
            width: 85
            height: 34
            hoverEnabled: true
            onEntered: {
                clear.color = "#a19e9e"
            }
            onExited: {
                clear.color = "#cdc9c9"
            }
            onClicked: {
                paintCanvas.reset = true
                paintCanvas.requestPaint()
            }
        }
        Text {
            id: clearText
            x: 29
            y: 9
            text: qsTr("Clear")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14
        }
    }
}
