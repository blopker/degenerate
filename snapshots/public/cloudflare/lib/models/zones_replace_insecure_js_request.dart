// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_replace_insecure_js_value.dart';/// Automatically replace insecure JavaScript libraries with safer and faster alternatives provided under cdnjs and powered by Cloudflare. Currently supports the following libraries: Polyfill under polyfill.io.
/// 
@immutable final class ZonesReplaceInsecureJsRequest {const ZonesReplaceInsecureJsRequest({required this.id, required this.value, });

factory ZonesReplaceInsecureJsRequest.fromJson(Map<String, dynamic> json) {return ZonesReplaceInsecureJsRequest(
  id: json['id'],
  value: ZonesReplaceInsecureJsValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesReplaceInsecureJsValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesReplaceInsecureJsRequest copyWith({dynamic Function()? id, ZonesReplaceInsecureJsValue? value, }) {return ZonesReplaceInsecureJsRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesReplaceInsecureJsRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesReplaceInsecureJsRequest(id: $id, value: $value)';}
}
