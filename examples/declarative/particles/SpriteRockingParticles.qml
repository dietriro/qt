import QtQuick 2.0
import Qt.labs.particles 2.0

Rectangle{
    color: "goldenrod"
    width: 400
    height: 400
    SpriteParticles{
        id: particles
        anchors.fill: parent
        states: SpriteState{
            source: "squarefacesprite.png"
            frames: 6
            duration: 120
        }

        affectors: Rocking{
            pace: 5
            angle: 70
            angleVariance: 20
            minSpeed: 20
        }

        particlesPerSecond: 6
        particleDuration: 5000
        emitting: true
        xSpeed: 0
        ySpeed: 0
        xSpeedVariation: 100
        ySpeedVariation: 100
        particleSize: 30
        particleSizeVariation: 10
        emitterX: width/2
        emitterY: height/2
    }
    Binding{
        target: particles
        property: "emitterY"
        value: ma.mouseY
        when: ma.mouseX !=0 || ma.mouseY!=0
    }
    Binding{
        target: particles
        property: "emitterX"
        value: ma.mouseX
        when: ma.mouseX !=0 || ma.mouseY!=0
    }
    MouseArea{
        id: ma
        anchors.fill: parent
    }
}