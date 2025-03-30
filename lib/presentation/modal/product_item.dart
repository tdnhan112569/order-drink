import 'package:order_cart/adapter/product_adapter.dart';
import 'package:order_cart/remote/models/fuck_dargon/option_info.dart';
import 'package:order_cart/remote/models/fuck_dargon/size_info.dart';
import 'package:order_cart/remote/models/fuck_dargon/topping_info.dart';

class ProductItem extends ProductAdapter<OptionalInfo, SizeInfo, ToppingInfo> {
  ProductItem(String productName, String imgUrl, int price) {
    this.productName = productName;
    this.imgUrl = imgUrl;
    this.price = price.toDouble();
  }
}