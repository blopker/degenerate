// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Direction to order widgets.
@immutable final class AccountsTurnstileWidgetCreateDirection {const AccountsTurnstileWidgetCreateDirection._(this.value);

factory AccountsTurnstileWidgetCreateDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => AccountsTurnstileWidgetCreateDirection._(json),
}; }

static const AccountsTurnstileWidgetCreateDirection asc = AccountsTurnstileWidgetCreateDirection._('asc');

static const AccountsTurnstileWidgetCreateDirection desc = AccountsTurnstileWidgetCreateDirection._('desc');

static const List<AccountsTurnstileWidgetCreateDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsTurnstileWidgetCreateDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsTurnstileWidgetCreateDirection($value)'; } 
 }
