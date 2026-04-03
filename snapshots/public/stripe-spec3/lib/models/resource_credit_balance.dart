// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ResourceCreditBalance {const ResourceCreditBalance({this.used});

factory ResourceCreditBalance.fromJson(Map<String, dynamic> json) { return ResourceCreditBalance(
  used: (json['used'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt())),
); }

/// The credit that has been used by the account holder.
/// 
/// Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
/// 
/// Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
final Map<String,int>? used;

Map<String, dynamic> toJson() { return {
  'used': ?used,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'used'}.contains(key)); } 
ResourceCreditBalance copyWith({Map<String, int>? Function()? used}) { return ResourceCreditBalance(
  used: used != null ? used() : this.used,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceCreditBalance &&
          used == other.used; } 
@override int get hashCode { return used.hashCode; } 
@override String toString() { return 'ResourceCreditBalance(used: $used)'; } 
 }
