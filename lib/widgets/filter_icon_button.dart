import 'package:flutter/material.dart';

Widget FilterIconButton({
  required double radius,
  required Color splashColor,
  required Function? onTap,
  required Color backgroundColor,
  required Widget child,
}) {
  return InkWell(
    borderRadius: BorderRadius.circular(radius),
    onTap: () => onTap,
    splashColor: splashColor,
    child: Ink(
      padding: const EdgeInsets.all(16),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    ),
  );
}
