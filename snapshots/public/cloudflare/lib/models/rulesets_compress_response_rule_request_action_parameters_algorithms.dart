// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Name of the compression algorithm to enable.
@immutable final class RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName {const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._(this.value);

factory RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  'default' => $default,
  'gzip' => gzip,
  'brotli' => brotli,
  'zstd' => zstd,
  _ => RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._(json),
}; }

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName none = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('none');

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName auto = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('auto');

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName $default = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('default');

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName gzip = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('gzip');

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName brotli = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('brotli');

static const RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName zstd = RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName._('zstd');

static const List<RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName> values = [none, auto, $default, gzip, brotli, zstd];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName($value)'; } 
 }
/// Compression algorithm to enable.
@immutable final class RulesetsCompressResponseRuleRequestActionParametersAlgorithms {const RulesetsCompressResponseRuleRequestActionParametersAlgorithms({this.name});

factory RulesetsCompressResponseRuleRequestActionParametersAlgorithms.fromJson(Map<String, dynamic> json) { return RulesetsCompressResponseRuleRequestActionParametersAlgorithms(
  name: json['name'] != null ? RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName.fromJson(json['name'] as String) : null,
); }

/// Name of the compression algorithm to enable.
final RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
RulesetsCompressResponseRuleRequestActionParametersAlgorithms copyWith({RulesetsCompressResponseRuleRequestActionParametersAlgorithmsName? Function()? name}) { return RulesetsCompressResponseRuleRequestActionParametersAlgorithms(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsCompressResponseRuleRequestActionParametersAlgorithms &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'RulesetsCompressResponseRuleRequestActionParametersAlgorithms(name: $name)'; } 
 }
