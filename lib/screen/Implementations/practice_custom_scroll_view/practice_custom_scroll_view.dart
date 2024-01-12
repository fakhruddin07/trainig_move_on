import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';

@RoutePage()
class PracticeCustomScrollView extends StatefulWidget {
  const PracticeCustomScrollView({super.key});

  @override
  State<PracticeCustomScrollView> createState() =>
      _PracticeCustomScrollViewState();
}

class _PracticeCustomScrollViewState extends State<PracticeCustomScrollView> {
  late ScrollController _scrollController;

  double top = 0;
  bool isSelect = false;

  void _scrollListener() {
    if (_scrollController.offset >= 1102) {
      setState(() {
        isSelect = true;
      });
      print("OffSet = ${_scrollController.position.devicePixelRatio}");
      // print("object True");
    } else {
      isSelect = false;
      // print(_scrollController.offset);
      setState(() {});
      // print("object False");
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _scrollController.addListener(() {
      double offSet = _scrollController.offset;
      print("OffSet = $offSet");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              title: LayoutBuilder(builder: (context, constrains) {
                top = constrains.biggest.height;
                return AnimatedOpacity(
                  opacity: top <= 350 ? 1.0 : 0.0,
                  duration: const Duration(seconds: 2),
                  child: const Text("Practice Custom Scroll View"),
                );
              }),
              background: Image.asset(
                ImageAssets.manJpg,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.grey,
                  height: 20,
                  width: double.maxFinite,
                  child: const Text("Container 1"),
                ),
                Container(
                  color: Colors.green,
                  height: 30,
                  width: double.maxFinite,
                  child: const Text("Container 2"),
                ),
                Container(
                  color: Colors.yellow,
                  height: 40,
                  width: double.maxFinite,
                  child: const Text("Container 3"),
                ),
                Container(
                  color: Colors.blue,
                  height: 50,
                  width: double.maxFinite,
                  child: const Text("Container 4"),
                ),
                Container(
                  color: Colors.brown,
                  height: 60,
                  width: double.maxFinite,
                  child: const Text("Container 5"),
                ),
                Container(
                  color: Colors.deepOrange,
                  height: 70,
                  width: double.maxFinite,
                  child: const Text("Container 6"),
                ),
                Container(
                  color: Colors.deepPurple,
                  height: 80,
                  width: double.maxFinite,
                  child: const Text("Container 7"),
                ),
                Container(
                  color: Colors.teal,
                  height: 90,
                  width: double.maxFinite,
                  child: const Text("Container 8"),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: double.maxFinite,
                  child: const Text("Container 9"),
                ),
                Container(
                  color: Colors.indigo,
                  height: 110,
                  width: double.maxFinite,
                  child: const Text("Container 10"),
                ),
                Container(
                  color: Colors.black,
                  height: 120,
                  width: double.maxFinite,
                  child: const Text("Container 11", style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          isSelect
              ? SliverLayoutBuilder(
                builder: (context, constrains) {
                  top = constrains.scrollOffset <= 677 ? 1.0 : 0.0;
                  // print(constrains.scrollOffset);
                  return SliverAnimatedOpacity(
            duration: const Duration(milliseconds: 300),
                    opacity: 1.0,
                    sliver: SliverAppBar(
                        toolbarHeight: 5,
                        pinned: true,
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.green,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          collapseMode: CollapseMode.parallax,
                          title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        _scrollController.jumpTo(_scrollController.offset);
                                        print(
                                          " Data 1 = ${_scrollController.offset}",
                                        );
                                      },
                                      child: Text(
                                        "Data 1",
                                        style: getBoldStyle(
                                          color: kWhiteColor,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        _scrollController
                                            .position.allowImplicitScrolling;
                                        print(
                                          " Data 2 = ${_scrollController.position}",
                                        );
                                      },
                                      child: Text(
                                        "Data 2",
                                        style: getBoldStyle(
                                          color: kWhiteColor,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print(
                                          " Data 3 = ${_scrollController.position.context.axisDirection}",
                                        );
                                      },
                                      child: Text(
                                        "Data 3",
                                        style: getBoldStyle(
                                          color: kWhiteColor,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                  );
                }
              )
              : const SliverToBoxAdapter(),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "data",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "data",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "data",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 200,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: index + 70,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                        ),
                        child: Column(
                          children: [
                            const FlutterLogo(),
                            Text("2nd App Bar ${index + 1}"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "2nd App Bar ${index + 1}",
                                    style: getBoldStyle(
                                      color: kTextBlackColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "2nd App Bar ${index + 1}",
                                    style: getBoldStyle(
                                      color: kTextBlackColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "2nd App Bar ${index + 1}",
                                    style: getBoldStyle(
                                      color: kTextBlackColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
