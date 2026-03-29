// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SetupAttemptPaymentMethodDetailsNaverPay {const SetupAttemptPaymentMethodDetailsNaverPay({this.buyerId});

factory SetupAttemptPaymentMethodDetailsNaverPay.fromJson(Map<String, dynamic> json) { return SetupAttemptPaymentMethodDetailsNaverPay(
  buyerId: json['buyer_id'] as String?,
); }

/// Uniquely identifies this particular Naver Pay account. You can use this attribute to check whether two Naver Pay accounts are the same.
final String? buyerId;

Map<String, dynamic> toJson() { return {
  'buyer_id': ?buyerId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SetupAttemptPaymentMethodDetailsNaverPay copyWith({String Function()? buyerId}) { return SetupAttemptPaymentMethodDetailsNaverPay(
  buyerId: buyerId != null ? buyerId() : this.buyerId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupAttemptPaymentMethodDetailsNaverPay &&
          buyerId == other.buyerId; } 
@override int get hashCode { return buyerId.hashCode; } 
@override String toString() { return 'SetupAttemptPaymentMethodDetailsNaverPay(buyerId: $buyerId)'; } 
 }
