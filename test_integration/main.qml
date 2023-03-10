import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MyModule 1.0

ApplicationWindow {
    id: root
    visible: true

    DataProvider {
        id: dataProvider
    }

    ColumnLayout {
        Button {
            text: "Get Data"
            onClicked: dataProvider.button_clicked()
        }
        Text {
            text: dataProvider.get_message()
            color: "black"
        }
        Text {
            text: dataProvider.second_data
            color: "black"
        }
    }
}
