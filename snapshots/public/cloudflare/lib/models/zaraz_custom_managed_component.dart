// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_custom_managed_component_worker.dart';@immutable final class ZarazCustomManagedComponentType {const ZarazCustomManagedComponentType._(this.value);

factory ZarazCustomManagedComponentType.fromJson(String json) { return switch (json) {
  'custom-mc' => customMc,
  _ => ZarazCustomManagedComponentType._(json),
}; }

static const ZarazCustomManagedComponentType customMc = ZarazCustomManagedComponentType._('custom-mc');

static const List<ZarazCustomManagedComponentType> values = [customMc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazCustomManagedComponentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazCustomManagedComponentType($value)'; } 
 }
@immutable final class ZarazCustomManagedComponent {const ZarazCustomManagedComponent({required this.type, required this.worker, });

factory ZarazCustomManagedComponent.fromJson(Map<String, dynamic> json) { return ZarazCustomManagedComponent(
  type: ZarazCustomManagedComponentType.fromJson(json['type'] as String),
  worker: ZarazCustomManagedComponentWorker.fromJson(json['worker'] as Map<String, dynamic>),
); }

final ZarazCustomManagedComponentType type;

/// Cloudflare worker that acts as a managed component
final ZarazCustomManagedComponentWorker worker;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'worker': worker.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('worker'); } 
ZarazCustomManagedComponent copyWith({ZarazCustomManagedComponentType? type, ZarazCustomManagedComponentWorker? worker, }) { return ZarazCustomManagedComponent(
  type: type ?? this.type,
  worker: worker ?? this.worker,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazCustomManagedComponent &&
          type == other.type &&
          worker == other.worker; } 
@override int get hashCode { return Object.hash(type, worker); } 
@override String toString() { return 'ZarazCustomManagedComponent(type: $type, worker: $worker)'; } 
 }
