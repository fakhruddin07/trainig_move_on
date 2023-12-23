import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:training_moveon/screen/product_details_screen/product_details_widget/product_details_header.dart';
import 'package:training_moveon/utility/constants/values_manager.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  late Map<String, dynamic> _item;

  Future<void> readJsonData() async {
    final String response =
        await rootBundle.loadString("assets/data/data.json");
    final data = jsonDecode(response);
    _item = data;
    setState(() {});
  }
  late String htmlContent = _item["data"];

  @override
  void initState() {
    readJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const Padding(
            padding: EdgeInsets.only(
              left: AppPadding.p16,
              right: AppPadding.p16,
              top: AppPadding.p16,
            ),
            child: ProductDetailsHeader(headerTitle: "Product Descriptions"),
          ),
          // Expanded(child: HtmlWidget(htmlContent),),
          // HtmlWidget(htmlContent),
        ],
      ),
    );
  }
}
