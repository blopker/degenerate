// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSessionsSessionIdSummaryResponse2XxData {const PostSessionsSessionIdSummaryResponse2XxData({this.message, this.success, });

factory PostSessionsSessionIdSummaryResponse2XxData.fromJson(Map<String, dynamic> json) { return PostSessionsSessionIdSummaryResponse2XxData(
  message: json['message'] as String?,
  success: json['success'] as bool?,
); }

final String? message;

final bool? success;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'success'}.contains(key)); } 
PostSessionsSessionIdSummaryResponse2XxData copyWith({String Function()? message, bool Function()? success, }) { return PostSessionsSessionIdSummaryResponse2XxData(
  message: message != null ? message() : this.message,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSessionsSessionIdSummaryResponse2XxData &&
          message == other.message &&
          success == other.success; } 
@override int get hashCode { return Object.hash(message, success); } 
@override String toString() { return 'PostSessionsSessionIdSummaryResponse2XxData(message: $message, success: $success)'; } 
 }
