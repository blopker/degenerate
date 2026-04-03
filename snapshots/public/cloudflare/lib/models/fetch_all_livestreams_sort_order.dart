// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FetchAllLivestreamsSortOrder {const FetchAllLivestreamsSortOrder._(this.value);

factory FetchAllLivestreamsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DSC' => dsc,
  _ => FetchAllLivestreamsSortOrder._(json),
}; }

static const FetchAllLivestreamsSortOrder asc = FetchAllLivestreamsSortOrder._('ASC');

static const FetchAllLivestreamsSortOrder dsc = FetchAllLivestreamsSortOrder._('DSC');

static const List<FetchAllLivestreamsSortOrder> values = [asc, dsc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FetchAllLivestreamsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FetchAllLivestreamsSortOrder($value)'; } 
 }
