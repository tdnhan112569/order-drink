import 'dart:convert';

class OptionalInfo {
  final String? label;
  final List<String>? values;
  final String? defaultValue;

  OptionalInfo({
    this.label,
    this.values,
    this.defaultValue,
  });

  OptionalInfo copyWith({
    String? label,
    List<String>? values,
    String? defaultValue,
  }) =>
      OptionalInfo(
        label: label ?? this.label,
        values: values ?? this.values,
        defaultValue: defaultValue ?? this.defaultValue,
      );

  factory OptionalInfo.fromRawJson(String str) => OptionalInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OptionalInfo.fromJson(Map<String, dynamic> json) => OptionalInfo(
    label: json["label"],
    values: json["values"] == null ? [] : List<String>.from(json["values"]!.map((x) => x)),
    defaultValue: json["defaultValue"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x)),
    "defaultValue": defaultValue,
  };
}