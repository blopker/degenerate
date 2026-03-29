// GENERATED CODE - DO NOT MODIFY BY HAND

final class PayPerCrawlBotAccessMode {const PayPerCrawlBotAccessMode._(this.value);

factory PayPerCrawlBotAccessMode.fromJson(String json) { return switch (json) {
  'charge' => charge,
  'bypass' => bypass,
  _ => PayPerCrawlBotAccessMode._(json),
}; }

static const PayPerCrawlBotAccessMode charge = PayPerCrawlBotAccessMode._('charge');

static const PayPerCrawlBotAccessMode bypass = PayPerCrawlBotAccessMode._('bypass');

static const List<PayPerCrawlBotAccessMode> values = [charge, bypass];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PayPerCrawlBotAccessMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PayPerCrawlBotAccessMode($value)'; } 
 }
final class PayPerCrawlDaricConfig {const PayPerCrawlDaricConfig({this.botOverrides, this.enabled, this.priceUsdMicrocents, });

factory PayPerCrawlDaricConfig.fromJson(Map<String, dynamic> json) { return PayPerCrawlDaricConfig(
  botOverrides: (json['bot_overrides'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PayPerCrawlBotAccessMode.fromJson(v as String))),
  enabled: json['enabled'] as bool?,
  priceUsdMicrocents: json['price_usd_microcents'] != null ? (json['price_usd_microcents'] as num).toInt() : null,
); }

final Map<String,PayPerCrawlBotAccessMode>? botOverrides;

final bool? enabled;

final int? priceUsdMicrocents;

Map<String, dynamic> toJson() { return {
  if (botOverrides != null) 'bot_overrides': botOverrides?.map((k, v) => MapEntry(k, v.toJson())),
  'enabled': ?enabled,
  'price_usd_microcents': ?priceUsdMicrocents,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PayPerCrawlDaricConfig copyWith({Map<String, PayPerCrawlBotAccessMode> Function()? botOverrides, bool Function()? enabled, int Function()? priceUsdMicrocents, }) { return PayPerCrawlDaricConfig(
  botOverrides: botOverrides != null ? botOverrides() : this.botOverrides,
  enabled: enabled != null ? enabled() : this.enabled,
  priceUsdMicrocents: priceUsdMicrocents != null ? priceUsdMicrocents() : this.priceUsdMicrocents,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PayPerCrawlDaricConfig &&
          botOverrides == other.botOverrides &&
          enabled == other.enabled &&
          priceUsdMicrocents == other.priceUsdMicrocents; } 
@override int get hashCode { return Object.hash(botOverrides, enabled, priceUsdMicrocents); } 
@override String toString() { return 'PayPerCrawlDaricConfig(botOverrides: $botOverrides, enabled: $enabled, priceUsdMicrocents: $priceUsdMicrocents)'; } 
 }
