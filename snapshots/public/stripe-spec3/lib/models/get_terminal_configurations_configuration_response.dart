// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_terminal_configuration.dart';import 'terminal_configuration.dart';
@immutable
final class GetTerminalConfigurationsConfigurationResponse {
  const GetTerminalConfigurationsConfigurationResponse({this.terminalConfiguration = const Omittable.absent(),
this.deletedTerminalConfiguration = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTerminalConfigurationsConfigurationResponse._({required this.rawValue, required this.terminalConfiguration,
required this.deletedTerminalConfiguration,});
  factory GetTerminalConfigurationsConfigurationResponse.fromJson(Object? json) => GetTerminalConfigurationsConfigurationResponse._(
    rawValue: Omittable(json),
    terminalConfiguration: parseAnyOfVariant<TerminalConfiguration>(json, (value) => TerminalConfiguration.fromJson(value! as Map<String, dynamic>)),
deletedTerminalConfiguration: parseAnyOfVariant<DeletedTerminalConfiguration>(json, (value) => DeletedTerminalConfiguration.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TerminalConfiguration> terminalConfiguration;
final Omittable<DeletedTerminalConfiguration> deletedTerminalConfiguration;

  /// Whether at least one known variant matched.
  bool get isValid => terminalConfiguration.isPresent || deletedTerminalConfiguration.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (terminalConfiguration.isPresent) terminalConfiguration.value?.toJson(),
if (deletedTerminalConfiguration.isPresent) deletedTerminalConfiguration.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTerminalConfigurationsConfigurationResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTerminalConfigurationsConfigurationResponse(${toJson()})';
}
