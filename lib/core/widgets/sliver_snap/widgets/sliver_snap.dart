import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_moveon/core/widgets/sliver_snap/widgets/snapping_app_bar_body.dart';
import 'package:training_moveon/core/widgets/sliver_snap/widgets/util/snapping_scroll_notification_handler.dart';

typedef CollapsingStateCallback = void Function(
  bool isCollapsed,
  double scrollingOffset,
  double maxExtent,
);

class SliverSnap extends HookWidget{
  final ScrollController? scrollController;

  final Widget expandedContent;

  final Widget collapsedContent;

  final Widget body;

  final double? expandedContentHeight;

  final double collapsedBarHeight;
  final bool floating;

  final bool pinned;

  final bool snap;

  final bool stretch;

  final List<Widget>? actions;

  final Widget? leading;

  final bool automaticallyImplyLeading;

  final Widget bottom;

  final Widget? backdropWidget;

  final Color? expandedBackgroundColor;

  final Color? collapsedBackgroundColor;

  final ScrollBehavior? scrollBehavior;
  final CollapsingStateCallback? onCollapseStateChanged;

  final Duration? animationDuration;

  final Curve? animationCurve;

  final bool forceElevated;

  final double elevation;

  const SliverSnap({
    super.key,
    required this.expandedContent,
    required this.collapsedContent,
    required this.body,
    this.pinned = true,
    this.collapsedBarHeight = 60.0,
    this.animationDuration = const Duration(milliseconds: 300),
    this.animationCurve = Curves.easeInOut,
    this.snap = false,
    this.floating = false,
    this.stretch = false,
    this.expandedContentHeight,
    required this.bottom,
    this.leading,
    this.actions,
    this.backdropWidget,
    this.expandedBackgroundColor,
    this.collapsedBackgroundColor,
    this.scrollController,
    this.scrollBehavior,
    this.onCollapseStateChanged,
    this.automaticallyImplyLeading = false,
    this.forceElevated = false,
    this.elevation = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    final isCollapsedValueNotifier = useState(false);
    final defaultExpandedContentHeight = expandedContentHeight;

    final controller = scrollController ?? useScrollController();
    final snappingScrollNotificationHandler =
        SnappingScrollNotificationHandler.withHapticFeedback(
      expandedBarHeight: defaultExpandedContentHeight!,
      collapsedBarHeight: collapsedBarHeight,
      bottomBarHeight: 0.0,
    );
    final scrollPercentValueNotifier = useState(0.0);
    final animatedOpacity = useState(1.0);

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) =>
          snappingScrollNotificationHandler.handleScrollNotification(
        notification: notification,
        isCollapsedValueNotifier: isCollapsedValueNotifier,
        onCollapseStateChanged: (isCollapsed, scrollingOffset, maxExtent) {
          onCollapseStateChanged?.call(
            isCollapsedValueNotifier.value,
            controller.offset,
            controller.position.maxScrollExtent,
          );

          scrollPercentValueNotifier.value = 1 - scrollingOffset / maxExtent;
          animatedOpacity.value =
              _calculateOpacity(scrollPercentValueNotifier.value);
        },
        scrollController: controller,
      ),
      child: SnappingAppBarBody(
        scrollController: controller,
        backdropWidget: backdropWidget,
        collapsedBar: collapsedContent,
        bottom: bottom,
        expandedContent: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: animatedOpacity.value,
          child: expandedContent,
        ),
        leading: leading,
        actions: actions,
        pinned: pinned,
        floating: floating,
        snap: snap,
        stretch: stretch,
        automaticallyImplyLeading: automaticallyImplyLeading,
        body: body,
        scrollBehavior: scrollBehavior,
        collapsedBarHeight: collapsedBarHeight,
        expandedContentHeight: defaultExpandedContentHeight,
        collapsedBackgroundColor: collapsedBackgroundColor,
        expandedBackgroundColor: expandedBackgroundColor,
        isCollapsed: isCollapsedValueNotifier.value,
        forceElevated: forceElevated,
        elevation: elevation,
      ),
    );
  }

  double _calculateOpacity(double scrollPercentage) {
    const double opacityThreshold = 0.5;
    const double opacityAdjustment = 0.5;
    const double maxScrollPercentage = 1.0;

    if (scrollPercentage < 0 || scrollPercentage > maxScrollPercentage) {
      return 1.0;
    }

    if (scrollPercentage < opacityThreshold) {
      return 0.0;
    } else if (scrollPercentage < maxScrollPercentage) {
      return scrollPercentage - opacityAdjustment;
    } else {
      return scrollPercentage;
    }
  }

}
