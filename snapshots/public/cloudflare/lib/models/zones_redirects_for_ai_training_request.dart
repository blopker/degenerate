// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_redirects_for_ai_training_value.dart';/// When enabled, Cloudflare will redirect verified AI training crawlers to canonical URLs
/// found in the HTML response, ensuring AI models train on authoritative content.
@immutable final class ZonesRedirectsForAiTrainingRequest {const ZonesRedirectsForAiTrainingRequest({required this.id, required this.value, });

factory ZonesRedirectsForAiTrainingRequest.fromJson(Map<String, dynamic> json) { return ZonesRedirectsForAiTrainingRequest(
  id: json['id'],
  value: ZonesRedirectsForAiTrainingValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesRedirectsForAiTrainingValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesRedirectsForAiTrainingRequest copyWith({dynamic Function()? id, ZonesRedirectsForAiTrainingValue? value, }) { return ZonesRedirectsForAiTrainingRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesRedirectsForAiTrainingRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesRedirectsForAiTrainingRequest(id: $id, value: $value)'; } 
 }
