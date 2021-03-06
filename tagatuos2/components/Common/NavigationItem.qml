import QtQuick 2.4
import Ubuntu.Components 1.3

ListItem {
    id: root

    //Public APIs
    property alias titleText: listItemLayout.title
    property alias subText: listItemLayout.subtitle
    property string iconName

    width: parent.width

    ListItemLayout {
        id: listItemLayout

//        Icon {
//            name: "next"
//            SlotsLayout.position: SlotsLayout.Trailing
//            width: units.gu(3)
//        }

        ProgressionSlot{}

        Icon {
            name: iconName
            SlotsLayout.position: SlotsLayout.Leading
            width: units.gu(3)
            visible: iconName !== "" ? true : false
        }
    }
}
