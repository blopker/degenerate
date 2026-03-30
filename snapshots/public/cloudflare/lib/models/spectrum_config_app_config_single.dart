// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_app_config.dart';import 'spectrum_config_app_config_single_result.dart';import 'spectrum_config_paygo_app_config.dart';final class SpectrumConfigAppConfigSingle {const SpectrumConfigAppConfigSingle({this.result});

factory SpectrumConfigAppConfigSingle.fromJson(Map<String, dynamic> json) { return SpectrumConfigAppConfigSingle(
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => SpectrumConfigAppConfig.fromJson(v as Map<String, dynamic>), fromB: (v) => SpectrumConfigPaygoAppConfig.fromJson(v as Map<String, dynamic>),) : null,
); }

final SpectrumConfigAppConfigSingleResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SpectrumConfigAppConfigSingle copyWith({SpectrumConfigAppConfigSingleResult Function()? result}) { return SpectrumConfigAppConfigSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigAppConfigSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SpectrumConfigAppConfigSingle(result: $result)'; } 
 }
