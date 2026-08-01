// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'insights_resources_payment_evaluation_address.dart';/// Shipping details attached to this payment.
@immutable final class InsightsResourcesPaymentEvaluationShipping {const InsightsResourcesPaymentEvaluationShipping({required this.address, this.name = const Omittable.absent(), this.phone = const Omittable.absent(), });

factory InsightsResourcesPaymentEvaluationShipping.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationShipping(
  address: InsightsResourcesPaymentEvaluationAddress.fromJson(json['address'] as Map<String, dynamic>),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
); }

final InsightsResourcesPaymentEvaluationAddress address;

/// Shipping name.
final Omittable<String?> name;

/// Shipping phone number.
final Omittable<String?> phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (name.isPresent) 'name': name.value,
  if (phone.isPresent) 'phone': phone.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
InsightsResourcesPaymentEvaluationShipping copyWith({InsightsResourcesPaymentEvaluationAddress? address, Omittable<String?>? name, Omittable<String?>? phone, }) { return InsightsResourcesPaymentEvaluationShipping(
  address: address ?? this.address,
  name: name ?? this.name,
  phone: phone ?? this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationShipping &&
          address == other.address &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, name, phone); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationShipping(address: $address, name: $name, phone: $phone)'; } 
 }
