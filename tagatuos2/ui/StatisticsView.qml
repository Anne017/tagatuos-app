import QtQuick 2.4
import Ubuntu.Components 1.3
import "../components/Common"
import "../components/StatisticsView"

Page {
    id: root

    property alias listView: flickableStats

    header: PageHeader {
        visible: false
    }

    ScrollView {
        id: listView
        anchors.fill: parent
        Flickable {
            id: flickableStats

            boundsBehavior: Flickable.DragAndOvershootBounds
            interactive: true
            contentHeight: bodyColumn.height
            anchors.fill: parent

            flickableDirection: Flickable.VerticalFlick
            clip: true

            Column {
                id: bodyColumn
                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                }


                ChartComponent {
                    id: chart

                    anchors {
                        left: parent.left
                        right: parent.right
                    }

                    height: units.gu(45)/*if(root.height < units.gu(120) && root.height > units.gu(80)){
                                root.height * 0.5
                            }else{
                                units.gu(40)
                            }*/
                }
            }
        }
    }
}
