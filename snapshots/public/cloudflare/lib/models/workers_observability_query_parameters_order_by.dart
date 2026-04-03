// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Set the order of the results
@immutable final class WorkersObservabilityQueryParametersOrderByOrder {const WorkersObservabilityQueryParametersOrderByOrder._(this.value);

factory WorkersObservabilityQueryParametersOrderByOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => WorkersObservabilityQueryParametersOrderByOrder._(json),
}; }

static const WorkersObservabilityQueryParametersOrderByOrder asc = WorkersObservabilityQueryParametersOrderByOrder._('asc');

static const WorkersObservabilityQueryParametersOrderByOrder desc = WorkersObservabilityQueryParametersOrderByOrder._('desc');

static const List<WorkersObservabilityQueryParametersOrderByOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersObservabilityQueryParametersOrderByOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersObservabilityQueryParametersOrderByOrder($value)'; } 
 }
/// Configure the order of the results returned by the query.
@immutable final class WorkersObservabilityQueryParametersOrderBy {const WorkersObservabilityQueryParametersOrderBy({required this.value, this.order, });

factory WorkersObservabilityQueryParametersOrderBy.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryParametersOrderBy(
  order: json['order'] != null ? WorkersObservabilityQueryParametersOrderByOrder.fromJson(json['order'] as String) : null,
  value: json['value'] as String,
); }

/// Set the order of the results
final WorkersObservabilityQueryParametersOrderByOrder? order;

/// Configure which Calculation to order the results by.
final String value;

Map<String, dynamic> toJson() { return {
  if (order != null) 'order': order?.toJson(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String; } 
WorkersObservabilityQueryParametersOrderBy copyWith({WorkersObservabilityQueryParametersOrderByOrder Function()? order, String? value, }) { return WorkersObservabilityQueryParametersOrderBy(
  order: order != null ? order() : this.order,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryParametersOrderBy &&
          order == other.order &&
          value == other.value; } 
@override int get hashCode { return Object.hash(order, value); } 
@override String toString() { return 'WorkersObservabilityQueryParametersOrderBy(order: $order, value: $value)'; } 
 }
