// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Used to select time series resolution.
@immutable final class SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta {const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._(this.value);

factory SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta.fromJson(String json) { return switch (json) {
  'year' => year,
  'quarter' => quarter,
  'month' => month,
  'week' => week,
  'day' => day,
  'hour' => hour,
  'dekaminute' => dekaminute,
  'minute' => minute,
  _ => SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._(json),
}; }

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta year = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('year');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta quarter = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('quarter');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta month = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('month');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta week = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('week');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta day = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('day');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta hour = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('hour');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta dekaminute = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('dekaminute');

static const SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta minute = SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta._('minute');

static const List<SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta> values = [year, quarter, month, week, day, hour, dekaminute, minute];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumAnalyticsByTimeGetAnalyticsByTimeTimeDelta($value)'; } 
 }
