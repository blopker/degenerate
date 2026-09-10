// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'klarna_address.dart';/// 
@immutable final class KlarnaPayerDetails {const KlarnaPayerDetails({this.address = const Omittable.absent()});

factory KlarnaPayerDetails.fromJson(Map<String, dynamic> json) { return KlarnaPayerDetails(
  address: json.containsKey('address') ? Omittable(json['address'] != null ? KlarnaAddress.fromJson(json['address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The payer's address
final Omittable<KlarnaAddress?> address;

Map<String, dynamic> toJson() { return {
  if (address.isPresent) 'address': address.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address'}.contains(key)); } 
KlarnaPayerDetails copyWith({Omittable<KlarnaAddress?>? address}) { return KlarnaPayerDetails(
  address: address ?? this.address,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is KlarnaPayerDetails &&
          address == other.address; } 
@override int get hashCode { return address.hashCode; } 
@override String toString() { return 'KlarnaPayerDetails(address: $address)'; } 
 }
