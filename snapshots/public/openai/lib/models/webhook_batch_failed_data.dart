// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookBatchFailedData {const WebhookBatchFailedData({required this.id});

factory WebhookBatchFailedData.fromJson(Map<String, dynamic> json) { return WebhookBatchFailedData(
  id: json['id'] as String,
); }

/// The unique ID of the batch API request.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookBatchFailedData copyWith({String? id}) { return WebhookBatchFailedData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBatchFailedData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookBatchFailedData(id: $id)'; } 
 }
