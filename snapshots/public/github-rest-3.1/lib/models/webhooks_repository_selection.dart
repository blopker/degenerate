// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Describe whether all repositories have been selected or there's a selection involved
@immutable final class WebhooksRepositorySelection {const WebhooksRepositorySelection._(this.value);

factory WebhooksRepositorySelection.fromJson(String json) { return switch (json) {
  'all' => all,
  'selected' => selected,
  _ => WebhooksRepositorySelection._(json),
}; }

static const WebhooksRepositorySelection all = WebhooksRepositorySelection._('all');

static const WebhooksRepositorySelection selected = WebhooksRepositorySelection._('selected');

static const List<WebhooksRepositorySelection> values = [all, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksRepositorySelection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksRepositorySelection($value)'; } 
 }
