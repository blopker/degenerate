// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_custom_response_variant1.dart';/// A custom content type and reponse to return when the threshold is exceeded. The custom response configured in this object will override the custom error for the zone. This object is optional.
/// Notes: If you omit this object, Cloudflare will use the default HTML error page. If "mode" is "challenge", "managed_challenge", or "js_challenge", Cloudflare will use the zone challenge pages and you should not provide the "response" object.
@immutable
final class FirewallCustomResponse {
  const FirewallCustomResponse({this.firewallCustomResponseVariant1 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FirewallCustomResponse._({required this.rawValue, required this.firewallCustomResponseVariant1,});
  factory FirewallCustomResponse.fromJson(Object? json) => FirewallCustomResponse._(
    rawValue: Omittable(json),
    firewallCustomResponseVariant1: parseAnyOfVariant<FirewallCustomResponseVariant1>(json, (value) => FirewallCustomResponseVariant1.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<FirewallCustomResponseVariant1> firewallCustomResponseVariant1;

  /// Whether at least one known variant matched.
  bool get isValid => firewallCustomResponseVariant1.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (firewallCustomResponseVariant1.isPresent) firewallCustomResponseVariant1.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FirewallCustomResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FirewallCustomResponse(${toJson()})';
}
