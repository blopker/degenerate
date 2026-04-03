// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class LogpushMaxUploadIntervalSecondsVariant1 {const LogpushMaxUploadIntervalSecondsVariant1._(this.value);

factory LogpushMaxUploadIntervalSecondsVariant1.fromJson(int json) { return switch (json) {
  0 => $0,
  _ => LogpushMaxUploadIntervalSecondsVariant1._(json),
}; }

static const LogpushMaxUploadIntervalSecondsVariant1 $0 = LogpushMaxUploadIntervalSecondsVariant1._(0);

static const List<LogpushMaxUploadIntervalSecondsVariant1> values = [$0];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogpushMaxUploadIntervalSecondsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogpushMaxUploadIntervalSecondsVariant1($value)'; } 
 }
typedef LogpushMaxUploadIntervalSeconds = OneOf2<LogpushMaxUploadIntervalSecondsVariant1,int>;
