// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_app_config.dart';import 'spectrum_config_app_config_collection_result.dart';import 'spectrum_config_paygo_app_config.dart';final class SpectrumConfigAppConfigCollection {const SpectrumConfigAppConfigCollection({this.result});

factory SpectrumConfigAppConfigCollection.fromJson(Map<String, dynamic> json) { return SpectrumConfigAppConfigCollection(
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => (v as List<dynamic>).map((e) => SpectrumConfigAppConfig.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => (v as List<dynamic>).map((e) => SpectrumConfigPaygoAppConfig.fromJson(e as Map<String, dynamic>)).toList(),) : null,
); }

final SpectrumConfigAppConfigCollectionResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SpectrumConfigAppConfigCollection copyWith({SpectrumConfigAppConfigCollectionResult Function()? result}) { return SpectrumConfigAppConfigCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigAppConfigCollection &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SpectrumConfigAppConfigCollection(result: $result)'; } 
 }
