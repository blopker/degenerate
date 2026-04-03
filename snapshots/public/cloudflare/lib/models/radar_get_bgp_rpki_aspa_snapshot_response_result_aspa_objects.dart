// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects {const RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects({required this.customerAsn, required this.providers, });

factory RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects.fromJson(Map<String, dynamic> json) { return RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects(
  customerAsn: (json['customerAsn'] as num).toInt(),
  providers: (json['providers'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
); }

/// The customer ASN publishing the ASPA object.
final int customerAsn;

final List<int> providers;

Map<String, dynamic> toJson() { return {
  'customerAsn': customerAsn,
  'providers': providers,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customerAsn') && json['customerAsn'] is num &&
      json.containsKey('providers'); } 
RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects copyWith({int? customerAsn, List<int>? providers, }) { return RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects(
  customerAsn: customerAsn ?? this.customerAsn,
  providers: providers ?? this.providers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects &&
          customerAsn == other.customerAsn &&
          listEquals(providers, other.providers); } 
@override int get hashCode { return Object.hash(customerAsn, Object.hashAll(providers)); } 
@override String toString() { return 'RadarGetBgpRpkiAspaSnapshotResponseResultAspaObjects(customerAsn: $customerAsn, providers: $providers)'; } 
 }
