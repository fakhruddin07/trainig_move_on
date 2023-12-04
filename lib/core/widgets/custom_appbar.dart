/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utility/constants/colors.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  @override
  final Size preferredSize;
  final VoidCallback? onBack;

  const CustomAppbar({
    super.key,
    required this.title,
    this.onBack,
  })  : preferredSize = const Size.fromHeight(50.0);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  final getCartItemsBloc = injector<ShippingCartItemBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getCartItemsBloc,
  child: PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 6,
              blurRadius: 6,
              offset: const Offset(0, -8),
            ),
          ],
        ),
        child: AppBar(
          backgroundColor: kWhiteColor,
          scrolledUnderElevation: 0,
          title: Text(
            widget.title!,
            style: const TextStyle(
                color: kTextBlackColor,
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: InkWell(
                onTap: ()=> AutoRouter.of(context).push(const ShipmentCartRoute()),
                child: Badge(
                  backgroundColor: kBadgeColor,
                  // alignment: AlignmentDirectional.topEnd,
                  label: BlocBuilder<ShippingCartItemBloc, ShippingCartItemState>(
                    builder: (context, state) {
                      if (state is ShippingCartItemLoading) {
                        return const SizedBox(height:6,
                          width: 6,
                          child: CircularProgressIndicator(color: Colors.red,));
                      } else if (state is ShippingCartItemSuccess) {
                        return Text(state.shipmentItem.length.toString());
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),


                  child: SvgPicture.asset(
                    'assets/images/svg/ship_for_me/file_question.svg',
                  ),
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Badge(
                backgroundColor: kBadgeColor,
                label: const Text("0"),
                child: SvgPicture.asset(
                  'assets/images/svg/notification_icon.svg',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: SvgPicture.asset(
                'assets/images/svg/more_icon.svg',
              ),
            ),
          ],
        ),
      ),
    ),
);
  }
}
*/
