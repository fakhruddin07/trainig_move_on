import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/core/widgets/custom_image.dart';
import 'package:training_moveon/services/network_caller.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/font_manager.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class DioGetMethod extends StatefulWidget {
  const DioGetMethod({super.key});

  @override
  State<DioGetMethod> createState() => _DioGetMethodState();
}

class _DioGetMethodState extends State<DioGetMethod> {
  @override
  void initState() {
    super.initState();
    NetworkCaller.getRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Practice Dio",
          style: getBoldStyle(
            color: kTextBlackColor,
            fontSize: FontSize.s22,
          ),
        ),
        backgroundColor: kBaseColor,
      ),
      body: Column(
        children: [
          Text(
            "GET METHOD",
            style: getBoldStyle(color: kTextBlackColor, fontSize: FontSize.s22),
          ),
          FutureBuilder(
            future: NetworkCaller.getRequest(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(snapshot.data?[index]['userId'].toString() ?? ""),
                            CustomImage(
                              imgUrl: 'https://source.unsplash.com/random?sig=$index',
                              borderRadius: AppRadius.r6,
                              imgFit: BoxFit.fill,
                              imgHeight: AppSize.s100,
                              imgWidth: AppSize.s100,
                            ),
                            AppSpacing.horizontalSpacing16,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("TITLE: ${snapshot.data?[index]['title']}"),
                                  Text("BODY: ${snapshot.data?[index]['body']}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    "404: data not found",
                    style: getBoldStyle(
                        color: kTextBlackColor, fontSize: FontSize.s30),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
