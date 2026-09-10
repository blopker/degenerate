// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_summary_response_result_summary0_variant2.dart';import 'radar_get_ct_summary_response_result_summary0_variant3.dart';import 'radar_get_ct_summary_response_result_summary0_variant4.dart';import 'radar_get_ct_summary_response_result_summary0_variant5.dart';import 'radar_get_ct_summary_response_result_summary0_variant6.dart';import 'radar_get_ct_summary_response_result_summary0_variant7.dart';import 'radar_get_ct_summary_response_result_summary0_variant8.dart';
@immutable
final class RadarGetCtSummaryResponseResultSummary0 {
  const RadarGetCtSummaryResponseResultSummary0({this.mapStringString = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant2 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant3 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant4 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant5 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant6 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant7 = const Omittable.absent(),
this.radarGetCtSummaryResponseResultSummary0Variant8 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RadarGetCtSummaryResponseResultSummary0._({required this.rawValue, required this.mapStringString,
required this.radarGetCtSummaryResponseResultSummary0Variant2,
required this.radarGetCtSummaryResponseResultSummary0Variant3,
required this.radarGetCtSummaryResponseResultSummary0Variant4,
required this.radarGetCtSummaryResponseResultSummary0Variant5,
required this.radarGetCtSummaryResponseResultSummary0Variant6,
required this.radarGetCtSummaryResponseResultSummary0Variant7,
required this.radarGetCtSummaryResponseResultSummary0Variant8,});
  factory RadarGetCtSummaryResponseResultSummary0.fromJson(Object? json) => RadarGetCtSummaryResponseResultSummary0._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
radarGetCtSummaryResponseResultSummary0Variant2: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant2>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant2.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant3: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant3>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant3.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant4: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant4>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant4.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant5: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant5>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant5.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant6: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant6>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant6.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant7: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant7>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant7.fromJson(value! as Map<String, dynamic>)),
radarGetCtSummaryResponseResultSummary0Variant8: parseAnyOfVariant<RadarGetCtSummaryResponseResultSummary0Variant8>(json, (value) => RadarGetCtSummaryResponseResultSummary0Variant8.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant2> radarGetCtSummaryResponseResultSummary0Variant2;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant3> radarGetCtSummaryResponseResultSummary0Variant3;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant4> radarGetCtSummaryResponseResultSummary0Variant4;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant5> radarGetCtSummaryResponseResultSummary0Variant5;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant6> radarGetCtSummaryResponseResultSummary0Variant6;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant7> radarGetCtSummaryResponseResultSummary0Variant7;
final Omittable<RadarGetCtSummaryResponseResultSummary0Variant8> radarGetCtSummaryResponseResultSummary0Variant8;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || radarGetCtSummaryResponseResultSummary0Variant2.isPresent || radarGetCtSummaryResponseResultSummary0Variant3.isPresent || radarGetCtSummaryResponseResultSummary0Variant4.isPresent || radarGetCtSummaryResponseResultSummary0Variant5.isPresent || radarGetCtSummaryResponseResultSummary0Variant6.isPresent || radarGetCtSummaryResponseResultSummary0Variant7.isPresent || radarGetCtSummaryResponseResultSummary0Variant8.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (radarGetCtSummaryResponseResultSummary0Variant2.isPresent) radarGetCtSummaryResponseResultSummary0Variant2.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant3.isPresent) radarGetCtSummaryResponseResultSummary0Variant3.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant4.isPresent) radarGetCtSummaryResponseResultSummary0Variant4.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant5.isPresent) radarGetCtSummaryResponseResultSummary0Variant5.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant6.isPresent) radarGetCtSummaryResponseResultSummary0Variant6.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant7.isPresent) radarGetCtSummaryResponseResultSummary0Variant7.value?.toJson(),
if (radarGetCtSummaryResponseResultSummary0Variant8.isPresent) radarGetCtSummaryResponseResultSummary0Variant8.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RadarGetCtSummaryResponseResultSummary0 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RadarGetCtSummaryResponseResultSummary0(${toJson()})';
}
