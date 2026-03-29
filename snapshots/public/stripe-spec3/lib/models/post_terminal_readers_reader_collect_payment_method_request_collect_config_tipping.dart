// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping {const PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping({this.amountEligible});

factory PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping(
  amountEligible: json['amount_eligible'] != null ? (json['amount_eligible'] as num).toInt() : null,
); }

final int? amountEligible;

Map<String, dynamic> toJson() { return {
  'amount_eligible': ?amountEligible,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_eligible'}.contains(key)); } 
PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping copyWith({int Function()? amountEligible}) { return PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping(
  amountEligible: amountEligible != null ? amountEligible() : this.amountEligible,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping &&
          amountEligible == other.amountEligible; } 
@override int get hashCode { return amountEligible.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderCollectPaymentMethodRequestCollectConfigTipping(amountEligible: $amountEligible)'; } 
 }
