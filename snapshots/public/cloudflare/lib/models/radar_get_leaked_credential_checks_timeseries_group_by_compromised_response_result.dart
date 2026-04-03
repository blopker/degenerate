// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_leaked_credential_checks_timeseries_group_by_compromised_response_result_meta.dart';import 'radar_get_leaked_credential_checks_timeseries_group_by_compromised_response_result_serie0.dart';@immutable final class RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult {const RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult({required this.meta, required this.serie0, });

factory RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult(
  meta: RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultMeta meta;

final RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult copyWith({RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultMeta? meta, RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResultSerie0? serie0, }) { return RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupByCompromisedResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
