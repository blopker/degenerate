// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_collection18.dart';import 'waf_packages_list_waf_packages_response4_xx_variant2.dart';
@immutable
final class WafPackagesListWafPackagesResponse4Xx {
  const WafPackagesListWafPackagesResponse4Xx({this.responseCollection18 = const Omittable.absent(),
this.wafPackagesListWafPackagesResponse4XxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WafPackagesListWafPackagesResponse4Xx._({required this.rawValue, required this.responseCollection18,
required this.wafPackagesListWafPackagesResponse4XxVariant2,});
  factory WafPackagesListWafPackagesResponse4Xx.fromJson(Object? json) => WafPackagesListWafPackagesResponse4Xx._(
    rawValue: Omittable(json),
    responseCollection18: parseAnyOfVariant<ResponseCollection18>(json, (value) => ResponseCollection18.fromJson(value! as Map<String, dynamic>)),
wafPackagesListWafPackagesResponse4XxVariant2: parseAnyOfVariant<WafPackagesListWafPackagesResponse4XxVariant2>(json, (value) => WafPackagesListWafPackagesResponse4XxVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ResponseCollection18> responseCollection18;
final Omittable<WafPackagesListWafPackagesResponse4XxVariant2> wafPackagesListWafPackagesResponse4XxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => responseCollection18.isPresent || wafPackagesListWafPackagesResponse4XxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (responseCollection18.isPresent) responseCollection18.value?.toJson(),
if (wafPackagesListWafPackagesResponse4XxVariant2.isPresent) wafPackagesListWafPackagesResponse4XxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WafPackagesListWafPackagesResponse4Xx && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WafPackagesListWafPackagesResponse4Xx(${toJson()})';
}
