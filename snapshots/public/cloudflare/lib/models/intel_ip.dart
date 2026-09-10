// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';extension type const IntelIpv4(String value) {
factory IntelIpv4.fromJson(String json) => IntelIpv4(json);

String toJson() => value;

}
extension type const IntelIpv6(String value) {
factory IntelIpv6.fromJson(String json) => IntelIpv6(json);

String toJson() => value;

}

@immutable
final class IntelIp {
  const IntelIp({this.intelIpv4 = const Omittable.absent(),
this.intelIpv6 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IntelIp._({required this.rawValue, required this.intelIpv4,
required this.intelIpv6,});
  factory IntelIp.fromJson(Object? json) => IntelIp._(
    rawValue: Omittable(json),
    intelIpv4: parseAnyOfVariant<IntelIpv4>(json, (value) => IntelIpv4.fromJson(value! as String)),
intelIpv6: parseAnyOfVariant<IntelIpv6>(json, (value) => IntelIpv6.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<IntelIpv4> intelIpv4;
final Omittable<IntelIpv6> intelIpv6;

  /// Whether at least one known variant matched.
  bool get isValid => intelIpv4.isPresent || intelIpv6.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (intelIpv4.isPresent) intelIpv4.value?.toJson(),
if (intelIpv6.isPresent) intelIpv6.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IntelIp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IntelIp(${toJson()})';
}
