// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_details_konbini_store2.dart';/// 
final class PaymentMethodDetailsKonbini {const PaymentMethodDetailsKonbini({this.store});

factory PaymentMethodDetailsKonbini.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsKonbini(
  store: json['store'] != null ? PaymentMethodDetailsKonbiniStore2.fromJson(json['store'] as Map<String, dynamic>) : null,
); }

/// If the payment succeeded, this contains the details of the convenience store where the payment was completed.
final PaymentMethodDetailsKonbiniStore2? store;

Map<String, dynamic> toJson() { return {
  if (store != null) 'store': store?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'store'}.contains(key)); } 
PaymentMethodDetailsKonbini copyWith({PaymentMethodDetailsKonbiniStore2? Function()? store}) { return PaymentMethodDetailsKonbini(
  store: store != null ? store() : this.store,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsKonbini &&
          store == other.store; } 
@override int get hashCode { return store.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsKonbini(store: $store)'; } 
 }
