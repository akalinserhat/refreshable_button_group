part of "../refreshable_button_group.dart";

class RefreshableButtonGroupItemController extends ChangeNotifier {
  bool _enable;
  bool _visible;
  IconData? _icon;
  String? _text;
  ButtonStyle _buttonStyle;

  RefreshableButtonGroupItemController({
    bool enable = true,
    bool visible = true,
    ButtonStyle buttonStyle = ButtonStyle.icon,
    IconData? icon,
    String? text,
  })  : _enable = enable,
        _visible = visible,
        _buttonStyle = buttonStyle,
        _icon = icon,
        _text = text;

  set enable(bool value) {
    _enable = value;
    notifyListeners();
  }

  set visible(bool value) {
    _visible = value;
    notifyListeners();
  }

  set icon(IconData? value) {
    _icon = value;
    notifyListeners();
  }

  set text(String? value) {
    _text = value;
    notifyListeners();
  }

  bool get enable => _enable;
  bool get visible => _visible;
  ButtonStyle get buttonStyle => _buttonStyle;
  IconData? get icon => _icon;
  String? get text => _text;
}
