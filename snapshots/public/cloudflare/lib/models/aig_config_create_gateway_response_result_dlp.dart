// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_create_gateway_response_result_dlp_variant1.dart';import 'aig_config_create_gateway_response_result_dlp_variant2.dart';
@immutable
final class AigConfigCreateGatewayResponseResultDlp {
  const AigConfigCreateGatewayResponseResultDlp({this.aigConfigCreateGatewayResponseResultDlpVariant1 = const Omittable.absent(),
this.aigConfigCreateGatewayResponseResultDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigCreateGatewayResponseResultDlp._({required this.rawValue, required this.aigConfigCreateGatewayResponseResultDlpVariant1,
required this.aigConfigCreateGatewayResponseResultDlpVariant2,});
  factory AigConfigCreateGatewayResponseResultDlp.fromJson(Object? json) => AigConfigCreateGatewayResponseResultDlp._(
    rawValue: Omittable(json),
    aigConfigCreateGatewayResponseResultDlpVariant1: parseAnyOfVariant<AigConfigCreateGatewayResponseResultDlpVariant1>(json, (value) => AigConfigCreateGatewayResponseResultDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigCreateGatewayResponseResultDlpVariant2: parseAnyOfVariant<AigConfigCreateGatewayResponseResultDlpVariant2>(json, (value) => AigConfigCreateGatewayResponseResultDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigCreateGatewayResponseResultDlpVariant1> aigConfigCreateGatewayResponseResultDlpVariant1;
final Omittable<AigConfigCreateGatewayResponseResultDlpVariant2> aigConfigCreateGatewayResponseResultDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigCreateGatewayResponseResultDlpVariant1.isPresent || aigConfigCreateGatewayResponseResultDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigCreateGatewayResponseResultDlpVariant1.isPresent) aigConfigCreateGatewayResponseResultDlpVariant1.value?.toJson(),
if (aigConfigCreateGatewayResponseResultDlpVariant2.isPresent) aigConfigCreateGatewayResponseResultDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigCreateGatewayResponseResultDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigCreateGatewayResponseResultDlp(${toJson()})';
}
