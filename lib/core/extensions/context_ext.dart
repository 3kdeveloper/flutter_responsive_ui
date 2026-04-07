import 'package:flutter/material.dart';

import '../constants/breakpoints.dart';

extension ContextExt on BuildContext {
  double get bottomPadding => MediaQuery.of(this).viewInsets.bottom;

  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  bool get isMobile => width <= Breakpoints.mobile;

  bool get isTablet => width > Breakpoints.mobile && width < Breakpoints.tablet;

  bool get isDesktop => width >= Breakpoints.desktop;
}
