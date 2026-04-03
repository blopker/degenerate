// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event data payload.
/// 
@immutable final class WebhookFineTuningJobCancelledData {const WebhookFineTuningJobCancelledData({required this.id});

factory WebhookFineTuningJobCancelledData.fromJson(Map<String, dynamic> json) { return WebhookFineTuningJobCancelledData(
  id: json['id'] as String,
); }

/// The unique ID of the fine-tuning job.
/// 
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
WebhookFineTuningJobCancelledData copyWith({String? id}) { return WebhookFineTuningJobCancelledData(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookFineTuningJobCancelledData &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'WebhookFineTuningJobCancelledData(id: $id)'; } 
 }
