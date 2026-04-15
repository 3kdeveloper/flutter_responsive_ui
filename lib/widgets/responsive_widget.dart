import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/core/extensions/context_ext.dart';

/// Renders the appropriate child for the current screen size.
///
/// Falls back gracefully: desktop → tablet → mobile → empty.
/// Uses [MediaQuery.sizeOf] under the hood (via [ContextExt.width]) so it
/// only rebuilds when the screen *size* changes, not on every MediaQuery
/// update (keyboard, brightness, etc.).
class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key, this.mobile, this.tablet, this.desktop})
    : assert(
        mobile != null || tablet != null || desktop != null,
        'At least one of mobile, tablet, or desktop must be provided.',
      );

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  Widget get _mobileView => mobile ?? const SizedBox.shrink();
  Widget get _tabletView => tablet ?? _mobileView;
  Widget get _desktopView => desktop ?? _tabletView;

  @override
  Widget build(BuildContext context) {
    if (context.isMobile) return _mobileView;
    if (context.isTablet) return _tabletView;
    return _desktopView;
  }
}
