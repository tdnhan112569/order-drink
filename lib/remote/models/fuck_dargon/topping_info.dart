import 'dart:convert';

class ToppingInfo {
  final String? name;
  final int? salePrice;

  ToppingInfo({
    this.name,
    this.salePrice,
  });

  ToppingInfo copyWith({
    String? name,
    int? salePrice,
  }) =>
      ToppingInfo(
        name: name ?? this.name,
        salePrice: salePrice ?? this.salePrice,
      );

  factory ToppingInfo.fromRawJson(String str) => ToppingInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToppingInfo.fromJson(Map<String, dynamic> json) => ToppingInfo(
    name: json["name"],
    salePrice: json["salePrice"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "salePrice": salePrice,
  };
}