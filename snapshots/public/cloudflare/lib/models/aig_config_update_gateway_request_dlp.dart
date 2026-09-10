// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_request_dlp_variant1.dart';import 'aig_config_update_gateway_request_dlp_variant2.dart';
@immutable
final class AigConfigUpdateGatewayRequestDlp {
  const AigConfigUpdateGatewayRequestDlp({this.aigConfigUpdateGatewayRequestDlpVariant1 = const Omittable.absent(),
this.aigConfigUpdateGatewayRequestDlpVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigUpdateGatewayRequestDlp._({required this.rawValue, required this.aigConfigUpdateGatewayRequestDlpVariant1,
required this.aigConfigUpdateGatewayRequestDlpVariant2,});
  factory AigConfigUpdateGatewayRequestDlp.fromJson(Object? json) => AigConfigUpdateGatewayRequestDlp._(
    rawValue: Omittable(json),
    aigConfigUpdateGatewayRequestDlpVariant1: parseAnyOfVariant<AigConfigUpdateGatewayRequestDlpVariant1>(json, (value) => AigConfigUpdateGatewayRequestDlpVariant1.fromJson(value! as Map<String, dynamic>)),
aigConfigUpdateGatewayRequestDlpVariant2: parseAnyOfVariant<AigConfigUpdateGatewayRequestDlpVariant2>(json, (value) => AigConfigUpdateGatewayRequestDlpVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigUpdateGatewayRequestDlpVariant1> aigConfigUpdateGatewayRequestDlpVariant1;
final Omittable<AigConfigUpdateGatewayRequestDlpVariant2> aigConfigUpdateGatewayRequestDlpVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigUpdateGatewayRequestDlpVariant1.isPresent || aigConfigUpdateGatewayRequestDlpVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigUpdateGatewayRequestDlpVariant1.isPresent) aigConfigUpdateGatewayRequestDlpVariant1.value?.toJson(),
if (aigConfigUpdateGatewayRequestDlpVariant2.isPresent) aigConfigUpdateGatewayRequestDlpVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigUpdateGatewayRequestDlp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigUpdateGatewayRequestDlp(${toJson()})';
}
