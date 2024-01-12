import 'package:flutter/material.dart';
import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
import '../products_widgets/products_button_widget.dart';
import 'measurements_widget/carton_measurement_widget.dart';

class MeasurementScreen extends StatelessWidget {
  const MeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Measurements (4)",
                  style: getBoldStyle(
                    color: kTextBlackColor,
                    fontSize: FontSize.s16,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashFactory: NoSplash.splashFactory,
                  splashColor: kTransparent,
                  child: const Icon(
                    Icons.close,
                    size: AppSize.s20,
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: AppPadding.p24),
                    child: CartonMeasurementWidget(),
                  );
                },
              ),
            ),
            AppSpacing.verticalSpacing16,
            Row(
              children: [
                Expanded(
                  child: ProductsButtonWidget(
                      btnHeight: AppSize.s46,
                      onPressed: () {},
                      btnBgColor: kEEEEEE,
                      btnBorderRadius: AppRadius.r4,
                      child: "Skip",
                      style: getMediumStyle(color: k4D4D4D)),
                ),
                AppSpacing.horizontalSpacing16,
                Expanded(
                  child: ProductsButtonWidget(
                    btnHeight: AppSize.s46,
                    onPressed: () {},
                    btnBgColor: k008454,
                    btnBorderRadius: AppRadius.r4,
                    child: "Submit All",
                    style: getMediumStyle(color: kWhiteColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
