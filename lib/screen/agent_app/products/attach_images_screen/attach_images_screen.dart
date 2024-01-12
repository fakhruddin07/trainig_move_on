import 'package:flutter/material.dart';
import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';
import '../products_widgets/products_button_widget.dart';
import 'attach_images_widget/carton_attach_images_widget.dart';

class AttachImages extends StatelessWidget {
  const AttachImages({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(AppRadius.r24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "Attach Images (4)",
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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 24),
                    child: CartonAttachImagesWidget(),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ProductsButtonWidget(
                    btnHeight: AppSize.s46,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    btnBgColor: kEEEEEE,
                    btnBorderRadius: AppRadius.r4,
                    child: "Skip",
                    style: getMediumStyle(color: k4D4D4D),
                  ),
                ),
                AppSpacing.horizontalSpacing16,
                Expanded(
                  child: ProductsButtonWidget(
                    btnHeight: AppSize.s46,
                    onPressed: () {},
                    btnBgColor: k008454,
                    btnBorderRadius: AppRadius.r4,
                    child: "Update All",
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
