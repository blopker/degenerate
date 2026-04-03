// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateVoiceRequest {const CreateVoiceRequest({required this.name, required this.audioSample, required this.consent, });

factory CreateVoiceRequest.fromJson(Map<String, dynamic> json) { return CreateVoiceRequest(
  name: json['name'] as String,
  audioSample: base64Decode(json['audio_sample'] as String),
  consent: json['consent'] as String,
); }

/// The name of the new voice.
final String name;

/// The sample audio recording file. Maximum size is 10 MiB.
/// 
/// Supported MIME types:
/// `audio/mpeg`, `audio/wav`, `audio/x-wav`, `audio/ogg`, `audio/aac`, `audio/flac`, `audio/webm`, `audio/mp4`.
/// 
final Uint8List audioSample;

/// The consent recording ID (for example, `cons_1234`).
final String consent;

Map<String, dynamic> toJson() { return {
  'name': name,
  'audio_sample': base64Encode(audioSample),
  'consent': consent,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('audio_sample') &&
      json.containsKey('consent') && json['consent'] is String; } 
CreateVoiceRequest copyWith({String? name, Uint8List? audioSample, String? consent, }) { return CreateVoiceRequest(
  name: name ?? this.name,
  audioSample: audioSample ?? this.audioSample,
  consent: consent ?? this.consent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateVoiceRequest &&
          name == other.name &&
          audioSample == other.audioSample &&
          consent == other.consent; } 
@override int get hashCode { return Object.hash(name, audioSample, consent); } 
@override String toString() { return 'CreateVoiceRequest(name: $name, audioSample: $audioSample, consent: $consent)'; } 
 }
