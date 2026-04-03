// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_after_expiration_recovery.dart';/// Configure actions after a Checkout Session has expired. You can't set this parameter if `ui_mode` is `custom`.
@immutable final class PostCheckoutSessionsRequestAfterExpiration {const PostCheckoutSessionsRequestAfterExpiration({this.recovery});

factory PostCheckoutSessionsRequestAfterExpiration.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestAfterExpiration(
  recovery: json['recovery'] != null ? PostCheckoutSessionsRequestAfterExpirationRecovery.fromJson(json['recovery'] as Map<String, dynamic>) : null,
); }

final PostCheckoutSessionsRequestAfterExpirationRecovery? recovery;

Map<String, dynamic> toJson() { return {
  if (recovery != null) 'recovery': recovery?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'recovery'}.contains(key)); } 
PostCheckoutSessionsRequestAfterExpiration copyWith({PostCheckoutSessionsRequestAfterExpirationRecovery Function()? recovery}) { return PostCheckoutSessionsRequestAfterExpiration(
  recovery: recovery != null ? recovery() : this.recovery,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestAfterExpiration &&
          recovery == other.recovery; } 
@override int get hashCode { return recovery.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestAfterExpiration(recovery: $recovery)'; } 
 }
