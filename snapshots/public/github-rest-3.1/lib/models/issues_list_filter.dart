// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesListFilter {const IssuesListFilter._(this.value);

factory IssuesListFilter.fromJson(String json) { return switch (json) {
  'assigned' => assigned,
  'created' => created,
  'mentioned' => mentioned,
  'subscribed' => subscribed,
  'repos' => repos,
  'all' => all,
  _ => IssuesListFilter._(json),
}; }

static const IssuesListFilter assigned = IssuesListFilter._('assigned');

static const IssuesListFilter created = IssuesListFilter._('created');

static const IssuesListFilter mentioned = IssuesListFilter._('mentioned');

static const IssuesListFilter subscribed = IssuesListFilter._('subscribed');

static const IssuesListFilter repos = IssuesListFilter._('repos');

static const IssuesListFilter all = IssuesListFilter._('all');

static const List<IssuesListFilter> values = [assigned, created, mentioned, subscribed, repos, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuesListFilter($value)'; } 
 }
