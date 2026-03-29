// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestAfterExpirationRecovery {const PostCheckoutSessionsRequestAfterExpirationRecovery({this.allowPromotionCodes, required this.enabled, });

factory PostCheckoutSessionsRequestAfterExpirationRecovery.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestAfterExpirationRecovery(
  allowPromotionCodes: json['allow_promotion_codes'] as bool?,
  enabled: json['enabled'] as bool,
); }

final bool? allowPromotionCodes;

final bool enabled;

Map<String, dynamic> toJson() { return {
  'allow_promotion_codes': ?allowPromotionCodes,
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostCheckoutSessionsRequestAfterExpirationRecovery copyWith({bool Function()? allowPromotionCodes, bool? enabled, }) { return PostCheckoutSessionsRequestAfterExpirationRecovery(
  allowPromotionCodes: allowPromotionCodes != null ? allowPromotionCodes() : this.allowPromotionCodes,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestAfterExpirationRecovery &&
          allowPromotionCodes == other.allowPromotionCodes &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(allowPromotionCodes, enabled); } 
@override String toString() { return 'PostCheckoutSessionsRequestAfterExpirationRecovery(allowPromotionCodes: $allowPromotionCodes, enabled: $enabled)'; } 
 }
