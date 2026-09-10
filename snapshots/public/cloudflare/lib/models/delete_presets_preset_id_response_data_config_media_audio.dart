// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Control options for Audio quality.
@immutable final class DeletePresetsPresetIdResponseDataConfigMediaAudio {const DeletePresetsPresetIdResponseDataConfigMediaAudio({this.enableHighBitrate, this.enableStereo, });

factory DeletePresetsPresetIdResponseDataConfigMediaAudio.fromJson(Map<String, dynamic> json) {return DeletePresetsPresetIdResponseDataConfigMediaAudio(
  enableHighBitrate: json['enable_high_bitrate'] as bool?,
  enableStereo: json['enable_stereo'] as bool?,
);}

/// Enable High Quality Audio for your meetings
final bool? enableHighBitrate;

/// Enable Stereo for your meetings
final bool? enableStereo;

/// The value with the schema default applied when absent.
bool get enableHighBitrateOrDefault {return enableHighBitrate ?? false;}
/// The value with the schema default applied when absent.
bool get enableStereoOrDefault {return enableStereo ?? false;}
Map<String, dynamic> toJson() {return {
  'enable_high_bitrate': ?enableHighBitrate,
  'enable_stereo': ?enableStereo,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enable_high_bitrate', 'enable_stereo'}.contains(key));}
DeletePresetsPresetIdResponseDataConfigMediaAudio copyWith({bool? Function()? enableHighBitrate, bool? Function()? enableStereo, }) {return DeletePresetsPresetIdResponseDataConfigMediaAudio(
  enableHighBitrate: enableHighBitrate != null ? enableHighBitrate() : this.enableHighBitrate,
  enableStereo: enableStereo != null ? enableStereo() : this.enableStereo,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataConfigMediaAudio &&
          enableHighBitrate == other.enableHighBitrate &&
          enableStereo == other.enableStereo;}
@override int get hashCode {return Object.hash(enableHighBitrate, enableStereo);}
@override String toString() {return 'DeletePresetsPresetIdResponseDataConfigMediaAudio(enableHighBitrate: $enableHighBitrate, enableStereo: $enableStereo)';}
}
