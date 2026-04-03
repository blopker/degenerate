// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The field used to sort returned Page Rules.
@immutable final class PageRulesListPageRulesOrder {const PageRulesListPageRulesOrder._(this.value);

factory PageRulesListPageRulesOrder.fromJson(String json) { return switch (json) {
  'status' => status,
  'priority' => priority,
  _ => PageRulesListPageRulesOrder._(json),
}; }

static const PageRulesListPageRulesOrder status = PageRulesListPageRulesOrder._('status');

static const PageRulesListPageRulesOrder priority = PageRulesListPageRulesOrder._('priority');

static const List<PageRulesListPageRulesOrder> values = [status, priority];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageRulesListPageRulesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageRulesListPageRulesOrder($value)'; } 
 }
