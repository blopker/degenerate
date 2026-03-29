// GENERATED CODE - DO NOT MODIFY BY HAND

import 'insights_resources_payment_evaluation_address.dart';/// Billing details attached to this payment evaluation.
final class InsightsResourcesPaymentEvaluationBillingDetails {const InsightsResourcesPaymentEvaluationBillingDetails({required this.address, this.email, this.name, this.phone, });

factory InsightsResourcesPaymentEvaluationBillingDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationBillingDetails(
  address: InsightsResourcesPaymentEvaluationAddress.fromJson(json['address'] as Map<String, dynamic>),
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final InsightsResourcesPaymentEvaluationAddress address;

/// Email address.
final String? email;

/// Full name.
final String? name;

/// Billing phone number (including extension).
final String? phone;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
InsightsResourcesPaymentEvaluationBillingDetails copyWith({InsightsResourcesPaymentEvaluationAddress? address, String? Function()? email, String? Function()? name, String? Function()? phone, }) { return InsightsResourcesPaymentEvaluationBillingDetails(
  address: address ?? this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationBillingDetails(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
