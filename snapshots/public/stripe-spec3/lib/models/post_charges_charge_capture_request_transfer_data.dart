// GENERATED CODE - DO NOT MODIFY BY HAND

/// An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
final class PostChargesChargeCaptureRequestTransferData {const PostChargesChargeCaptureRequestTransferData({this.amount});

factory PostChargesChargeCaptureRequestTransferData.fromJson(Map<String, dynamic> json) { return PostChargesChargeCaptureRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
); }

final int? amount;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount'}.contains(key)); } 
PostChargesChargeCaptureRequestTransferData copyWith({int Function()? amount}) { return PostChargesChargeCaptureRequestTransferData(
  amount: amount != null ? amount() : this.amount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostChargesChargeCaptureRequestTransferData &&
          amount == other.amount; } 
@override int get hashCode { return amount.hashCode; } 
@override String toString() { return 'PostChargesChargeCaptureRequestTransferData(amount: $amount)'; } 
 }
