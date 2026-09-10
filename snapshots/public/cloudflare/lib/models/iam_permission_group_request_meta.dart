// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Attributes associated to the permission group.
@immutable final class IamPermissionGroupRequestMeta {const IamPermissionGroupRequestMeta({this.key, this.value, });

factory IamPermissionGroupRequestMeta.fromJson(Map<String, dynamic> json) {return IamPermissionGroupRequestMeta(
  key: json['key'] as String?,
  value: json['value'] as String?,
);}

final String? key;

final String? value;

Map<String, dynamic> toJson() {return {
  'key': ?key,
  'value': ?value,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'key', 'value'}.contains(key));}
IamPermissionGroupRequestMeta copyWith({String? Function()? key, String? Function()? value, }) {return IamPermissionGroupRequestMeta(
  key: key != null ? key() : this.key,
  value: value != null ? value() : this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is IamPermissionGroupRequestMeta &&
          key == other.key &&
          value == other.value;}
@override int get hashCode {return Object.hash(key, value);}
@override String toString() {return 'IamPermissionGroupRequestMeta(key: $key, value: $value)';}
}
