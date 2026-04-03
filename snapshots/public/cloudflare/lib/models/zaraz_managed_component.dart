// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazManagedComponentType {const ZarazManagedComponentType._(this.value);

factory ZarazManagedComponentType.fromJson(String json) { return switch (json) {
  'component' => component,
  _ => ZarazManagedComponentType._(json),
}; }

static const ZarazManagedComponentType component = ZarazManagedComponentType._('component');

static const List<ZarazManagedComponentType> values = [component];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazManagedComponentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazManagedComponentType($value)'; } 
 }
@immutable final class ZarazManagedComponent {const ZarazManagedComponent({required this.type});

factory ZarazManagedComponent.fromJson(Map<String, dynamic> json) { return ZarazManagedComponent(
  type: ZarazManagedComponentType.fromJson(json['type'] as String),
); }

final ZarazManagedComponentType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ZarazManagedComponent copyWith({ZarazManagedComponentType? type}) { return ZarazManagedComponent(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazManagedComponent &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ZarazManagedComponent(type: $type)'; } 
 }
