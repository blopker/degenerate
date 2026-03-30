// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class CheckoutPaymentMethodOptionsMandateOptionsBacsDebit {const CheckoutPaymentMethodOptionsMandateOptionsBacsDebit({this.referencePrefix});

factory CheckoutPaymentMethodOptionsMandateOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return CheckoutPaymentMethodOptionsMandateOptionsBacsDebit(
  referencePrefix: json['reference_prefix'] as String?,
); }

/// Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
final String? referencePrefix;

Map<String, dynamic> toJson() { return {
  'reference_prefix': ?referencePrefix,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_prefix'}.contains(key)); } 
CheckoutPaymentMethodOptionsMandateOptionsBacsDebit copyWith({String Function()? referencePrefix}) { return CheckoutPaymentMethodOptionsMandateOptionsBacsDebit(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutPaymentMethodOptionsMandateOptionsBacsDebit &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'CheckoutPaymentMethodOptionsMandateOptionsBacsDebit(referencePrefix: $referencePrefix)'; } 
 }
