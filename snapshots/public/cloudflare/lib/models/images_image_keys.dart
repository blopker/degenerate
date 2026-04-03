// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Key name.
extension type const ImagesImageKeyName(String value) {
factory ImagesImageKeyName.fromJson(String json) => ImagesImageKeyName(json);

String toJson() => value;

}
/// Key value.
extension type const ImagesImageKeyValue(String value) {
factory ImagesImageKeyValue.fromJson(String json) => ImagesImageKeyValue(json);

String toJson() => value;

}
@immutable final class ImagesImageKeys {const ImagesImageKeys({this.name, this.value, });

factory ImagesImageKeys.fromJson(Map<String, dynamic> json) { return ImagesImageKeys(
  name: json['name'] != null ? ImagesImageKeyName.fromJson(json['name'] as String) : null,
  value: json['value'] != null ? ImagesImageKeyValue.fromJson(json['value'] as String) : null,
); }

/// Key name.
final ImagesImageKeyName? name;

/// Key value.
final ImagesImageKeyValue? value;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'value'}.contains(key)); } 
ImagesImageKeys copyWith({ImagesImageKeyName Function()? name, ImagesImageKeyValue Function()? value, }) { return ImagesImageKeys(
  name: name != null ? name() : this.name,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageKeys &&
          name == other.name &&
          value == other.value; } 
@override int get hashCode { return Object.hash(name, value); } 
@override String toString() { return 'ImagesImageKeys(name: $name, value: $value)'; } 
 }
