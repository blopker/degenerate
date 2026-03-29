// GENERATED CODE - DO NOT MODIFY BY HAND

final class CodeScanningListRecentAnalysesSort {const CodeScanningListRecentAnalysesSort._(this.value);

factory CodeScanningListRecentAnalysesSort.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => CodeScanningListRecentAnalysesSort._(json),
}; }

static const CodeScanningListRecentAnalysesSort created = CodeScanningListRecentAnalysesSort._('created');

static const List<CodeScanningListRecentAnalysesSort> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListRecentAnalysesSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodeScanningListRecentAnalysesSort($value)'; } 
 }
