import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: dice_material
        diffuseColor: "#ff808080"
    }
    // end of Materials

    Node {
        id: rootNode
        Model {
            id: dice_001
            x: 0.161879
            z: 0.0562732
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 2.54
            scale.y: 2.54
            scale.z: 2.54
            source: "meshes/dice_001.mesh"
            materials: [
                dice_material
            ]
        }
    }
}
