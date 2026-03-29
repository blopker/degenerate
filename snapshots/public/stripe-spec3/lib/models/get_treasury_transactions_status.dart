// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetTreasuryTransactionsStatus {const GetTreasuryTransactionsStatus._(this.value);

factory GetTreasuryTransactionsStatus.fromJson(String json) { return switch (json) {
  'open' => open,
  'posted' => posted,
  'void' => $void,
  _ => GetTreasuryTransactionsStatus._(json),
}; }

static const GetTreasuryTransactionsStatus open = GetTreasuryTransactionsStatus._('open');

static const GetTreasuryTransactionsStatus posted = GetTreasuryTransactionsStatus._('posted');

static const GetTreasuryTransactionsStatus $void = GetTreasuryTransactionsStatus._('void');

static const List<GetTreasuryTransactionsStatus> values = [open, posted, $void];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTreasuryTransactionsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTreasuryTransactionsStatus($value)'; } 
 }
