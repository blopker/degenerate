// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payments_primitives_payment_records_resource_payment_method_konbini_details_resource_store.dart';/// 
final class PaymentMethodDetailsPaymentRecordKonbini {const PaymentMethodDetailsPaymentRecordKonbini({this.store});

factory PaymentMethodDetailsPaymentRecordKonbini.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordKonbini(
  store: json['store'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore.fromJson(json['store'] as Map<String, dynamic>) : null,
); }

/// If the payment succeeded, this contains the details of the convenience store where the payment was completed.
final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore? store;

Map<String, dynamic> toJson() { return {
  if (store != null) 'store': store?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'store'}.contains(key)); } 
PaymentMethodDetailsPaymentRecordKonbini copyWith({PaymentsPrimitivesPaymentRecordsResourcePaymentMethodKonbiniDetailsResourceStore? Function()? store}) { return PaymentMethodDetailsPaymentRecordKonbini(
  store: store != null ? store() : this.store,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordKonbini &&
          store == other.store; } 
@override int get hashCode { return store.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordKonbini(store: $store)'; } 
 }
