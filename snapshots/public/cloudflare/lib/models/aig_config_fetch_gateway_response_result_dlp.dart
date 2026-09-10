// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_fetch_gateway_response_result_dlp_variant1.dart';import 'aig_config_fetch_gateway_response_result_dlp_variant2.dart';
@immutable
final class AigConfigFetchGatewayResponseResultDlp {
  const AigConfigFetchGatewayResponseResultDlp({this.aigConfigFetchGatewayResponseResultDlpVariant1 = const Omittable.absent(),
this.aigConfigFetchGatewayResponseResultDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigFetchGatewayResponseResultDlp._({required this.rawValue, required this.aigConfigFetchGatewayResponseResultDlpVariant1,
required this.aigConfigFetchGatewayResponseResultDlpVariant2,});
  factory AigConfigFetchGatewayResponseResultDlp.fromJson(Object? json) => AigConfigFetchGatewayResponseResultDlp._(
    rawValue: Omittable(json),
    aigConfigFetchGatewayResponseResultDlpVariant1: parseAnyOfVariant<AigConfigFetchGatewayResponseResultDlpVariant1>(json, (value) => AigConfigFetchGatewayResponseResultDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigFetchGatewayResponseResultDlpVariant2: parseAnyOfVariant<AigConfigFetchGatewayResponseResultDlpVariant2>(json, (value) => AigConfigFetchGatewayResponseResultDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigFetchGatewayResponseResultDlpVariant1> aigConfigFetchGatewayResponseResultDlpVariant1;
final Omittable<AigConfigFetchGatewayResponseResultDlpVariant2> aigConfigFetchGatewayResponseResultDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigFetchGatewayResponseResultDlpVariant1.isPresent || aigConfigFetchGatewayResponseResultDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigFetchGatewayResponseResultDlpVariant1.isPresent) aigConfigFetchGatewayResponseResultDlpVariant1.value?.toJson(),
if (aigConfigFetchGatewayResponseResultDlpVariant2.isPresent) aigConfigFetchGatewayResponseResultDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigFetchGatewayResponseResultDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigFetchGatewayResponseResultDlp(${toJson()})';
}
