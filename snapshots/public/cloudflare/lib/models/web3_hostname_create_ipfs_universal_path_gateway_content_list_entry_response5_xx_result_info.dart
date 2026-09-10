// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provides the API response.
@immutable
final class Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo {
  const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo({this.mapStringdynamicOrNull = const Omittable.absent(),
this.stringOrNull = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo._({required this.rawValue, required this.mapStringdynamicOrNull,
required this.stringOrNull,});
  factory Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo.fromJson(Object? json) => Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo._(
    rawValue: Omittable(json),
    mapStringdynamicOrNull: parseAnyOfVariant<Map<String, dynamic>?>(json, (value) => value as Map<String, dynamic>?),
stringOrNull: parseAnyOfVariant<String?>(json, (value) => value as String?),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, dynamic>?> mapStringdynamicOrNull;
final Omittable<String?> stringOrNull;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || mapStringdynamicOrNull.isPresent || stringOrNull.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringdynamicOrNull.isPresent) mapStringdynamicOrNull.value,
if (stringOrNull.isPresent) stringOrNull.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5XxResultInfo(${toJson()})';
}
