// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_after_expiration_recovery.dart';/// 
@immutable final class PaymentPagesCheckoutSessionAfterExpiration {const PaymentPagesCheckoutSessionAfterExpiration({this.recovery = const Omittable.absent()});

factory PaymentPagesCheckoutSessionAfterExpiration.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionAfterExpiration(
  recovery: json.containsKey('recovery') ? Omittable(json['recovery'] != null ? PaymentPagesCheckoutSessionAfterExpirationRecovery.fromJson(json['recovery'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// When set, configuration used to recover the Checkout Session on expiry.
final Omittable<PaymentPagesCheckoutSessionAfterExpirationRecovery?> recovery;

Map<String, dynamic> toJson() { return {
  if (recovery.isPresent) 'recovery': recovery.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'recovery'}.contains(key)); } 
PaymentPagesCheckoutSessionAfterExpiration copyWith({Omittable<PaymentPagesCheckoutSessionAfterExpirationRecovery?>? recovery}) { return PaymentPagesCheckoutSessionAfterExpiration(
  recovery: recovery ?? this.recovery,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionAfterExpiration &&
          recovery == other.recovery; } 
@override int get hashCode { return recovery.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionAfterExpiration(recovery: $recovery)'; } 
 }
