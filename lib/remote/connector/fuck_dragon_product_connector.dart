import 'package:get/get.dart';
import 'package:order_cart/remote/models//fuck_dargon/fuck_dargon_product.dart';
import 'package:order_cart/utils/constant.dart';

class FuckDragonConnection extends GetConnect {

  final String _baseUrl = BASE_URL_FUCK_DARGON;

  String getUrl(String category) {
    return _baseUrl.replaceFirst("...", category);
  }
  
  Future<List<FuckDragonProductModel>> fetchProducts() async {
    var listRequest = Menu.values.map((value) {
      final url = getUrl(value.source);
      print("Url: " + url);
      return get(url);
    });

    List<Response<dynamic>> list = await Future.wait(listRequest);

    List<FuckDragonProductModel> results = [];
    for (var value in list) {
      if (value.isOk && value.bodyString != null) {
        final FuckDragonProductModel productMap = FuckDragonProductModel.fromRawJson(value.bodyString!);
        results.add(productMap);
      }
    }

    return Future.value(results);
  }
}

enum Menu implements Comparable<Menu> {
  read(source: "banh-mi--c01196"),
  coldCake(source: "banh-lanh--c01194"),
  cookieCake(source: "banh-cookies-croissant--c01195"),
  teaTraditional(source: "tra-nguyen-ban--c011102"),
  coffee(source: "ca-phe--c01189"),
  silkyCream(source: "kem-silky--c01191"),
  milkTea(source: "tra-sua--c01187"),
  fruitTea(source: "tra-trai-cay--c01190"),
  bestSeller(source: "best-seller--c01188"),
  newCollection(source: "bst-moi-tea-latte--c011101"),
  teaLatteCollectionCakeBanaberry(source: "bst-tea-latte-va-banh-banaberry-moi--c46"),
  iceBlended(source: "da-xay--c01193");
  const Menu({required this.source});

  @override
  int compareTo(Menu other) {
    return 0;
  }

  final String source;
}