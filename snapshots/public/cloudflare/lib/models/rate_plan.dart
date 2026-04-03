// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'component_value.dart';import 'currency.dart';import 'schemas_frequency.dart';import 'schemas_name.dart';/// The duration of the plan subscription.
extension type const Duration(double value) {
factory Duration.fromJson(num json) => Duration(json.toDouble());

num toJson() => value;

}
/// Plan identifier tag.
extension type const RatePlanComponentsSchemasIdentifier(String value) {
factory RatePlanComponentsSchemasIdentifier.fromJson(String json) => RatePlanComponentsSchemasIdentifier(json);

String toJson() => value;

}
@immutable final class RatePlan {const RatePlan({this.components, this.currency, this.duration, this.frequency, this.id, this.name, });

factory RatePlan.fromJson(Map<String, dynamic> json) { return RatePlan(
  components: (json['components'] as List<dynamic>?)?.map((e) => ComponentValue.fromJson(e as Map<String, dynamic>)).toList(),
  currency: json['currency'] != null ? Currency.fromJson(json['currency'] as String) : null,
  duration: json['duration'] != null ? Duration.fromJson(json['duration'] as num) : null,
  frequency: json['frequency'] != null ? SchemasFrequency.fromJson(json['frequency'] as String) : null,
  id: json['id'] != null ? RatePlanComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? SchemasName.fromJson(json['name'] as String) : null,
); }

final List<ComponentValue>? components;

/// The monetary unit in which pricing information is displayed.
final Currency? currency;

/// The duration of the plan subscription.
final Duration? duration;

final SchemasFrequency? frequency;

final RatePlanComponentsSchemasIdentifier? id;

final SchemasName? name;

Map<String, dynamic> toJson() { return {
  if (components != null) 'components': components?.map((e) => e.toJson()).toList(),
  if (currency != null) 'currency': currency?.toJson(),
  if (duration != null) 'duration': duration?.toJson(),
  if (frequency != null) 'frequency': frequency?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'components', 'currency', 'duration', 'frequency', 'id', 'name'}.contains(key)); } 
RatePlan copyWith({List<ComponentValue> Function()? components, Currency Function()? currency, Duration Function()? duration, SchemasFrequency Function()? frequency, RatePlanComponentsSchemasIdentifier Function()? id, SchemasName Function()? name, }) { return RatePlan(
  components: components != null ? components() : this.components,
  currency: currency != null ? currency() : this.currency,
  duration: duration != null ? duration() : this.duration,
  frequency: frequency != null ? frequency() : this.frequency,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RatePlan &&
          listEquals(components, other.components) &&
          currency == other.currency &&
          duration == other.duration &&
          frequency == other.frequency &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(components ?? const []), currency, duration, frequency, id, name); } 
@override String toString() { return 'RatePlan(components: $components, currency: $currency, duration: $duration, frequency: $frequency, id: $id, name: $name)'; } 
 }
