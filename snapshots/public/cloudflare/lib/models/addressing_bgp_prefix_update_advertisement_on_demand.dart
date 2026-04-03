// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AddressingBgpPrefixUpdateAdvertisementOnDemand {const AddressingBgpPrefixUpdateAdvertisementOnDemand({this.advertised});

factory AddressingBgpPrefixUpdateAdvertisementOnDemand.fromJson(Map<String, dynamic> json) { return AddressingBgpPrefixUpdateAdvertisementOnDemand(
  advertised: json['advertised'] as bool?,
); }

final bool? advertised;

Map<String, dynamic> toJson() { return {
  'advertised': ?advertised,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'advertised'}.contains(key)); } 
AddressingBgpPrefixUpdateAdvertisementOnDemand copyWith({bool Function()? advertised}) { return AddressingBgpPrefixUpdateAdvertisementOnDemand(
  advertised: advertised != null ? advertised() : this.advertised,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddressingBgpPrefixUpdateAdvertisementOnDemand &&
          advertised == other.advertised; } 
@override int get hashCode { return advertised.hashCode; } 
@override String toString() { return 'AddressingBgpPrefixUpdateAdvertisementOnDemand(advertised: $advertised)'; } 
 }
