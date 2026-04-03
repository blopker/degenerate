// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Behavior of the content list.
@immutable final class Web3ContentListAction {const Web3ContentListAction._(this.value);

factory Web3ContentListAction.fromJson(String json) { return switch (json) {
  'block' => block,
  _ => Web3ContentListAction._(json),
}; }

static const Web3ContentListAction block = Web3ContentListAction._('block');

static const List<Web3ContentListAction> values = [block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3ContentListAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Web3ContentListAction($value)'; } 
 }
