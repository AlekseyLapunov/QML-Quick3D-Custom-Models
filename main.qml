import QtQuick
import QtQuick3D

Window
{
    id: _mainWin
    width: 640
    height: 480
    visible: true
    title: qsTr("Quick3D Custom Models")

    View3DArea
    {
        id: _rectangleAreaForView3D
    }
}
