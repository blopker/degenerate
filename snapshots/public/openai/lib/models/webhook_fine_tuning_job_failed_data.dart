// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookFineTuningJobFailedData {const WebhookFineTuningJobFailedData({required this.id});

factory WebhookFineTuningJobFailedData.fromJson(Map<String, dynamic> json) { return WebhookFineTuningJobFailedData(
  id: json['id'] as String,
); }

/// The unique ID of the fine-tuning job.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookFineTuningJobFailedData copyWith({String? id}) { return WebhookFineTuningJobFailedData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookFineTuningJobFailedData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookFineTuningJobFailedData(id: $id)'; } 
 }
