// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BillingCreditGrantsResourceApplicablePrice {const BillingCreditGrantsResourceApplicablePrice({this.id = const Omittable.absent()});

factory BillingCreditGrantsResourceApplicablePrice.fromJson(Map<String, dynamic> json) { return BillingCreditGrantsResourceApplicablePrice(
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
); }

/// Unique identifier for the object.
final Omittable<String?> id;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
BillingCreditGrantsResourceApplicablePrice copyWith({Omittable<String?>? id}) { return BillingCreditGrantsResourceApplicablePrice(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingCreditGrantsResourceApplicablePrice &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'BillingCreditGrantsResourceApplicablePrice(id: $id)'; } 
 }
