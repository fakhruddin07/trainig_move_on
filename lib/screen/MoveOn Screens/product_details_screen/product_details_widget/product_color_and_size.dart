import 'package:flutter/material.dart';
import '../../../../utility/constants/app_spacing.dart';
import '../../../../utility/constants/colors.dart';
import '../../../../utility/constants/font_manager.dart';
import '../../../../utility/constants/style_manager.dart';
import '../../../../utility/constants/values_manager.dart';


class ProductColorAndSize extends StatelessWidget {
  const ProductColorAndSize({
    super.key,
    required List<String> sizeList,
  }) : _sizeList = sizeList;

  final List<String> _sizeList;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p16),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Color",
                  style: getRegularStyle(
                      color: k000000, fontSize: FontSize.s16),
                ),
                SizedBox(
                  height: 46,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadius.r6),
                        child: Image.network(
                          'https://source.unsplash.com/random?sig=$index',
                          fit: BoxFit.fill,
                          height: 46,
                          width: 46,
                        ),
                      );
                    },
                  ),
                ),
                // const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: AppSize.s12,
                    color: kA0A0A0,
                  ),
                ),
              ],
            ),
            AppSpacing.verticalSpacing16,
            const Divider(color: kDDDDDD),
            AppSpacing.verticalSpacing16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size",
                  style: getRegularStyle(
                      color: k000000, fontSize: FontSize.s16),
                ),
                SizedBox(
                  height: 46,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _sizeList.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (context, index) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(AppRadius.r6),
                          border: Border.all(color: kDDDDDD),
                        ),
                        child: Center(
                          child: Text(
                            _sizeList[index],
                            style: getRegularStyle(color: k000000),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: AppSize.s12,
                    color: kA0A0A0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}