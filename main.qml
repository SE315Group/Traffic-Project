import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
     Button{
         id:clear
         text: "Clear"
         anchors.right:parent.right
         onClicked:{
             canvas.clear();
         }
      Button {
          id:roundabout
          text:"za"
          anchors.top:clear.bottom
          onClicked:{
              canvas.status = 2
          }
      }
      Button {
          id:lineButton
          text:"Line"
          anchors.top:roundabout.bottom
          onClicked: {
              canvas.status = 1
          }
      }
     }

    Rectangle {
     id: baba
     visible: true
     width:300
     height:300
     color:"#BDBDBD"
     border.width:1
     border.color: "#848484"

    MouseArea {
      id:alan
      anchors.fill:baba

      onPressed:{
          canvas.currentX = mouseX
          canvas.currentY = mouseY
      }
      onPositionChanged: {

      }

      onReleased: {
          canvas.lastX = mouseX
          canvas.lastY = mouseY

          switch (canvas.status) {
          case 1 :
              canvas.line = true
              canvas.relased = true
              canvas.requestPaint()
              break;
          case 2 :
              canvas.roundAbout = true
              canvas.requestPaint()
              break;
           default:
               canvas.status=0
               break;
          }

          /*if(canvas.roundAbout){
              canvas.requestPaint();
          }
          else
          canvas.line = true
          canvas.relased=true
          canvas.requestPaint();
        */
      }

    }

     Canvas {
      id:canvas
      visible:true
      anchors.fill:baba
      property int lastX: 0
      property int lastY: 0
      property int currentX: 0
      property int currentY: 0
      property bool relased: false
      property bool roundAbout: false
      property bool line : false
      property int status : 0


      function clear(){
          var ctx = canvas.getContext("2d")
          ctx.reset();
          canvas.requestPaint();
      }

      onPaint: {
          var ctx = canvas.getContext("2d");
          if(line){
          ctx.strokeStyle = "black"
          ctx.lineWidth=1;
          ctx.beginPath();
          ctx.moveTo(currentX,currentY);
          ctx.lineTo(lastX,lastY);
          ctx.stroke();
          line = false;
            }

          if(relased){
           ctx.strokeStyle = "black"
           ctx.rect(lastX-2,lastY-2,5,5)
           ctx.fillStyle = "white"
           ctx.fillRect(lastX-2,lastY-2,5,5)
           ctx.stroke();
           relased=false;
          }

          if(roundAbout){
              /*ctx.fillStyle = "red"
              ctx.strokeStyle = "white"
              ctx.moveTo(currentX,currentY)
              ctx.arc(currentX,currentY,currentX,currentY,1/1000,0,2)
              ctx.fill()
              ctx.stroke();
              roundAbout = false;
            */
              ctx.drawImage("images/resources/roundCircle.png",currentX-15,currentY-15,40,40)
              roundAbout = false
            }

          }
     }
     }
    }

