// GENERATED CODE - DO NOT MODIFY BY HAND

import 'noise_reduction_type.dart';/// Configuration for input audio noise reduction.
/// 
final class RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction {const RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction({this.type});

factory RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction(
  type: json['type'] != null ? NoiseReductionType.fromJson(json['type'] as String) : null,
); }

/// Type of noise reduction. `near_field` is for close-talking microphones such as headphones, `far_field` is for far-field microphones such as laptop or conference room microphones.
/// 
final NoiseReductionType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction copyWith({NoiseReductionType Function()? type}) { return RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGaAudioInputNoiseReduction(type: $type)'; } 
 }
