// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'timeseries_by_colo2.dart';import 'totals_by_colo.dart';@immutable final class Datacenters2 {const Datacenters2({this.coloId, this.timeseries, this.totals, });

factory Datacenters2.fromJson(Map<String, dynamic> json) { return Datacenters2(
  coloId: json['colo_id'] as String?,
  timeseries: (json['timeseries'] as List<dynamic>?)?.map((e) => TimeseriesByColo2.fromJson(e as Map<String, dynamic>)).toList(),
  totals: json['totals'] != null ? TotalsByColo.fromJson(json['totals'] as Map<String, dynamic>) : null,
); }

/// The airport code identifer for the co-location.
final String? coloId;

final List<TimeseriesByColo2>? timeseries;

final TotalsByColo? totals;

Map<String, dynamic> toJson() { return {
  'colo_id': ?coloId,
  if (timeseries != null) 'timeseries': timeseries?.map((e) => e.toJson()).toList(),
  if (totals != null) 'totals': totals?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'colo_id', 'timeseries', 'totals'}.contains(key)); } 
Datacenters2 copyWith({String Function()? coloId, List<TimeseriesByColo2> Function()? timeseries, TotalsByColo Function()? totals, }) { return Datacenters2(
  coloId: coloId != null ? coloId() : this.coloId,
  timeseries: timeseries != null ? timeseries() : this.timeseries,
  totals: totals != null ? totals() : this.totals,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Datacenters2 &&
          coloId == other.coloId &&
          listEquals(timeseries, other.timeseries) &&
          totals == other.totals; } 
@override int get hashCode { return Object.hash(coloId, Object.hashAll(timeseries ?? const []), totals); } 
@override String toString() { return 'Datacenters2(coloId: $coloId, timeseries: $timeseries, totals: $totals)'; } 
 }
