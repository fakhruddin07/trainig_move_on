import 'package:flutter/material.dart';

import '../sliver_snap.dart';

class SnappingScrollNotificationHandler {
  final double expandedBarHeight;
  final double collapsedBarHeight;
  final double bottomBarHeight;
  final bool shouldAddHapticFeedback;

  SnappingScrollNotificationHandler({
    required this.expandedBarHeight,
    required this.collapsedBarHeight,
    this.bottomBarHeight = 0.0,
    this.shouldAddHapticFeedback = false,
  })  : assert(
          expandedBarHeight > 0.0,
          'Expanded Bar Height cannot be negative',
        ),
        assert(
          collapsedBarHeight > 0.0,
          'Collapsed bar height cannot have a negative value',
        ),
        assert(
          collapsedBarHeight < expandedBarHeight,
          'Expanded bar height value must have a higher value than the collapsed bar height value',
        );

  factory SnappingScrollNotificationHandler.withHapticFeedback({
    required double expandedBarHeight,
    required double collapsedBarHeight,
    double bottomBarHeight = 0.0,
  }) =>
      SnappingScrollNotificationHandler(
        expandedBarHeight: expandedBarHeight,
        collapsedBarHeight: collapsedBarHeight,
        shouldAddHapticFeedback: true,
        bottomBarHeight: bottomBarHeight,
      );

  bool handleScrollNotification({
    required ScrollNotification notification,
    required ScrollController scrollController,
    required ValueNotifier<bool> isCollapsedValueNotifier,
    CollapsingStateCallback? onCollapseStateChanged,
  }) {
    final double expandThresholdPosition =
        (expandedBarHeight - collapsedBarHeight) / 1.75;

    final double currentScrollingPosition = scrollController.offset;

    //region Update isCollapsed value as user scrolls
    _updateIsAppBarCollapsed(
      isCollapsed: isCollapsedValueNotifier,
      scrollController: scrollController,
      expandThresholdPosition: expandThresholdPosition,
      onCollapseStateChanged: onCollapseStateChanged,
    );
    //endregion

    //region
    if (notification is ScrollEndNotification) {
      _snapAppBar(
        currentScrollingPosition: currentScrollingPosition,
        expandThresholdPosition: expandThresholdPosition,
        scrollController: scrollController,
      );
    }
    //endregion

    return false;
  }

  void _snapAppBar({
    required double currentScrollingPosition,
    required double expandThresholdPosition,
    required ScrollController scrollController,
  }) {
    if (_shouldSnapAppBarFullyExpanded(
      currentScrollingPosition,
      expandThresholdPosition,
    )) {
      _scrollToOffset(scrollController: scrollController, scrollToOffset: 0.0);
    } else if (_shouldSnapAppBarFullyCollapsed(
      currentScrollingPosition,
      expandThresholdPosition,
    )) {
      _scrollToOffset(
        scrollController: scrollController,
        scrollToOffset:
            expandedBarHeight - collapsedBarHeight - bottomBarHeight,
      );
    }
  }

  bool _shouldSnapAppBarFullyCollapsed(
    double currentScrollingPosition,
    double expandThresholdPosition,
  ) {
    return currentScrollingPosition > expandThresholdPosition &&
        currentScrollingPosition < expandedBarHeight - collapsedBarHeight;
  }

  bool _shouldSnapAppBarFullyExpanded(
    double currentScrollingPosition,
    double expandThresholdPosition,
  ) {
    return currentScrollingPosition < expandThresholdPosition;
  }

  void _updateIsAppBarCollapsed({
    required ValueNotifier<bool> isCollapsed,
    required ScrollController scrollController,
    required double expandThresholdPosition,
    CollapsingStateCallback? onCollapseStateChanged,
  }) {
    isCollapsed.value = scrollController.hasClients &&
        scrollController.offset > expandThresholdPosition;
    onCollapseStateChanged?.call(
      isCollapsed.value,
      scrollController.offset,
      scrollController.position.maxScrollExtent,
    );
  }

  void _scrollToOffset({
    required ScrollController scrollController,
    required double scrollToOffset,
  }) {
    Future.microtask(
      () => scrollController.animateTo(
        scrollToOffset,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
      ),
    );
  }
}
