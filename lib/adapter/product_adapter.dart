import 'package:order_cart/adapter/optional_adapter.dart';
import 'package:order_cart/adapter/size_adapter.dart';
import 'package:order_cart/adapter/topping_adapter.dart';

abstract class ProductAdapter<O, S, T> {
  late String productName;

  late String imgUrl;

  late double price;

  late OptionalAdapter<O> optionInfos;

  late SizeAdapter<S> sizeInfos;

  late ToppingAdapter<T> toppingInfos;
}
