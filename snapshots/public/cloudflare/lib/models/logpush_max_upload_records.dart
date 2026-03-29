// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class LogpushMaxUploadRecordsVariant1 {const LogpushMaxUploadRecordsVariant1._(this.value);

factory LogpushMaxUploadRecordsVariant1.fromJson(int json) { return switch (json) {
  0 => $0,
  _ => LogpushMaxUploadRecordsVariant1._(json),
}; }

static const LogpushMaxUploadRecordsVariant1 $0 = LogpushMaxUploadRecordsVariant1._(0);

static const List<LogpushMaxUploadRecordsVariant1> values = [$0];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogpushMaxUploadRecordsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogpushMaxUploadRecordsVariant1($value)'; } 
 }
typedef LogpushMaxUploadRecords = OneOf2<LogpushMaxUploadRecordsVariant1,int>;