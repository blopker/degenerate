// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetTreasuryTransactionEntriesOrderBy {const GetTreasuryTransactionEntriesOrderBy._(this.value);

factory GetTreasuryTransactionEntriesOrderBy.fromJson(String json) { return switch (json) {
  'created' => created,
  'effective_at' => effectiveAt,
  _ => GetTreasuryTransactionEntriesOrderBy._(json),
}; }

static const GetTreasuryTransactionEntriesOrderBy created = GetTreasuryTransactionEntriesOrderBy._('created');

static const GetTreasuryTransactionEntriesOrderBy effectiveAt = GetTreasuryTransactionEntriesOrderBy._('effective_at');

static const List<GetTreasuryTransactionEntriesOrderBy> values = [created, effectiveAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTreasuryTransactionEntriesOrderBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTreasuryTransactionEntriesOrderBy($value)'; } 
 }
