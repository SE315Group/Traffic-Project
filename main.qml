import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 800
    height: 480

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

    Rectangle{
        id:paintArea
        width : 500
        height: 300
        color: "#BDBDBD"
        border.color: "#848484"
        property bool createRoad: false
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
    Button {
        id:clear
        anchors.left: paintArea.right
        text:"deneme"
        onClicked: {
            paintCanvas.reset = true
            paintCanvas.requestPaint()
    }
}
    Button {
        id:roadButton
        anchors.left: paintArea.right
        anchors.top: clear.bottom
        text:"Road"
        onClicked: {

        }
    }
}
