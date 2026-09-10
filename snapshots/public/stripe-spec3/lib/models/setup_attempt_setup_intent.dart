// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_intent.dart';/// ID of the SetupIntent that this attempt belongs to.
@immutable
final class SetupAttemptSetupIntent {
  const SetupAttemptSetupIntent({this.string = const Omittable.absent(),
this.setupIntent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupAttemptSetupIntent._({required this.rawValue, required this.string,
required this.setupIntent,});
  factory SetupAttemptSetupIntent.fromJson(Object? json) => SetupAttemptSetupIntent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
setupIntent: parseAnyOfVariant<SetupIntent>(json, (value) => SetupIntent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<SetupIntent> setupIntent;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || setupIntent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (setupIntent.isPresent) setupIntent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupAttemptSetupIntent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupAttemptSetupIntent(${toJson()})';
}
