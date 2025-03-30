import 'dart:convert';

class FuckDragonProductModel {
  final Data? data;
  final Paging? paging;

  FuckDragonProductModel({
    this.data,
    this.paging,
  });

  FuckDragonProductModel copyWith({
    Data? data,
    Paging? paging,
  }) =>
      FuckDragonProductModel(
        data: data ?? this.data,
        paging: paging ?? this.paging,
      );

  factory FuckDragonProductModel.fromRawJson(String str) => FuckDragonProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FuckDragonProductModel.fromJson(Map<String, dynamic> json) => FuckDragonProductModel(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    paging: json["paging"] == null ? null : Paging.fromJson(json["paging"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "paging": paging?.toJson(),
  };
}

class Data {
  final String? name;
  final String? description;
  final String? bannerUrl;
  final String? seoName;
  final List<Item>? items;

  Data({
    this.name,
    this.description,
    this.bannerUrl,
    this.seoName,
    this.items,
  });

  Data copyWith({
    String? name,
    String? description,
    String? bannerUrl,
    String? seoName,
    List<Item>? items,
  }) =>
      Data(
        name: name ?? this.name,
        description: description ?? this.description,
        bannerUrl: bannerUrl ?? this.bannerUrl,
        seoName: seoName ?? this.seoName,
        items: items ?? this.items,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    name: json["name"],
    description: json["description"],
    bannerUrl: json["bannerUrl"],
    seoName: json["seoName"],
    items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "bannerUrl": bannerUrl,
    "seoName": seoName,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  final String? id;
  final String? itemNo;
  final String? storeNo;
  final int? v;
  final String? basicItemNo;
  final String? basicMatl;
  final String? itemId;
  final dynamic itemType;
  final String? mch2;
  final String? mch3;
  final String? mch4;
  final String? mch5;
  final String? mch6;
  final List<MediaItem>? mediaItems;
  final String? mediaUrl;
  final String? name;
  final List<Optional>? optionals;
  final int? price;
  final int? salePrice;
  final String? seoName;
  final String? shortDesc;
  final String? size;
  final List<Size>? sizes;
  final String? subName;
  final List<Topping>? toppings;
  final DateTime? updatedDate;

  Item({
    this.id,
    this.itemNo,
    this.storeNo,
    this.v,
    this.basicItemNo,
    this.basicMatl,
    this.itemId,
    this.itemType,
    this.mch2,
    this.mch3,
    this.mch4,
    this.mch5,
    this.mch6,
    this.mediaItems,
    this.mediaUrl,
    this.name,
    this.optionals,
    this.price,
    this.salePrice,
    this.seoName,
    this.shortDesc,
    this.size,
    this.sizes,
    this.subName,
    this.toppings,
    this.updatedDate,
  });

  Item copyWith({
    String? id,
    String? itemNo,
    String? storeNo,
    int? v,
    String? basicItemNo,
    String? basicMatl,
    String? itemId,
    dynamic itemType,
    String? mch2,
    String? mch3,
    String? mch4,
    String? mch5,
    String? mch6,
    List<MediaItem>? mediaItems,
    String? mediaUrl,
    String? name,
    List<Optional>? optionals,
    int? price,
    int? salePrice,
    String? seoName,
    String? shortDesc,
    String? size,
    List<Size>? sizes,
    String? subName,
    List<Topping>? toppings,
    DateTime? updatedDate,
  }) =>
      Item(
        id: id ?? this.id,
        itemNo: itemNo ?? this.itemNo,
        storeNo: storeNo ?? this.storeNo,
        v: v ?? this.v,
        basicItemNo: basicItemNo ?? this.basicItemNo,
        basicMatl: basicMatl ?? this.basicMatl,
        itemId: itemId ?? this.itemId,
        itemType: itemType ?? this.itemType,
        mch2: mch2 ?? this.mch2,
        mch3: mch3 ?? this.mch3,
        mch4: mch4 ?? this.mch4,
        mch5: mch5 ?? this.mch5,
        mch6: mch6 ?? this.mch6,
        mediaItems: mediaItems ?? this.mediaItems,
        mediaUrl: mediaUrl ?? this.mediaUrl,
        name: name ?? this.name,
        optionals: optionals ?? this.optionals,
        price: price ?? this.price,
        salePrice: salePrice ?? this.salePrice,
        seoName: seoName ?? this.seoName,
        shortDesc: shortDesc ?? this.shortDesc,
        size: size ?? this.size,
        sizes: sizes ?? this.sizes,
        subName: subName ?? this.subName,
        toppings: toppings ?? this.toppings,
        updatedDate: updatedDate ?? this.updatedDate,
      );

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["_id"],
    itemNo: json["itemNo"],
    storeNo: json["storeNo"],
    v: json["__v"],
    basicItemNo: json["basicItemNo"],
    basicMatl: json["basicMatl"],
    itemId: json["id"],
    itemType: json["itemType"],
    mch2: json["mch2"],
    mch3: json["mch3"],
    mch4: json["mch4"],
    mch5: json["mch5"],
    mch6: json["mch6"],
    mediaItems: json["mediaItems"] == null ? [] : List<MediaItem>.from(json["mediaItems"]!.map((x) => MediaItem.fromJson(x))),
    mediaUrl: json["mediaUrl"],
    name: json["name"],
    optionals: json["optionals"] == null ? [] : List<Optional>.from(json["optionals"]!.map((x) => Optional.fromJson(x))),
    price: json["price"],
    salePrice: json["salePrice"],
    seoName: json["seoName"],
    shortDesc: json["shortDesc"],
    size: json["size"],
    sizes: json["sizes"] == null ? [] : List<Size>.from(json["sizes"]!.map((x) => Size.fromJson(x))),
    subName: json["subName"],
    toppings: json["toppings"] == null ? [] : List<Topping>.from(json["toppings"]!.map((x) => Topping.fromJson(x))),
    updatedDate: json["updatedDate"] == null ? null : DateTime.parse(json["updatedDate"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "itemNo": itemNo,
    "storeNo": storeNo,
    "__v": v,
    "basicItemNo": basicItemNo,
    "basicMatl": basicMatl,
    "id": itemId,
    "itemType": itemType,
    "mch2": mch2,
    "mch3": mch3,
    "mch4": mch4,
    "mch5": mch5,
    "mch6": mch6,
    "mediaItems": mediaItems == null ? [] : List<dynamic>.from(mediaItems!.map((x) => x.toJson())),
    "mediaUrl": mediaUrl,
    "name": name,
    "optionals": optionals == null ? [] : List<dynamic>.from(optionals!.map((x) => x.toJson())),
    "price": price,
    "salePrice": salePrice,
    "seoName": seoName,
    "shortDesc": shortDesc,
    "size": size,
    "sizes": sizes == null ? [] : List<dynamic>.from(sizes!.map((x) => x.toJson())),
    "subName": subName,
    "toppings": toppings == null ? [] : List<dynamic>.from(toppings!.map((x) => x.toJson())),
    "updatedDate": updatedDate?.toIso8601String(),
  };
}

class MediaItem {
  final String? id;
  final String? type;
  final String? mediaUrl;

  MediaItem({
    this.id,
    this.type,
    this.mediaUrl,
  });

  MediaItem copyWith({
    String? id,
    String? type,
    String? mediaUrl,
  }) =>
      MediaItem(
        id: id ?? this.id,
        type: type ?? this.type,
        mediaUrl: mediaUrl ?? this.mediaUrl,
      );

  factory MediaItem.fromRawJson(String str) => MediaItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MediaItem.fromJson(Map<String, dynamic> json) => MediaItem(
    id: json["id"],
    type: json["type"],
    mediaUrl: json["mediaUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "mediaUrl": mediaUrl,
  };
}

class Optional {
  final String? id;
  final String? label;
  final List<String>? values;
  final String? defaultValue;
  final String? displayType;

  Optional({
    this.id,
    this.label,
    this.values,
    this.defaultValue,
    this.displayType,
  });

  Optional copyWith({
    String? id,
    String? label,
    List<String>? values,
    String? defaultValue,
    String? displayType,
  }) =>
      Optional(
        id: id ?? this.id,
        label: label ?? this.label,
        values: values ?? this.values,
        defaultValue: defaultValue ?? this.defaultValue,
        displayType: displayType ?? this.displayType,
      );

  factory Optional.fromRawJson(String str) => Optional.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Optional.fromJson(Map<String, dynamic> json) => Optional(
    id: json["id"],
    label: json["label"],
    values: json["values"] == null ? [] : List<String>.from(json["values"]!.map((x) => x)),
    defaultValue: json["defaultValue"],
    displayType: json["displayType"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "label": label,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x)),
    "defaultValue": defaultValue,
    "displayType": displayType,
  };
}

class Size {
  final String? id;
  final String? itemNo;
  final String? mediaUrl;
  final String? name;
  final bool? baseSize;
  final String? size;
  final int? addSalePrice;

  Size({
    this.id,
    this.itemNo,
    this.mediaUrl,
    this.name,
    this.baseSize,
    this.size,
    this.addSalePrice,
  });

  Size copyWith({
    String? id,
    String? itemNo,
    String? mediaUrl,
    String? name,
    bool? baseSize,
    String? size,
    int? addSalePrice,
  }) =>
      Size(
        id: id ?? this.id,
        itemNo: itemNo ?? this.itemNo,
        mediaUrl: mediaUrl ?? this.mediaUrl,
        name: name ?? this.name,
        baseSize: baseSize ?? this.baseSize,
        size: size ?? this.size,
        addSalePrice: addSalePrice ?? this.addSalePrice,
      );

  factory Size.fromRawJson(String str) => Size.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Size.fromJson(Map<String, dynamic> json) => Size(
    id: json["id"],
    itemNo: json["itemNo"],
    mediaUrl: json["mediaUrl"],
    name: json["name"],
    baseSize: json["baseSize"],
    size: json["size"],
    addSalePrice: json["addSalePrice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "itemNo": itemNo,
    "mediaUrl": mediaUrl,
    "name": name,
    "baseSize": baseSize,
    "size": size,
    "addSalePrice": addSalePrice,
  };
}

class Topping {
  final String? id;
  final String? name;
  final String? subName;
  final int? salePrice;
  final String? itemNo;

  Topping({
    this.id,
    this.name,
    this.subName,
    this.salePrice,
    this.itemNo,
  });

  Topping copyWith({
    String? id,
    String? name,
    String? subName,
    int? salePrice,
    String? itemNo,
  }) =>
      Topping(
        id: id ?? this.id,
        name: name ?? this.name,
        subName: subName ?? this.subName,
        salePrice: salePrice ?? this.salePrice,
        itemNo: itemNo ?? this.itemNo,
      );

  factory Topping.fromRawJson(String str) => Topping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Topping.fromJson(Map<String, dynamic> json) => Topping(
    id: json["id"],
    name: json["name"],
    subName: json["subName"],
    salePrice: json["salePrice"],
    itemNo: json["itemNo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "subName": subName,
    "salePrice": salePrice,
    "itemNo": itemNo,
  };
}

class Paging {
  final int? totalCount;
  final int? pageSize;
  final int? totalPages;
  final int? pageNumber;
  final int? pagingCounter;
  final bool? hasPrevPage;
  final bool? hasNextPage;
  final dynamic prev;
  final dynamic next;

  Paging({
    this.totalCount,
    this.pageSize,
    this.totalPages,
    this.pageNumber,
    this.pagingCounter,
    this.hasPrevPage,
    this.hasNextPage,
    this.prev,
    this.next,
  });

  Paging copyWith({
    int? totalCount,
    int? pageSize,
    int? totalPages,
    int? pageNumber,
    int? pagingCounter,
    bool? hasPrevPage,
    bool? hasNextPage,
    dynamic prev,
    dynamic next,
  }) =>
      Paging(
        totalCount: totalCount ?? this.totalCount,
        pageSize: pageSize ?? this.pageSize,
        totalPages: totalPages ?? this.totalPages,
        pageNumber: pageNumber ?? this.pageNumber,
        pagingCounter: pagingCounter ?? this.pagingCounter,
        hasPrevPage: hasPrevPage ?? this.hasPrevPage,
        hasNextPage: hasNextPage ?? this.hasNextPage,
        prev: prev ?? this.prev,
        next: next ?? this.next,
      );

  factory Paging.fromRawJson(String str) => Paging.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Paging.fromJson(Map<String, dynamic> json) => Paging(
    totalCount: json["totalCount"],
    pageSize: json["pageSize"],
    totalPages: json["totalPages"],
    pageNumber: json["pageNumber"],
    pagingCounter: json["pagingCounter"],
    hasPrevPage: json["hasPrevPage"],
    hasNextPage: json["hasNextPage"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "totalCount": totalCount,
    "pageSize": pageSize,
    "totalPages": totalPages,
    "pageNumber": pageNumber,
    "pagingCounter": pagingCounter,
    "hasPrevPage": hasPrevPage,
    "hasNextPage": hasNextPage,
    "prev": prev,
    "next": next,
  };
}
