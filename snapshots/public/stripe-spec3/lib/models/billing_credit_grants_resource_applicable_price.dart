// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingCreditGrantsResourceApplicablePrice {const BillingCreditGrantsResourceApplicablePrice({this.id});

factory BillingCreditGrantsResourceApplicablePrice.fromJson(Map<String, dynamic> json) { return BillingCreditGrantsResourceApplicablePrice(
  id: json['id'] as String?,
); }

/// Unique identifier for the object.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
BillingCreditGrantsResourceApplicablePrice copyWith({String? Function()? id}) { return BillingCreditGrantsResourceApplicablePrice(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingCreditGrantsResourceApplicablePrice &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'BillingCreditGrantsResourceApplicablePrice(id: $id)'; } 
 }
