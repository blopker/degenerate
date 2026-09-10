// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_proxy_read_timeout_value.dart';/// Maximum time between two read operations from origin.
@immutable final class ZonesProxyReadTimeout {const ZonesProxyReadTimeout({required this.id, required this.value, this.editable, this.modifiedOn = const Omittable.absent(), });

factory ZonesProxyReadTimeout.fromJson(Map<String, dynamic> json) {return ZonesProxyReadTimeout(
  editable: json['editable'] as bool?,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesProxyReadTimeoutValue.fromJson(json['value'] as num),
);}

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool? editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesProxyReadTimeoutValue value;

/// The value with the schema default applied when absent.
bool get editableOrDefault {return editable ?? true;}
Map<String, dynamic> toJson() {return {
  'editable': ?editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesProxyReadTimeout copyWith({bool? Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesProxyReadTimeoutValue? value, }) {return ZonesProxyReadTimeout(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesProxyReadTimeout &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value;}
@override int get hashCode {return Object.hash(editable, id, modifiedOn, value);}
@override String toString() {return 'ZonesProxyReadTimeout(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)';}
}
