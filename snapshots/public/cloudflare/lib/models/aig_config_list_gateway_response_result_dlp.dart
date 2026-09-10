// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_list_gateway_response_result_dlp_variant1.dart';import 'aig_config_list_gateway_response_result_dlp_variant2.dart';
@immutable
final class AigConfigListGatewayResponseResultDlp {
  const AigConfigListGatewayResponseResultDlp({this.aigConfigListGatewayResponseResultDlpVariant1 = const Omittable.absent(),
this.aigConfigListGatewayResponseResultDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigListGatewayResponseResultDlp._({required this.rawValue, required this.aigConfigListGatewayResponseResultDlpVariant1,
required this.aigConfigListGatewayResponseResultDlpVariant2,});
  factory AigConfigListGatewayResponseResultDlp.fromJson(Object? json) => AigConfigListGatewayResponseResultDlp._(
    rawValue: Omittable(json),
    aigConfigListGatewayResponseResultDlpVariant1: parseAnyOfVariant<AigConfigListGatewayResponseResultDlpVariant1>(json, (value) => AigConfigListGatewayResponseResultDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigListGatewayResponseResultDlpVariant2: parseAnyOfVariant<AigConfigListGatewayResponseResultDlpVariant2>(json, (value) => AigConfigListGatewayResponseResultDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigListGatewayResponseResultDlpVariant1> aigConfigListGatewayResponseResultDlpVariant1;
final Omittable<AigConfigListGatewayResponseResultDlpVariant2> aigConfigListGatewayResponseResultDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigListGatewayResponseResultDlpVariant1.isPresent || aigConfigListGatewayResponseResultDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigListGatewayResponseResultDlpVariant1.isPresent) aigConfigListGatewayResponseResultDlpVariant1.value?.toJson(),
if (aigConfigListGatewayResponseResultDlpVariant2.isPresent) aigConfigListGatewayResponseResultDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigListGatewayResponseResultDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigListGatewayResponseResultDlp(${toJson()})';
}
