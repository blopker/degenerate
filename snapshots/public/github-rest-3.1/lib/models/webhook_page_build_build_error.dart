// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPageBuildBuildError {const WebhookPageBuildBuildError({required this.message});

factory WebhookPageBuildBuildError.fromJson(Map<String, dynamic> json) { return WebhookPageBuildBuildError(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
WebhookPageBuildBuildError copyWith({String? Function()? message}) { return WebhookPageBuildBuildError(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPageBuildBuildError &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'WebhookPageBuildBuildError(message: $message)'; } 
 }
