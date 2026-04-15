// For more details view: https://m3.material.io/foundations/layout/applying-layout/window-size-classes

import 'package:flutter/material.dart';

abstract final class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 840;

  static DeviceType device(double width) {
    if (width <= mobile) return .mobile;
    if (width < tablet) return .tablet;
    return .desktop;
  }
}

enum DeviceType {
  mobile,
  tablet,
  desktop;

  Size get designSize => switch (this) {
    ///! TODO: Update design size as per your layout.
    .mobile => const Size(375, 812),
    .tablet => const Size(768, 1024),
    .desktop => const Size(1440, 1024),
  };
}
