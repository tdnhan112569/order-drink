import 'dart:convert';

class SizeInfo {
  final bool? baseSize;
  final String? size;
  final int? addSalePrice;

  SizeInfo({
    this.baseSize,
    this.size,
    this.addSalePrice,
  });

  SizeInfo copyWith({
    bool? baseSize,
    String? size,
    int? addSalePrice,
  }) =>
      SizeInfo(
        baseSize: baseSize ?? this.baseSize,
        size: size ?? this.size,
        addSalePrice: addSalePrice ?? this.addSalePrice,
      );

  factory SizeInfo.fromRawJson(String str) => SizeInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SizeInfo.fromJson(Map<String, dynamic> json) => SizeInfo(
    baseSize: json["baseSize"],
    size: json["size"],
    addSalePrice: json["addSalePrice"],
  );

  Map<String, dynamic> toJson() => {
    "baseSize": baseSize,
    "size": size,
    "addSalePrice": addSalePrice,
  };
}