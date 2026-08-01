// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_payment_method_konbini_details_resource_store.dart';/// 
@immutable final class PaymentMethodDetailsPaymentRecordKonbini {const PaymentMethodDetailsPaymentRecordKonbini({this.store = const Omittable.absent()});

factory PaymentMethodDetailsPaymentRecordKonbini.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordKonbini(
  store: json.containsKey('store') ? Omittable(json['store'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore.fromJson(json['store'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// If the payment succeeded, this contains the details of the convenience store where the payment was completed.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore?> store;

Map<String, dynamic> toJson() { return {
  if (store.isPresent) 'store': store.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'store'}.contains(key)); } 
PaymentMethodDetailsPaymentRecordKonbini copyWith({Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore?>? store}) { return PaymentMethodDetailsPaymentRecordKonbini(
  store: store ?? this.store,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordKonbini &&
          store == other.store; } 
@override int get hashCode { return store.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordKonbini(store: $store)'; } 
 }
