import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  double get bottomPadding => MediaQuery.of(this).viewInsets.bottom;

  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  bool get isMobile => width <= 600;

  bool get isTablet => width > 600 && width < 840;

  bool get isDesktop => width >= 1200;
}
