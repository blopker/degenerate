// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When set to `all`, all the search requirements must match. When set to `any`, only one of the search requirements has to match.
@immutable final class PageRulesListPageRulesMatch {const PageRulesListPageRulesMatch._(this.value);

factory PageRulesListPageRulesMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => PageRulesListPageRulesMatch._(json),
}; }

static const PageRulesListPageRulesMatch any = PageRulesListPageRulesMatch._('any');

static const PageRulesListPageRulesMatch all = PageRulesListPageRulesMatch._('all');

static const List<PageRulesListPageRulesMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageRulesListPageRulesMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageRulesListPageRulesMatch($value)'; } 
 }
