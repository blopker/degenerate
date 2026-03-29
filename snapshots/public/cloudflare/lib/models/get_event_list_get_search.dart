// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_event_list_get_search_value.dart';final class GetEventListGetSearchOp {const GetEventListGetSearchOp._(this.value);

factory GetEventListGetSearchOp.fromJson(String json) { return switch (json) {
  'equals' => equals,
  'not' => not,
  'gt' => gt,
  'gte' => gte,
  'lt' => lt,
  'lte' => lte,
  'like' => like,
  'contains' => contains,
  'startsWith' => startsWith,
  'endsWith' => endsWith,
  'in' => $in,
  'find' => find,
  _ => GetEventListGetSearchOp._(json),
}; }

static const GetEventListGetSearchOp equals = GetEventListGetSearchOp._('equals');

static const GetEventListGetSearchOp not = GetEventListGetSearchOp._('not');

static const GetEventListGetSearchOp gt = GetEventListGetSearchOp._('gt');

static const GetEventListGetSearchOp gte = GetEventListGetSearchOp._('gte');

static const GetEventListGetSearchOp lt = GetEventListGetSearchOp._('lt');

static const GetEventListGetSearchOp lte = GetEventListGetSearchOp._('lte');

static const GetEventListGetSearchOp like = GetEventListGetSearchOp._('like');

static const GetEventListGetSearchOp contains = GetEventListGetSearchOp._('contains');

static const GetEventListGetSearchOp startsWith = GetEventListGetSearchOp._('startsWith');

static const GetEventListGetSearchOp endsWith = GetEventListGetSearchOp._('endsWith');

static const GetEventListGetSearchOp $in = GetEventListGetSearchOp._('in');

static const GetEventListGetSearchOp find = GetEventListGetSearchOp._('find');

static const List<GetEventListGetSearchOp> values = [equals, not, gt, gte, lt, lte, like, contains, startsWith, endsWith, $in, find];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEventListGetSearchOp && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetEventListGetSearchOp($value)'; } 
 }
final class GetEventListGetSearch {const GetEventListGetSearch({this.field, this.op, this.value, });

factory GetEventListGetSearch.fromJson(Map<String, dynamic> json) { return GetEventListGetSearch(
  field: json['field'] as String?,
  op: json['op'] != null ? GetEventListGetSearchOp.fromJson(json['op'] as String) : null,
  value: json['value'] != null ? OneOf3.parse(json['value'], fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(), fromC: (v) => (v as List<dynamic>).map((e) => e).toList(),) : null,
); }

final String? field;

final GetEventListGetSearchOp? op;

final GetEventListGetSearchValue? value;

Map<String, dynamic> toJson() { return {
  'field': ?field,
  if (op != null) 'op': op?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'field', 'op', 'value'}.contains(key)); } 
GetEventListGetSearch copyWith({String Function()? field, GetEventListGetSearchOp Function()? op, GetEventListGetSearchValue Function()? value, }) { return GetEventListGetSearch(
  field: field != null ? field() : this.field,
  op: op != null ? op() : this.op,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventListGetSearch &&
          field == other.field &&
          op == other.op &&
          value == other.value; } 
@override int get hashCode { return Object.hash(field, op, value); } 
@override String toString() { return 'GetEventListGetSearch(field: $field, op: $op, value: $value)'; } 
 }
