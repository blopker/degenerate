// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullsUpdateBranchResponse {const PullsUpdateBranchResponse({this.message, this.url, });

factory PullsUpdateBranchResponse.fromJson(Map<String, dynamic> json) { return PullsUpdateBranchResponse(
  message: json['message'] as String?,
  url: json['url'] as String?,
); }

final String? message;

final String? url;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'url'}.contains(key)); } 
PullsUpdateBranchResponse copyWith({String Function()? message, String Function()? url, }) { return PullsUpdateBranchResponse(
  message: message != null ? message() : this.message,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsUpdateBranchResponse &&
          message == other.message &&
          url == other.url; } 
@override int get hashCode { return Object.hash(message, url); } 
@override String toString() { return 'PullsUpdateBranchResponse(message: $message, url: $url)'; } 
 }
