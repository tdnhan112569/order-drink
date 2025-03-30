import 'package:get/get.dart';
import 'package:order_cart/presentation/modal/product_item.dart';
import 'package:order_cart/remote/connector/fuck_dragon_product_connector.dart';

class ProductController extends GetxController {
  FuckDragonConnection fuckDragonConnection = FuckDragonConnection();
  List<ProductItem> listProducts = [];
  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void fetchProducts() async {
    final listFuckDragonProduct = await fuckDragonConnection.fetchProducts();
    for (var products in listFuckDragonProduct) {
      products.data?.items?.forEach((item) {
        ProductItem productItem = ProductItem(item.name ?? "", item.mediaUrl ?? "", item.price ?? 0);
        listProducts.add(productItem);
      });
    }
    update();
  }

}