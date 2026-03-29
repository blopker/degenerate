// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesListForAuthenticatedUserState {const IssuesListForAuthenticatedUserState._(this.value);

factory IssuesListForAuthenticatedUserState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'all' => all,
  _ => IssuesListForAuthenticatedUserState._(json),
}; }

static const IssuesListForAuthenticatedUserState open = IssuesListForAuthenticatedUserState._('open');

static const IssuesListForAuthenticatedUserState closed = IssuesListForAuthenticatedUserState._('closed');

static const IssuesListForAuthenticatedUserState all = IssuesListForAuthenticatedUserState._('all');

static const List<IssuesListForAuthenticatedUserState> values = [open, closed, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForAuthenticatedUserState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListForAuthenticatedUserState($value)'; } 
 }
