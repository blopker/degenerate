// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_records_id_report_payment_attempt_request_payment_method_details_billing_details_address.dart';@immutable final class PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails {const PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails({this.address, this.email, this.name, this.phone, });

factory PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails(
  address: json['address'] != null ? PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetailsAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  email: json['email'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetailsAddress? address;

final String? email;

final String? name;

final String? phone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'email': ?email,
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'email', 'name', 'phone'}.contains(key)); } 
PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails copyWith({PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetailsAddress Function()? address, String Function()? email, String Function()? name, String Function()? phone, }) { return PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails(
  address: address != null ? address() : this.address,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails &&
          address == other.address &&
          email == other.email &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, email, name, phone); } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsBillingDetails(address: $address, email: $email, name: $name, phone: $phone)'; } 
 }
