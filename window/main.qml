import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Extras 1.4
import QtQuick.Shapes 1.15

Window {
    id: window
    visible: true
    width: 380
    height: 480
    title: qsTr("Hello World")

    // black rectangle centered in the window, width is filled to the window
    // but we will have a gap in the width compared to the parent
    Rectangle {
        id: rect
        visible: true
        width: parent.width -20
        y: 0 + 40
        height: parent.height - 20
        // border radius 10
        radius: 10        
        color: "black"
        anchors.centerIn: parent
    }

    // column layout   
    ColumnLayout 
    {
        id: columnLayout
        anchors.centerIn: parent
        spacing: 10
        
        // custom fields 

        // custom text field
        MyTextField {
            id: name
            width: rect.width - 40
            height: 30
            fontSize: 16
            placeholderText: "Enter your name"
        }
        MyTextField {
            id: email
            width: rect.width - 40
            height: 30
            fontSize: 16
            placeholderText: "Your email"
        }

        // button fill entire column equlal to rectangle
        Button {
            id: button
            text: "Click me"
            width: rect.width
            height: rect.height
            visible: false
            onClicked: {
                popup.open()
            }
        }
        // button fill entire column equlal to rectangle
        Button {
            id: button2
            text: "Click me"
            width: rect.width
            visible: false
            height: rect.height
            onClicked: {
                popup.open()
            }
        }

        Popup {
            id: popup
            width: rect.width / 2
            height: rect.height / 2
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        }

    }

}