// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_webhook.dart';@immutable final class RealtimekitWebhookSuccessResponse {const RealtimekitWebhookSuccessResponse({required this.data, required this.success, });

factory RealtimekitWebhookSuccessResponse.fromJson(Map<String, dynamic> json) { return RealtimekitWebhookSuccessResponse(
  data: RealtimekitWebhook.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RealtimekitWebhook data;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
RealtimekitWebhookSuccessResponse copyWith({RealtimekitWebhook? data, bool? success, }) { return RealtimekitWebhookSuccessResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitWebhookSuccessResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'RealtimekitWebhookSuccessResponse(data: $data, success: $success)'; } 
 }
