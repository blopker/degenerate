// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ResourceCreditBalance {const ResourceCreditBalance({this.used = const Omittable.absent()});

factory ResourceCreditBalance.fromJson(Map<String, dynamic> json) { return ResourceCreditBalance(
  used: json.containsKey('used') ? Omittable((json['used'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt()))) : const Omittable.absent(),
); }

/// The credit that has been used by the account holder.
/// 
/// Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
/// 
/// Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
final Omittable<Map<String,int>?> used;

Map<String, dynamic> toJson() { return {
  if (used.isPresent) 'used': used.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'used'}.contains(key)); } 
ResourceCreditBalance copyWith({Omittable<Map<String,int>?>? used}) { return ResourceCreditBalance(
  used: used ?? this.used,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceCreditBalance &&
          used == other.used; } 
@override int get hashCode { return used.hashCode; } 
@override String toString() { return 'ResourceCreditBalance(used: $used)'; } 
 }
