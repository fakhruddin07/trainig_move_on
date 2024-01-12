

import '../utility/constants/asset_manger.dart';

class ShippingCartItems{
  String storeName;
  List<Store> store;
  ShippingCartItems(this.storeName, this.store);
}

class Store{
  List<Product> storeProduct;
  Store(this.storeProduct);
}

class Product{
  String productName;
  String img;
  List<ProductVariant> productVariant;
  Product(this.productName, this.img, this.productVariant);
}

class ProductVariant{
  String img;
  int size;
  double price;
  int quantity;
  bool isSelected;
  ProductVariant(this.img, this.size, this.price, this.quantity, this.isSelected);
}

List<ProductVariant> productVariant = [
  ProductVariant(ImageAssets.sliderPng, 38, 120.50, 50, false),
  ProductVariant(ImageAssets.sliderPng, 38, 130.50, 50, false),
  ProductVariant(ImageAssets.sliderPng, 38, 140.50, 50, false),
  ProductVariant(ImageAssets.sliderPng, 38, 150.50, 50, false),
  ProductVariant(ImageAssets.sliderPng, 38, 160.50, 50, false),
];