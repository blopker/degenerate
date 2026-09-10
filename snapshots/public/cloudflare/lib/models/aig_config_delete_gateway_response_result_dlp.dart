// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_gateway_response_result_dlp_variant1.dart';import 'aig_config_delete_gateway_response_result_dlp_variant2.dart';
@immutable
final class AigConfigDeleteGatewayResponseResultDlp {
  const AigConfigDeleteGatewayResponseResultDlp({this.aigConfigDeleteGatewayResponseResultDlpVariant1 = const Omittable.absent(),
this.aigConfigDeleteGatewayResponseResultDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigDeleteGatewayResponseResultDlp._({required this.rawValue, required this.aigConfigDeleteGatewayResponseResultDlpVariant1,
required this.aigConfigDeleteGatewayResponseResultDlpVariant2,});
  factory AigConfigDeleteGatewayResponseResultDlp.fromJson(Object? json) => AigConfigDeleteGatewayResponseResultDlp._(
    rawValue: Omittable(json),
    aigConfigDeleteGatewayResponseResultDlpVariant1: parseAnyOfVariant<AigConfigDeleteGatewayResponseResultDlpVariant1>(json, (value) => AigConfigDeleteGatewayResponseResultDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigDeleteGatewayResponseResultDlpVariant2: parseAnyOfVariant<AigConfigDeleteGatewayResponseResultDlpVariant2>(json, (value) => AigConfigDeleteGatewayResponseResultDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigDeleteGatewayResponseResultDlpVariant1> aigConfigDeleteGatewayResponseResultDlpVariant1;
final Omittable<AigConfigDeleteGatewayResponseResultDlpVariant2> aigConfigDeleteGatewayResponseResultDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigDeleteGatewayResponseResultDlpVariant1.isPresent || aigConfigDeleteGatewayResponseResultDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigDeleteGatewayResponseResultDlpVariant1.isPresent) aigConfigDeleteGatewayResponseResultDlpVariant1.value?.toJson(),
if (aigConfigDeleteGatewayResponseResultDlpVariant2.isPresent) aigConfigDeleteGatewayResponseResultDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigDeleteGatewayResponseResultDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigDeleteGatewayResponseResultDlp(${toJson()})';
}
