// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_records_report_payment_request_shipping_details_address.dart';/// Shipping information for this payment.
@immutable final class PostPaymentRecordsReportPaymentRequestShippingDetails {const PostPaymentRecordsReportPaymentRequestShippingDetails({this.address, this.name, this.phone, });

factory PostPaymentRecordsReportPaymentRequestShippingDetails.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsReportPaymentRequestShippingDetails(
  address: json['address'] != null ? PostPaymentRecordsReportPaymentRequestShippingDetailsAddress.fromJson(json['address'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
); }

final PostPaymentRecordsReportPaymentRequestShippingDetailsAddress? address;

final String? name;

final String? phone;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  'name': ?name,
  'phone': ?phone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'name', 'phone'}.contains(key)); } 
PostPaymentRecordsReportPaymentRequestShippingDetails copyWith({PostPaymentRecordsReportPaymentRequestShippingDetailsAddress Function()? address, String Function()? name, String Function()? phone, }) { return PostPaymentRecordsReportPaymentRequestShippingDetails(
  address: address != null ? address() : this.address,
  name: name != null ? name() : this.name,
  phone: phone != null ? phone() : this.phone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsReportPaymentRequestShippingDetails &&
          address == other.address &&
          name == other.name &&
          phone == other.phone; } 
@override int get hashCode { return Object.hash(address, name, phone); } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestShippingDetails(address: $address, name: $name, phone: $phone)'; } 
 }
