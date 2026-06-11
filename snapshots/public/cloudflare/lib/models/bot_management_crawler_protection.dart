// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enable rule to punish AI Scrapers and Crawlers via a link maze.
@immutable final class BotManagementCrawlerProtection {const BotManagementCrawlerProtection._(this.value);

factory BotManagementCrawlerProtection.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => BotManagementCrawlerProtection._(json),
}; }

static const BotManagementCrawlerProtection enabled = BotManagementCrawlerProtection._('enabled');

static const BotManagementCrawlerProtection disabled = BotManagementCrawlerProtection._('disabled');

static const List<BotManagementCrawlerProtection> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BotManagementCrawlerProtection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BotManagementCrawlerProtection($value)'; } 
 }
