import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    Connections {
        target: guiManager
        onPassPointsToPaintMouseAreaRoad1 : {
            paintCanvas.firstX = x
            paintCanvas.firstY = y
        }
        onPassPointsToPaintMouseAreaRoad2 : {
            paintCanvas.lastX = x
            paintCanvas.lastY = y
        }
    }

    Rectangle {
        id : paintRectangle
        visible: true
        width: 400
        height: 400
        color : 'grey'
        Canvas {
            id: paintCanvas
            anchors.fill:paintRectangle
            property int firstX: 0
            property int firstY: 0
            property int lastX: 0
            property int lastY: 0
            onPaint: {
                var ctx = paintCanvas.getContext("2d")
                ctx.strokeStyle = "black"
                ctx.moveTo(firstX,firstY)
                ctx.lineTo(lastX,lastY)
                ctx.stroke()
            }
        }
        MouseArea {
            id:mouseArea
            anchors.fill : paintRectangle
            property bool secondPressed: false
            onPressed: {
                if(secondPressed==false){
                    paintCanvas.firstX = mouseX
                    paintCanvas.firstY = mouseY
                    guiManager.getPointsFromPaintMouseAreaForRoad1(paintCanvas.firstX,paintCanvas.firstY)
                    secondPressed = true
                }
                else if(secondPressed){
                    paintCanvas.lastX = mouseX
                    paintCanvas.lastY = mouseY
                    guiManager.getPointsFromPaintMouseAreaForRoad2(paintCanvas.lastX,paintCanvas.lastY)
                    paintCanvas.requestPaint()
                    secondPressed = false
                }
            }
        }
    }

}
