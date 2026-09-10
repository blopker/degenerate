// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise.dart';import 'simple_user.dart';
@immutable
final class IntegrationInstallationRequestAccount {
  const IntegrationInstallationRequestAccount({this.simpleUser = const Omittable.absent(),
this.enterprise = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IntegrationInstallationRequestAccount._({required this.rawValue, required this.simpleUser,
required this.enterprise,});
  factory IntegrationInstallationRequestAccount.fromJson(Object? json) => IntegrationInstallationRequestAccount._(
    rawValue: Omittable(json),
    simpleUser: parseAnyOfVariant<SimpleUser>(json, (value) => SimpleUser.fromJson(value! as Map<String, dynamic>)),
enterprise: parseAnyOfVariant<Enterprise>(json, (value) => Enterprise.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SimpleUser> simpleUser;
final Omittable<Enterprise> enterprise;

  /// Whether at least one known variant matched.
  bool get isValid => simpleUser.isPresent || enterprise.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (simpleUser.isPresent) simpleUser.value?.toJson(),
if (enterprise.isPresent) enterprise.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IntegrationInstallationRequestAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IntegrationInstallationRequestAccount(${toJson()})';
}
