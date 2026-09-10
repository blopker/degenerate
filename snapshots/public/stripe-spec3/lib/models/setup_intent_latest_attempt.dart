// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'setup_attempt.dart';/// The most recent SetupAttempt for this SetupIntent.
@immutable
final class SetupIntentLatestAttempt {
  const SetupIntentLatestAttempt({this.string = const Omittable.absent(),
this.setupAttempt = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentLatestAttempt._({required this.rawValue, required this.string,
required this.setupAttempt,});
  factory SetupIntentLatestAttempt.fromJson(Object? json) => SetupIntentLatestAttempt._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
setupAttempt: parseAnyOfVariant<SetupAttempt>(json, (value) => SetupAttempt.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<SetupAttempt> setupAttempt;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || setupAttempt.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (setupAttempt.isPresent) setupAttempt.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupIntentLatestAttempt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentLatestAttempt(${toJson()})';
}
