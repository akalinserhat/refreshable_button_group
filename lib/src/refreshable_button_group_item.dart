part of "../refreshable_button_group.dart";

class RefreshableButtonGroupItem extends StatefulWidget {
  final RefreshableButtonGroupItemController controller;
  final Function() onTap;

  const RefreshableButtonGroupItem({
    Key? key,
    required this.controller,
    required this.onTap,
  }) : super(key: key);
  void test() {}
  @override
  State<RefreshableButtonGroupItem> createState() =>
      _RefreshableButtonGroupItemState();
}

class _RefreshableButtonGroupItemState
    extends State<RefreshableButtonGroupItem> {
  RefreshableButtonGroupItemController get controller => widget.controller;
  Function() get onTap => widget.onTap;

  void _refreshState() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(() => _refreshState());
    super.initState();
  }

  Widget _iconContent(BuildContext context) {
    return Icon(
      controller.icon ??= Icons.check,
      size: Theme.of(context).iconTheme.size,
    );
  }

  Widget _elevatedContent(BuildContext context) {
    return Row(
      children: [_iconContent(context), Text(controller.text ??= "")],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.buttonStyle) {
      case ButtonStyle.icon:
        return IconButton(
          onPressed: () => (controller.enable) ? onTap() : null,
          icon: _iconContent(context),
        );

      case ButtonStyle.elevated:
        return ElevatedButton(
          onPressed: () => (controller.enable) ? onTap() : null,
          child: _elevatedContent(context),
        );
    }
  }
}
