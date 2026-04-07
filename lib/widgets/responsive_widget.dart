import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/core/extensions/context_ext.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, this.mobile, this.tablet, this.desktop})
    : assert(
        mobile != null || tablet != null || desktop != null,
        'At least one of mobile, tablet, or desktop must be provided.',
      );

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  Widget get mobileView => mobile ?? const SizedBox.shrink();
  Widget get tabletView => tablet ?? mobileView;
  Widget get desktopView => desktop ?? tabletView;

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) {
      return mobileView;
    } else if (context.isTablet) {
      return tabletView;
    } else {
      return desktopView;
    }
  }
}
