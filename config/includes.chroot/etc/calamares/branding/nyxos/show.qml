import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#1d2023"
            Text {
                anchors.centerIn: parent
                text: "Welcome to NyxOS"
                color: "#ffffff"
                font.pixelSize: 32
            }
        }
    }
}
