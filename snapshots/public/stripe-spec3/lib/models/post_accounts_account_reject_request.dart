// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRejectRequest {const PostAccountsAccountRejectRequest({required this.reason, this.expand, });

factory PostAccountsAccountRejectRequest.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRejectRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  reason: json['reason'] as String,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
final String reason;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'reason': reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reason') && json['reason'] is String; } 
PostAccountsAccountRejectRequest copyWith({List<String> Function()? expand, String? reason, }) { return PostAccountsAccountRejectRequest(
  expand: expand != null ? expand() : this.expand,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRejectRequest &&
          listEquals(expand, other.expand) &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), reason); } 
@override String toString() { return 'PostAccountsAccountRejectRequest(expand: $expand, reason: $reason)'; } 
 }
