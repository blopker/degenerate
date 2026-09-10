// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodCardChecks {const PaymentMethodCardChecks({this.addressLine1Check = const Omittable.absent(), this.addressPostalCodeCheck = const Omittable.absent(), this.cvcCheck = const Omittable.absent(), });

factory PaymentMethodCardChecks.fromJson(Map<String, dynamic> json) { return PaymentMethodCardChecks(
  addressLine1Check: json.containsKey('address_line1_check') ? Omittable(json['address_line1_check'] as String?) : const Omittable.absent(),
  addressPostalCodeCheck: json.containsKey('address_postal_code_check') ? Omittable(json['address_postal_code_check'] as String?) : const Omittable.absent(),
  cvcCheck: json.containsKey('cvc_check') ? Omittable(json['cvc_check'] as String?) : const Omittable.absent(),
); }

/// If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
final Omittable<String?> addressLine1Check;

/// If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
final Omittable<String?> addressPostalCodeCheck;

/// If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
final Omittable<String?> cvcCheck;

Map<String, dynamic> toJson() { return {
  if (addressLine1Check.isPresent) 'address_line1_check': addressLine1Check.value,
  if (addressPostalCodeCheck.isPresent) 'address_postal_code_check': addressPostalCodeCheck.value,
  if (cvcCheck.isPresent) 'cvc_check': cvcCheck.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address_line1_check', 'address_postal_code_check', 'cvc_check'}.contains(key)); } 
PaymentMethodCardChecks copyWith({Omittable<String?>? addressLine1Check, Omittable<String?>? addressPostalCodeCheck, Omittable<String?>? cvcCheck, }) { return PaymentMethodCardChecks(
  addressLine1Check: addressLine1Check ?? this.addressLine1Check,
  addressPostalCodeCheck: addressPostalCodeCheck ?? this.addressPostalCodeCheck,
  cvcCheck: cvcCheck ?? this.cvcCheck,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardChecks &&
          addressLine1Check == other.addressLine1Check &&
          addressPostalCodeCheck == other.addressPostalCodeCheck &&
          cvcCheck == other.cvcCheck; } 
@override int get hashCode { return Object.hash(addressLine1Check, addressPostalCodeCheck, cvcCheck); } 
@override String toString() { return 'PaymentMethodCardChecks(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, cvcCheck: $cvcCheck)'; } 
 }
