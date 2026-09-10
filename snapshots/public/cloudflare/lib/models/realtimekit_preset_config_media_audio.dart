// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Control options for Audio quality.
@immutable final class RealtimekitPresetConfigMediaAudio {const RealtimekitPresetConfigMediaAudio({this.enableHighBitrate, this.enableStereo, });

factory RealtimekitPresetConfigMediaAudio.fromJson(Map<String, dynamic> json) { return RealtimekitPresetConfigMediaAudio(
  enableHighBitrate: json['enable_high_bitrate'] as bool?,
  enableStereo: json['enable_stereo'] as bool?,
); }

/// Enable High Quality Audio for your meetings
final bool? enableHighBitrate;

/// Enable Stereo for your meetings
final bool? enableStereo;

/// The value with the schema default applied when absent.
bool get enableHighBitrateOrDefault { return enableHighBitrate ?? false; } 
/// The value with the schema default applied when absent.
bool get enableStereoOrDefault { return enableStereo ?? false; } 
Map<String, dynamic> toJson() { return {
  'enable_high_bitrate': ?enableHighBitrate,
  'enable_stereo': ?enableStereo,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_high_bitrate', 'enable_stereo'}.contains(key)); } 
RealtimekitPresetConfigMediaAudio copyWith({bool? Function()? enableHighBitrate, bool? Function()? enableStereo, }) { return RealtimekitPresetConfigMediaAudio(
  enableHighBitrate: enableHighBitrate != null ? enableHighBitrate() : this.enableHighBitrate,
  enableStereo: enableStereo != null ? enableStereo() : this.enableStereo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetConfigMediaAudio &&
          enableHighBitrate == other.enableHighBitrate &&
          enableStereo == other.enableStereo; } 
@override int get hashCode { return Object.hash(enableHighBitrate, enableStereo); } 
@override String toString() { return 'RealtimekitPresetConfigMediaAudio(enableHighBitrate: $enableHighBitrate, enableStereo: $enableStereo)'; } 
 }
