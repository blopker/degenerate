// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Matches everyone.
@immutable final class AccessEveryoneRule {const AccessEveryoneRule({required this.everyone});

factory AccessEveryoneRule.fromJson(Map<String, dynamic> json) { return AccessEveryoneRule(
  everyone: (json['everyone'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
); }

/// An empty object which matches on all users.
final Map<String,dynamic> everyone;

Map<String, dynamic> toJson() { return {
  'everyone': everyone,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('everyone'); } 
AccessEveryoneRule copyWith({Map<String,dynamic>? everyone}) { return AccessEveryoneRule(
  everyone: everyone ?? this.everyone,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessEveryoneRule &&
          everyone == other.everyone; } 
@override int get hashCode { return everyone.hashCode; } 
@override String toString() { return 'AccessEveryoneRule(everyone: $everyone)'; } 
 }
