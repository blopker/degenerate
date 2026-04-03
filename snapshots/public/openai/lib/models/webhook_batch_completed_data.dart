// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookBatchCompletedData {const WebhookBatchCompletedData({required this.id});

factory WebhookBatchCompletedData.fromJson(Map<String, dynamic> json) { return WebhookBatchCompletedData(
  id: json['id'] as String,
); }

/// The unique ID of the batch API request.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookBatchCompletedData copyWith({String? id}) { return WebhookBatchCompletedData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBatchCompletedData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookBatchCompletedData(id: $id)'; } 
 }
