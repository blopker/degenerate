// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit {const SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit({this.referencePrefix});

factory SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit(
  referencePrefix: json['reference_prefix'] as String?,
); }

/// Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'DDIC' or 'STRIPE'.
final String? referencePrefix;

Map<String, dynamic> toJson() { return {
  'reference_prefix': ?referencePrefix,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit copyWith({String Function()? referencePrefix}) { return SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit(
  referencePrefix: referencePrefix != null ? referencePrefix() : this.referencePrefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit &&
          referencePrefix == other.referencePrefix; } 
@override int get hashCode { return referencePrefix.hashCode; } 
@override String toString() { return 'SetupIntentPaymentMethodOptionsMandateOptionsBacsDebit(referencePrefix: $referencePrefix)'; } 
 }
