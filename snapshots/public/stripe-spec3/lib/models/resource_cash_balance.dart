// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ResourceCashBalance {const ResourceCashBalance({this.available = const Omittable.absent()});

factory ResourceCashBalance.fromJson(Map<String, dynamic> json) { return ResourceCashBalance(
  available: json.containsKey('available') ? Omittable((json['available'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt()))) : const Omittable.absent(),
); }

/// The funds available to the account holder. Typically this is the current balance after subtracting any outbound pending transactions and adding any inbound pending transactions.
/// 
/// Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
/// 
/// Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
final Omittable<Map<String,int>?> available;

Map<String, dynamic> toJson() { return {
  if (available.isPresent) 'available': available.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'available'}.contains(key)); } 
ResourceCashBalance copyWith({Omittable<Map<String,int>?>? available}) { return ResourceCashBalance(
  available: available ?? this.available,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceCashBalance &&
          available == other.available; } 
@override int get hashCode { return available.hashCode; } 
@override String toString() { return 'ResourceCashBalance(available: $available)'; } 
 }
