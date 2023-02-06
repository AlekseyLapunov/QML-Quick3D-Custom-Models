import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Rectangle
{
    id: root
    width: parent.width/1.5
    height: width
    anchors.centerIn: parent
    color: "lightgrey"

    View3D
    {
        anchors.fill: parent

        Node
        {
            PerspectiveCamera
            {
                id: _camera
                z: 100
            }
            DirectionalLight
            {

            }
            PrincipledMaterial
            {
                id: _priDiceMaterial
                baseColorMap: Texture
                {
                    source: "assets/assets/Dice_Diffuse.jpg.png"
                }
            }
            //AxisHelper { id: _sceneAxis }
        }
        Node
        {
            position: Qt.vector3d(0, 0, 0)
            Model
            {
               id: _diceModel
               source: "/assets/assets/dice_001.mesh"
               materials: [_priDiceMaterial]
               position: Qt.vector3d(0, 0, 0)
               AxisHelper {}
            }
        }

    }

    WasdController
    {
        controlledObject: _camera
    }
}
