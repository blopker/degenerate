// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pcm_audio_format.dart';import 'pcma_audio_format.dart';import 'pcmu_audio_format.dart';
@immutable
final class RealtimeAudioFormats {
  const RealtimeAudioFormats({this.pcmAudioFormat = const Omittable.absent(),
this.pcmuAudioFormat = const Omittable.absent(),
this.pcmaAudioFormat = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RealtimeAudioFormats._({required this.rawValue, required this.pcmAudioFormat,
required this.pcmuAudioFormat,
required this.pcmaAudioFormat,});
  factory RealtimeAudioFormats.fromJson(Object? json) => RealtimeAudioFormats._(
    rawValue: Omittable(json),
    pcmAudioFormat: parseAnyOfVariant<PcmAudioFormat>(json, (value) => PcmAudioFormat.fromJson(value! as Map<String, dynamic>)),
pcmuAudioFormat: parseAnyOfVariant<PcmuAudioFormat>(json, (value) => PcmuAudioFormat.fromJson(value! as Map<String, dynamic>)),
pcmaAudioFormat: parseAnyOfVariant<PcmaAudioFormat>(json, (value) => PcmaAudioFormat.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PcmAudioFormat> pcmAudioFormat;
final Omittable<PcmuAudioFormat> pcmuAudioFormat;
final Omittable<PcmaAudioFormat> pcmaAudioFormat;

  /// Whether at least one known variant matched.
  bool get isValid => pcmAudioFormat.isPresent || pcmuAudioFormat.isPresent || pcmaAudioFormat.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pcmAudioFormat.isPresent) pcmAudioFormat.value?.toJson(),
if (pcmuAudioFormat.isPresent) pcmuAudioFormat.value?.toJson(),
if (pcmaAudioFormat.isPresent) pcmaAudioFormat.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RealtimeAudioFormats && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RealtimeAudioFormats(${toJson()})';
}
