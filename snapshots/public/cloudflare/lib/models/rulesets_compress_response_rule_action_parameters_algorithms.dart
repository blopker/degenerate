// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Name of the compression algorithm to enable.
@immutable final class RulesetsCompressResponseRuleActionParametersAlgorithmsName {const RulesetsCompressResponseRuleActionParametersAlgorithmsName._(this.value);

factory RulesetsCompressResponseRuleActionParametersAlgorithmsName.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  'default' => $default,
  'gzip' => gzip,
  'brotli' => brotli,
  'zstd' => zstd,
  _ => RulesetsCompressResponseRuleActionParametersAlgorithmsName._(json),
}; }

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName none = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('none');

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName auto = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('auto');

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName $default = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('default');

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName gzip = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('gzip');

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName brotli = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('brotli');

static const RulesetsCompressResponseRuleActionParametersAlgorithmsName zstd = RulesetsCompressResponseRuleActionParametersAlgorithmsName._('zstd');

static const List<RulesetsCompressResponseRuleActionParametersAlgorithmsName> values = [none, auto, $default, gzip, brotli, zstd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsCompressResponseRuleActionParametersAlgorithmsName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleActionParametersAlgorithmsName($value)'; } 
 }
/// Compression algorithm to enable.
@immutable final class RulesetsCompressResponseRuleActionParametersAlgorithms {const RulesetsCompressResponseRuleActionParametersAlgorithms({this.name});

factory RulesetsCompressResponseRuleActionParametersAlgorithms.fromJson(Map<String, dynamic> json) { return RulesetsCompressResponseRuleActionParametersAlgorithms(
  name: json['name'] != null ? RulesetsCompressResponseRuleActionParametersAlgorithmsName.fromJson(json['name'] as String) : null,
); }

/// Name of the compression algorithm to enable.
final RulesetsCompressResponseRuleActionParametersAlgorithmsName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
RulesetsCompressResponseRuleActionParametersAlgorithms copyWith({RulesetsCompressResponseRuleActionParametersAlgorithmsName Function()? name}) { return RulesetsCompressResponseRuleActionParametersAlgorithms(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsCompressResponseRuleActionParametersAlgorithms &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleActionParametersAlgorithms(name: $name)'; } 
 }
