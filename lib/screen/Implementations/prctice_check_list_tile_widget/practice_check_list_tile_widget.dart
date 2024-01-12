import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:training_moveon/utility/constants/app_spacing.dart';
import 'package:training_moveon/utility/constants/asset_manger.dart';
import 'package:training_moveon/utility/constants/colors.dart';
import 'package:training_moveon/utility/constants/style_manager.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

@RoutePage()
class PracticeCheckListTileWidget extends StatefulWidget {
  const PracticeCheckListTileWidget({super.key});

  @override
  State<PracticeCheckListTileWidget> createState() => _PracticeCheckListTileWidgetState();
}

class _PracticeCheckListTileWidgetState extends State<PracticeCheckListTileWidget> {
  bool? _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Check List Tile Widget",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 200,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    activeColor: kBaseColor,
                    value: _value,
                    controlAffinity: ListTileControlAffinity.leading,
                    side: const BorderSide(color: kDDDDDD),
                    autofocus: false,
                    selected: _value!,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    onChanged: (value) {
                      _value = value;
                      setState((){});
                    },

                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(AppRadius.r6),
                            child: Image.asset(
                              ImageAssets.manJpg,
                              height: 32,
                              width: 32,
                              fit: BoxFit.fill,
                            )),
                        AppSpacing.horizontalSpacing8,
                        Text(
                          "Size: 38",
                          style: getRegularStyle(color: k000000),
                        ),
                        AppSpacing.horizontalSpacing14,
                        Text(
                          "৳120.50",
                          style: getRegularStyle(color: k707070),
                        ),
                        const Spacer(),
                        Container(
                          height: 26,
                          width: 88,
                          decoration: BoxDecoration(border: Border.all()),
                        ),
                        AppSpacing.horizontalSpacing20,
                        const Icon(
                          Icons.delete_outline,
                          size: 14,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
