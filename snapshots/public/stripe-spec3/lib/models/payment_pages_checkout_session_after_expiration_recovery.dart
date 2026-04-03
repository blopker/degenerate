// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentPagesCheckoutSessionAfterExpirationRecovery {const PaymentPagesCheckoutSessionAfterExpirationRecovery({required this.allowPromotionCodes, required this.enabled, this.expiresAt, this.url, });

factory PaymentPagesCheckoutSessionAfterExpirationRecovery.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionAfterExpirationRecovery(
  allowPromotionCodes: json['allow_promotion_codes'] as bool,
  enabled: json['enabled'] as bool,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  url: json['url'] as String?,
); }

/// Enables user redeemable promotion codes on the recovered Checkout Sessions. Defaults to `false`
final bool allowPromotionCodes;

/// If `true`, a recovery url will be generated to recover this Checkout Session if it
/// expires before a transaction is completed. It will be attached to the
/// Checkout Session object upon expiration.
final bool enabled;

/// The timestamp at which the recovery URL will expire.
final int? expiresAt;

/// URL that creates a new Checkout Session when clicked that is a copy of this expired Checkout Session
final String? url;

Map<String, dynamic> toJson() { return {
  'allow_promotion_codes': allowPromotionCodes,
  'enabled': enabled,
  'expires_at': ?expiresAt,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allow_promotion_codes') && json['allow_promotion_codes'] is bool &&
      json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentPagesCheckoutSessionAfterExpirationRecovery copyWith({bool? allowPromotionCodes, bool? enabled, int? Function()? expiresAt, String? Function()? url, }) { return PaymentPagesCheckoutSessionAfterExpirationRecovery(
  allowPromotionCodes: allowPromotionCodes ?? this.allowPromotionCodes,
  enabled: enabled ?? this.enabled,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionAfterExpirationRecovery &&
          allowPromotionCodes == other.allowPromotionCodes &&
          enabled == other.enabled &&
          expiresAt == other.expiresAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(allowPromotionCodes, enabled, expiresAt, url); } 
@override String toString() { return 'PaymentPagesCheckoutSessionAfterExpirationRecovery(allowPromotionCodes: $allowPromotionCodes, enabled: $enabled, expiresAt: $expiresAt, url: $url)'; } 
 }
