// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_create_dataset_response_result_filters.dart';@immutable final class AigConfigCreateDatasetResponseResult {const AigConfigCreateDatasetResponseResult({required this.createdAt, required this.enable, required this.filters, required this.gatewayId, required this.id, required this.modifiedAt, required this.name, });

factory AigConfigCreateDatasetResponseResult.fromJson(Map<String, dynamic> json) { return AigConfigCreateDatasetResponseResult(
  createdAt: DateTime.parse(json['created_at'] as String),
  enable: json['enable'] as bool,
  filters: (json['filters'] as List<dynamic>).map((e) => AigConfigCreateDatasetResponseResultFilters.fromJson(e as Map<String, dynamic>)).toList(),
  gatewayId: json['gateway_id'] as String,
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
); }

final DateTime createdAt;

final bool enable;

final List<AigConfigCreateDatasetResponseResultFilters> filters;

/// gateway id
final String gatewayId;

final String id;

final DateTime modifiedAt;

final String name;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'enable': enable,
  'filters': filters.map((e) => e.toJson()).toList(),
  'gateway_id': gatewayId,
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enable') && json['enable'] is bool &&
      json.containsKey('filters') &&
      json.containsKey('gateway_id') && json['gateway_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String; } 
AigConfigCreateDatasetResponseResult copyWith({DateTime? createdAt, bool? enable, List<AigConfigCreateDatasetResponseResultFilters>? filters, String? gatewayId, String? id, DateTime? modifiedAt, String? name, }) { return AigConfigCreateDatasetResponseResult(
  createdAt: createdAt ?? this.createdAt,
  enable: enable ?? this.enable,
  filters: filters ?? this.filters,
  gatewayId: gatewayId ?? this.gatewayId,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateDatasetResponseResult &&
          createdAt == other.createdAt &&
          enable == other.enable &&
          listEquals(filters, other.filters) &&
          gatewayId == other.gatewayId &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name; } 
@override int get hashCode { return Object.hash(createdAt, enable, Object.hashAll(filters), gatewayId, id, modifiedAt, name); } 
@override String toString() { return 'AigConfigCreateDatasetResponseResult(createdAt: $createdAt, enable: $enable, filters: $filters, gatewayId: $gatewayId, id: $id, modifiedAt: $modifiedAt, name: $name)'; } 
 }
