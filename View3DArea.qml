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
        }
        Node
        {
            position: Qt.vector3d(-15, 0, 0)
            Model
            {
               id: _firstDiceModel
               source: "/assets/assets/dice_001.mesh"
               materials: [_priDiceMaterial]
               z: -10
            }
            PropertyAnimation on eulerRotation
            {
                loops: Animation.Infinite
                from: Qt.vector3d(0, 0, 0)
                to: Qt.vector3d(360, 360, 360)
                duration: 1500
            }
        }
        Node
        {
            position: Qt.vector3d(25, 0, 0)
            Model
            {
               id: _secondDiceModel
               source: "/assets/assets/dice_001.mesh"
               materials: [_priDiceMaterial]
               z: -10
            }
            PropertyAnimation on eulerRotation
            {
                loops: Animation.Infinite
                from: Qt.vector3d(0, 0, 0)
                to: Qt.vector3d(360, 360, 360)
                duration: 1500
            }
        }

    }

    WasdController
    {
        controlledObject: _camera
    }
}
