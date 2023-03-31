import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink[300]!),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
