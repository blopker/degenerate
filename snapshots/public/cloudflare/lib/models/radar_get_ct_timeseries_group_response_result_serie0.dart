// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant1.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant2.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant3.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant4.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant5.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant6.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant7.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant8.dart';
@immutable
final class RadarGetCtTimeseriesGroupResponseResultSerie0 {
  const RadarGetCtTimeseriesGroupResponseResultSerie0({this.radarGetCtTimeseriesGroupResponseResultSerie0Variant1 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant2 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant3 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant4 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant5 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant6 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant7 = const Omittable.absent(),
this.radarGetCtTimeseriesGroupResponseResultSerie0Variant8 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RadarGetCtTimeseriesGroupResponseResultSerie0._({required this.rawValue, required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant1,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant2,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant3,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant4,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant5,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant6,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant7,
required this.radarGetCtTimeseriesGroupResponseResultSerie0Variant8,});
  factory RadarGetCtTimeseriesGroupResponseResultSerie0.fromJson(Object? json) => RadarGetCtTimeseriesGroupResponseResultSerie0._(
    rawValue: Omittable(json),
    radarGetCtTimeseriesGroupResponseResultSerie0Variant1: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant1>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant1.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant2: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant2>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant2.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant3: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant3>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant3.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant4: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant4>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant4.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant5: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant5>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant5.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant6: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant6>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant6.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant7: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant7>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant7.fromJson(value! as Map<String, dynamic>)),
radarGetCtTimeseriesGroupResponseResultSerie0Variant8: parseAnyOfVariant<RadarGetCtTimeseriesGroupResponseResultSerie0Variant8>(json, (value) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant8.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant1> radarGetCtTimeseriesGroupResponseResultSerie0Variant1;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant2> radarGetCtTimeseriesGroupResponseResultSerie0Variant2;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant3> radarGetCtTimeseriesGroupResponseResultSerie0Variant3;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant4> radarGetCtTimeseriesGroupResponseResultSerie0Variant4;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant5> radarGetCtTimeseriesGroupResponseResultSerie0Variant5;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant6> radarGetCtTimeseriesGroupResponseResultSerie0Variant6;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant7> radarGetCtTimeseriesGroupResponseResultSerie0Variant7;
final Omittable<RadarGetCtTimeseriesGroupResponseResultSerie0Variant8> radarGetCtTimeseriesGroupResponseResultSerie0Variant8;

  /// Whether at least one known variant matched.
  bool get isValid => radarGetCtTimeseriesGroupResponseResultSerie0Variant1.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant2.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant3.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant4.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant5.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant6.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant7.isPresent || radarGetCtTimeseriesGroupResponseResultSerie0Variant8.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (radarGetCtTimeseriesGroupResponseResultSerie0Variant1.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant1.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant2.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant2.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant3.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant3.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant4.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant4.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant5.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant5.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant6.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant6.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant7.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant7.value?.toJson(),
if (radarGetCtTimeseriesGroupResponseResultSerie0Variant8.isPresent) radarGetCtTimeseriesGroupResponseResultSerie0Variant8.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultSerie0 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RadarGetCtTimeseriesGroupResponseResultSerie0(${toJson()})';
}
