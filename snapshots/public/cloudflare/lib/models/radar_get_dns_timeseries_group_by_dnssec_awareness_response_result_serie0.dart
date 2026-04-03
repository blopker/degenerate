// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0 {const RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0({required this.notSupported, required this.supported, });

factory RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0(
  notSupported: (json['NOT_SUPPORTED'] as List<dynamic>).map((e) => e as String).toList(),
  supported: (json['SUPPORTED'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> notSupported;

final List<String> supported;

Map<String, dynamic> toJson() { return {
  'NOT_SUPPORTED': notSupported,
  'SUPPORTED': supported,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('NOT_SUPPORTED') &&
      json.containsKey('SUPPORTED'); } 
RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0 copyWith({List<String>? notSupported, List<String>? supported, }) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0(
  notSupported: notSupported ?? this.notSupported,
  supported: supported ?? this.supported,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0 &&
          listEquals(notSupported, other.notSupported) &&
          listEquals(supported, other.supported); } 
@override int get hashCode { return Object.hash(Object.hashAll(notSupported), Object.hashAll(supported)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0(notSupported: $notSupported, supported: $supported)'; } 
 }
