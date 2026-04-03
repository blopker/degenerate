// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetCreditNotesPreviewLinesEmailType {const GetCreditNotesPreviewLinesEmailType._(this.value);

factory GetCreditNotesPreviewLinesEmailType.fromJson(String json) { return switch (json) {
  'credit_note' => creditNote,
  'none' => none,
  _ => GetCreditNotesPreviewLinesEmailType._(json),
}; }

static const GetCreditNotesPreviewLinesEmailType creditNote = GetCreditNotesPreviewLinesEmailType._('credit_note');

static const GetCreditNotesPreviewLinesEmailType none = GetCreditNotesPreviewLinesEmailType._('none');

static const List<GetCreditNotesPreviewLinesEmailType> values = [creditNote, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCreditNotesPreviewLinesEmailType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCreditNotesPreviewLinesEmailType($value)'; } 
 }
