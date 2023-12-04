import 'package:flutter/material.dart';

import '../../../../../utility/constants/colors.dart';

class SnappingAppBarBody extends StatelessWidget {
  const SnappingAppBarBody({
    super.key,
    required this.scrollController,
    required this.expandedContent,
    required this.collapsedBar,
    required this.collapsedBarHeight,
    required this.body,
    this.scrollBehavior,
    this.leading,
    this.floating = false,
    this.pinned = false,
    this.snap = false,
    this.stretch = false,
    this.backdropWidget,
    this.expandedContentHeight,
    this.collapsedBackgroundColor,
    this.expandedBackgroundColor,
    this.actions,
    required this.bottom,
    this.isCollapsed = false,
    this.automaticallyImplyLeading = false,
    this.elevation = 0,
    this.forceElevated = false,
  });

  final ScrollController scrollController;

  final Widget expandedContent;
  final List<Widget>? actions;
  final Widget collapsedBar;
  final Widget body;
  final double? expandedContentHeight;
  final double collapsedBarHeight;
  final Widget bottom;
  final Widget? leading;
  final bool pinned;
  final bool floating;
  final bool snap;
  final bool stretch;
  final bool isCollapsed;
  final Widget? backdropWidget;
  final Color? collapsedBackgroundColor;
  final Color? expandedBackgroundColor;
  final ScrollBehavior? scrollBehavior;
  final bool automaticallyImplyLeading;
  final bool forceElevated;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (backdropWidget != null) backdropWidget!,
        CustomScrollView(
          controller: scrollController,
          scrollBehavior: scrollBehavior,
          slivers: [
            SliverAppBar(
              actions: actions,
              snap: snap,
              floating: floating,
              stretch: stretch,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20.0),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: isCollapsed ? 1 : 0,
                  child: bottom,
                ),
              ),
              expandedHeight: expandedContentHeight,
              collapsedHeight: collapsedBarHeight,
              centerTitle: false,
              pinned: pinned,
              // elevation: elevation,
              // forceElevated: forceElevated,
              title: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: isCollapsed ? 1 : 0,
                child: collapsedBar,
              ),
              automaticallyImplyLeading: automaticallyImplyLeading,
              backgroundColor: kWhiteColor,
              foregroundColor: kWhiteColor,
              shadowColor: kWhiteColor,
              surfaceTintColor: kWhiteColor,
              leading: leading,
              flexibleSpace: FlexibleSpaceBar(
                // collapseMode: CollapseMode.parallax,
                background: expandedContent,
              ),
            ),
            SliverToBoxAdapter(

              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: body,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
