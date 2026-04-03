// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookEvalRunCanceledData {const WebhookEvalRunCanceledData({required this.id});

factory WebhookEvalRunCanceledData.fromJson(Map<String, dynamic> json) { return WebhookEvalRunCanceledData(
  id: json['id'] as String,
); }

/// The unique ID of the eval run.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookEvalRunCanceledData copyWith({String? id}) { return WebhookEvalRunCanceledData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookEvalRunCanceledData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookEvalRunCanceledData(id: $id)'; } 
 }
