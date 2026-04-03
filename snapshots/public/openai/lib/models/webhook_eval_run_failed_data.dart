// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookEvalRunFailedData {const WebhookEvalRunFailedData({required this.id});

factory WebhookEvalRunFailedData.fromJson(Map<String, dynamic> json) { return WebhookEvalRunFailedData(
  id: json['id'] as String,
); }

/// The unique ID of the eval run.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookEvalRunFailedData copyWith({String? id}) { return WebhookEvalRunFailedData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookEvalRunFailedData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookEvalRunFailedData(id: $id)'; } 
 }
