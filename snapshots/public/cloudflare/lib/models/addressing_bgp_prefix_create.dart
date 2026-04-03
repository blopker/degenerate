// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'addressing_cidr.dart';@immutable final class AddressingBgpPrefixCreate {const AddressingBgpPrefixCreate({required this.cidr});

factory AddressingBgpPrefixCreate.fromJson(Map<String, dynamic> json) { return AddressingBgpPrefixCreate(
  cidr: AddressingCidr.fromJson(json['cidr'] as String),
); }

final AddressingCidr cidr;

Map<String, dynamic> toJson() { return {
  'cidr': cidr.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cidr'); } 
AddressingBgpPrefixCreate copyWith({AddressingCidr? cidr}) { return AddressingBgpPrefixCreate(
  cidr: cidr ?? this.cidr,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingBgpPrefixCreate &&
          cidr == other.cidr; } 
@override int get hashCode { return cidr.hashCode; } 
@override String toString() { return 'AddressingBgpPrefixCreate(cidr: $cidr)'; } 
 }
