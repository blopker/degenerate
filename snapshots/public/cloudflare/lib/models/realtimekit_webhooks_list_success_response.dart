// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_webhook.dart';@immutable final class RealtimekitWebhooksListSuccessResponse {const RealtimekitWebhooksListSuccessResponse({required this.data, required this.success, });

factory RealtimekitWebhooksListSuccessResponse.fromJson(Map<String, dynamic> json) { return RealtimekitWebhooksListSuccessResponse(
  data: (json['data'] as List<dynamic>).map((e) => RealtimekitWebhook.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<RealtimekitWebhook> data;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
RealtimekitWebhooksListSuccessResponse copyWith({List<RealtimekitWebhook>? data, bool? success, }) { return RealtimekitWebhooksListSuccessResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitWebhooksListSuccessResponse &&
          listEquals(data, other.data) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), success); } 
@override String toString() { return 'RealtimekitWebhooksListSuccessResponse(data: $data, success: $success)'; } 
 }
