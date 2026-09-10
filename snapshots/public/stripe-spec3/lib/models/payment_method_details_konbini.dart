// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_konbini_store.dart';/// 
@immutable final class PaymentMethodDetailsKonbini {const PaymentMethodDetailsKonbini({this.store = const Omittable.absent()});

factory PaymentMethodDetailsKonbini.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsKonbini(
  store: json.containsKey('store') ? Omittable(json['store'] != null ? PaymentMethodDetailsKonbiniStore.fromJson(json['store'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// If the payment succeeded, this contains the details of the convenience store where the payment was completed.
final Omittable<PaymentMethodDetailsKonbiniStore?> store;

Map<String, dynamic> toJson() { return {
  if (store.isPresent) 'store': store.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'store'}.contains(key)); } 
PaymentMethodDetailsKonbini copyWith({Omittable<PaymentMethodDetailsKonbiniStore?>? store}) { return PaymentMethodDetailsKonbini(
  store: store ?? this.store,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsKonbini &&
          store == other.store; } 
@override int get hashCode { return store.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsKonbini(store: $store)'; } 
 }
