// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest {const PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest({required this.confirmed, this.expand, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest(
  confirmed: json['confirmed'] as bool,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
final bool confirmed;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'confirmed': confirmed,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('confirmed') && json['confirmed'] is bool; } 
PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest copyWith({bool? confirmed, List<String> Function()? expand, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest(
  confirmed: confirmed ?? this.confirmed,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest &&
          confirmed == other.confirmed &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(confirmed, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationFraudChallengesRespondRequest(confirmed: $confirmed, expand: $expand)'; } 
 }
