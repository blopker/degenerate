// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pay_per_crawl_daric_zone_can_be_enabled.dart';@immutable final class PayPerCrawlZonesCanBeEnabledPayload {const PayPerCrawlZonesCanBeEnabledPayload({this.zones});

factory PayPerCrawlZonesCanBeEnabledPayload.fromJson(Map<String, dynamic> json) { return PayPerCrawlZonesCanBeEnabledPayload(
  zones: (json['zones'] as List<dynamic>?)?.map((e) => PayPerCrawlDaricZoneCanBeEnabled.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PayPerCrawlDaricZoneCanBeEnabled>? zones;

Map<String, dynamic> toJson() { return {
  if (zones != null) 'zones': zones?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'zones'}.contains(key)); } 
PayPerCrawlZonesCanBeEnabledPayload copyWith({List<PayPerCrawlDaricZoneCanBeEnabled> Function()? zones}) { return PayPerCrawlZonesCanBeEnabledPayload(
  zones: zones != null ? zones() : this.zones,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PayPerCrawlZonesCanBeEnabledPayload &&
          listEquals(zones, other.zones); } 
@override int get hashCode { return Object.hashAll(zones ?? const []).hashCode; } 
@override String toString() { return 'PayPerCrawlZonesCanBeEnabledPayload(zones: $zones)'; } 
 }
