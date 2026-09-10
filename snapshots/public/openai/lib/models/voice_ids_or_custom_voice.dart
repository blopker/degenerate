// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'voice_ids_or_custom_voice_variant2.dart';import 'voice_ids_shared.dart';/// A built-in voice name or a custom voice reference.
/// 
@immutable
final class VoiceIdsOrCustomVoice {
  const VoiceIdsOrCustomVoice({this.voiceIdsShared = const Omittable.absent(),
this.voiceIdsOrCustomVoiceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const VoiceIdsOrCustomVoice._({required this.rawValue, required this.voiceIdsShared,
required this.voiceIdsOrCustomVoiceVariant2,});
  factory VoiceIdsOrCustomVoice.fromJson(Object? json) => VoiceIdsOrCustomVoice._(
    rawValue: Omittable(json),
    voiceIdsShared: parseAnyOfVariant<VoiceIdsShared>(json, VoiceIdsShared.fromJson, isValid: (value) => value.isValid),
voiceIdsOrCustomVoiceVariant2: parseAnyOfVariant<VoiceIdsOrCustomVoiceVariant2>(json, (value) => VoiceIdsOrCustomVoiceVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<VoiceIdsShared> voiceIdsShared;
final Omittable<VoiceIdsOrCustomVoiceVariant2> voiceIdsOrCustomVoiceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => voiceIdsShared.isPresent || voiceIdsOrCustomVoiceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (voiceIdsShared.isPresent) voiceIdsShared.value?.toJson(),
if (voiceIdsOrCustomVoiceVariant2.isPresent) voiceIdsOrCustomVoiceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is VoiceIdsOrCustomVoice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'VoiceIdsOrCustomVoice(${toJson()})';
}
