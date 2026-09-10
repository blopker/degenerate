// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'turbo_request_audio_variant2.dart';
@immutable
final class TurboRequestAudio {
  const TurboRequestAudio({this.string = const Omittable.absent(),
this.turboRequestAudioVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TurboRequestAudio._({required this.rawValue, required this.string,
required this.turboRequestAudioVariant2,});
  factory TurboRequestAudio.fromJson(Object? json) => TurboRequestAudio._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
turboRequestAudioVariant2: parseAnyOfVariant<TurboRequestAudioVariant2>(json, (value) => TurboRequestAudioVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TurboRequestAudioVariant2> turboRequestAudioVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || turboRequestAudioVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (turboRequestAudioVariant2.isPresent) turboRequestAudioVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TurboRequestAudio && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TurboRequestAudio(${toJson()})';
}
