import 'package:flutter/material.dart';

class ProfileSwitch extends StatefulWidget {
  const ProfileSwitch({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  final bool initialValue;
  final void Function(bool value) onChanged;

  @override
  State<ProfileSwitch> createState() => _ProfileSwitchState();
}

class _ProfileSwitchState extends State<ProfileSwitch> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (value) {
        widget.onChanged(value);
        _value = value;
        setState(() {});
      },
    );
  }
}
