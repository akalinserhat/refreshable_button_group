part of "../refreshable_button_group.dart";

class RefreshableButtonGroup extends StatefulWidget {
  final ButtonGroupAlign buttonGroupAlign;
  final RefreshableButtonGroupController controller;

  const RefreshableButtonGroup({
    Key? key,
    required this.controller,
    this.buttonGroupAlign = ButtonGroupAlign.horizantal,
  }) : super(key: key);

  @override
  State<RefreshableButtonGroup> createState() => _RefreshableButtonGroupState();
}

class _RefreshableButtonGroupState extends State<RefreshableButtonGroup> {
  RefreshableButtonGroupController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: controller.itemList,
    );
    // return GridView.count(
    //   crossAxisCount: controller.itemList.length,
    //   children: controller.itemList,
    // );
  }
}
