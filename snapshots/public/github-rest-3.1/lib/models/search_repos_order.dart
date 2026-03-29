// GENERATED CODE - DO NOT MODIFY BY HAND

final class SearchReposOrder {const SearchReposOrder._(this.value);

factory SearchReposOrder.fromJson(String json) { return switch (json) {
  'desc' => desc,
  'asc' => asc,
  _ => SearchReposOrder._(json),
}; }

static const SearchReposOrder desc = SearchReposOrder._('desc');

static const SearchReposOrder asc = SearchReposOrder._('asc');

static const List<SearchReposOrder> values = [desc, asc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchReposOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SearchReposOrder($value)'; } 
 }
