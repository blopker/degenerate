// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Super Bot Fight Mode (SBFM) action to take on verified bots requests.
@immutable final class BotManagementSbfmVerifiedBots {const BotManagementSbfmVerifiedBots._(this.value);

factory BotManagementSbfmVerifiedBots.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'block' => block,
  _ => BotManagementSbfmVerifiedBots._(json),
}; }

static const BotManagementSbfmVerifiedBots allow = BotManagementSbfmVerifiedBots._('allow');

static const BotManagementSbfmVerifiedBots block = BotManagementSbfmVerifiedBots._('block');

static const List<BotManagementSbfmVerifiedBots> values = [allow, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BotManagementSbfmVerifiedBots && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BotManagementSbfmVerifiedBots($value)'; } 
 }
