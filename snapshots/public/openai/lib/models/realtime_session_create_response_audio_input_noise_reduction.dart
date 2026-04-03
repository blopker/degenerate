// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'noise_reduction_type.dart';/// Configuration for input audio noise reduction.
/// 
@immutable final class RealtimeSessionCreateResponseAudioInputNoiseReduction {const RealtimeSessionCreateResponseAudioInputNoiseReduction({this.type});

factory RealtimeSessionCreateResponseAudioInputNoiseReduction.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateResponseAudioInputNoiseReduction(
  type: json['type'] != null ? NoiseReductionType.fromJson(json['type'] as String) : null,
); }

/// Type of noise reduction. `near_field` is for close-talking microphones such as headphones, `far_field` is for far-field microphones such as laptop or conference room microphones.
/// 
final NoiseReductionType? type;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type'}.contains(key)); } 
RealtimeSessionCreateResponseAudioInputNoiseReduction copyWith({NoiseReductionType Function()? type}) { return RealtimeSessionCreateResponseAudioInputNoiseReduction(
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateResponseAudioInputNoiseReduction &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateResponseAudioInputNoiseReduction(type: $type)'; } 
 }
