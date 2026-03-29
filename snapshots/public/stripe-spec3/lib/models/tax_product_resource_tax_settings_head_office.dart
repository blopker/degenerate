// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// 
final class TaxProductResourceTaxSettingsHeadOffice {const TaxProductResourceTaxSettingsHeadOffice({required this.address});

factory TaxProductResourceTaxSettingsHeadOffice.fromJson(Map<String, dynamic> json) { return TaxProductResourceTaxSettingsHeadOffice(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
); }

final Address address;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address'); } 
TaxProductResourceTaxSettingsHeadOffice copyWith({Address? address}) { return TaxProductResourceTaxSettingsHeadOffice(
  address: address ?? this.address,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceTaxSettingsHeadOffice &&
          address == other.address; } 
@override int get hashCode { return address.hashCode; } 
@override String toString() { return 'TaxProductResourceTaxSettingsHeadOffice(address: $address)'; } 
 }
