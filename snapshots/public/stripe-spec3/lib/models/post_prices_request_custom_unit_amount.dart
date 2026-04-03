// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
@immutable final class PostPricesRequestCustomUnitAmount {const PostPricesRequestCustomUnitAmount({required this.enabled, this.maximum, this.minimum, this.preset, });

factory PostPricesRequestCustomUnitAmount.fromJson(Map<String, dynamic> json) { return PostPricesRequestCustomUnitAmount(
  enabled: json['enabled'] as bool,
  maximum: json['maximum'] != null ? (json['maximum'] as num).toInt() : null,
  minimum: json['minimum'] != null ? (json['minimum'] as num).toInt() : null,
  preset: json['preset'] != null ? (json['preset'] as num).toInt() : null,
); }

final bool enabled;

final int? maximum;

final int? minimum;

final int? preset;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'maximum': ?maximum,
  'minimum': ?minimum,
  'preset': ?preset,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPricesRequestCustomUnitAmount copyWith({bool? enabled, int Function()? maximum, int Function()? minimum, int Function()? preset, }) { return PostPricesRequestCustomUnitAmount(
  enabled: enabled ?? this.enabled,
  maximum: maximum != null ? maximum() : this.maximum,
  minimum: minimum != null ? minimum() : this.minimum,
  preset: preset != null ? preset() : this.preset,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPricesRequestCustomUnitAmount &&
          enabled == other.enabled &&
          maximum == other.maximum &&
          minimum == other.minimum &&
          preset == other.preset; } 
@override int get hashCode { return Object.hash(enabled, maximum, minimum, preset); } 
@override String toString() { return 'PostPricesRequestCustomUnitAmount(enabled: $enabled, maximum: $maximum, minimum: $minimum, preset: $preset)'; } 
 }
