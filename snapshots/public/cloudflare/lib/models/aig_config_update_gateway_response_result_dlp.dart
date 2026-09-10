// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_response_result_dlp_variant1.dart';import 'aig_config_update_gateway_response_result_dlp_variant2.dart';
@immutable
final class AigConfigUpdateGatewayResponseResultDlp {
  const AigConfigUpdateGatewayResponseResultDlp({this.aigConfigUpdateGatewayResponseResultDlpVariant1 = const Omittable.absent(),
this.aigConfigUpdateGatewayResponseResultDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigUpdateGatewayResponseResultDlp._({required this.rawValue, required this.aigConfigUpdateGatewayResponseResultDlpVariant1,
required this.aigConfigUpdateGatewayResponseResultDlpVariant2,});
  factory AigConfigUpdateGatewayResponseResultDlp.fromJson(Object? json) => AigConfigUpdateGatewayResponseResultDlp._(
    rawValue: Omittable(json),
    aigConfigUpdateGatewayResponseResultDlpVariant1: parseAnyOfVariant<AigConfigUpdateGatewayResponseResultDlpVariant1>(json, (value) => AigConfigUpdateGatewayResponseResultDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigUpdateGatewayResponseResultDlpVariant2: parseAnyOfVariant<AigConfigUpdateGatewayResponseResultDlpVariant2>(json, (value) => AigConfigUpdateGatewayResponseResultDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigUpdateGatewayResponseResultDlpVariant1> aigConfigUpdateGatewayResponseResultDlpVariant1;
final Omittable<AigConfigUpdateGatewayResponseResultDlpVariant2> aigConfigUpdateGatewayResponseResultDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigUpdateGatewayResponseResultDlpVariant1.isPresent || aigConfigUpdateGatewayResponseResultDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigUpdateGatewayResponseResultDlpVariant1.isPresent) aigConfigUpdateGatewayResponseResultDlpVariant1.value?.toJson(),
if (aigConfigUpdateGatewayResponseResultDlpVariant2.isPresent) aigConfigUpdateGatewayResponseResultDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigUpdateGatewayResponseResultDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigUpdateGatewayResponseResultDlp(${toJson()})';
}
