import 'package:flutter/material.dart';

import '../constants/breakpoints.dart';

extension ContextExt on BuildContext {
  // Use viewInsetsOf — subscribes only to viewInsets changes, not all MediaQuery changes
  double get bottomPadding => MediaQuery.viewInsetsOf(this).bottom;

  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  bool get isMobile => width <= Breakpoints.mobile;

  bool get isTablet => width > Breakpoints.mobile && width < Breakpoints.tablet;

  // Fixed: was >= Breakpoints.desktop (1200), leaving 840–1199 uncovered
  // bool get isDesktop => width >= Breakpoints.tablet;

  DeviceType get deviceType => Breakpoints.device(width);
}
