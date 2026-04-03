// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class CheckoutSwishPaymentMethodOptions {const CheckoutSwishPaymentMethodOptions({this.reference});

factory CheckoutSwishPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutSwishPaymentMethodOptions(
  reference: json['reference'] as String?,
); }

/// The order reference that will be displayed to customers in the Swish application. Defaults to the `id` of the Payment Intent.
final String? reference;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
CheckoutSwishPaymentMethodOptions copyWith({String? Function()? reference}) { return CheckoutSwishPaymentMethodOptions(
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutSwishPaymentMethodOptions &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'CheckoutSwishPaymentMethodOptions(reference: $reference)'; } 
 }
