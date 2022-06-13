part of "../refreshable_button_group.dart";

class RefreshableButtonGroupController extends ChangeNotifier {
  final List<RefreshableButtonGroupItem> itemList;

  void changeEnableState(RefreshableButtonGroupItem item) {
    int index = itemList.indexOf(item);

    if (index > -1) {
      RefreshableButtonGroupItem item = itemList[index];
      item.controller.enable = !item.controller.enable;
    }
  }

  void changeVisibleState(RefreshableButtonGroupItem item) {
    int index = itemList.indexOf(item);
    if (index > -1) {
      RefreshableButtonGroupItem item = itemList[index];
      item.controller.visible = !item.controller.visible;
    }
  }

  RefreshableButtonGroupController({required this.itemList});
}
