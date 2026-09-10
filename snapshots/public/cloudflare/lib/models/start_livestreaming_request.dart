// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'start_livestreaming_request_video_config.dart';@immutable final class StartLivestreamingRequest {const StartLivestreamingRequest({this.name = const Omittable.absent(), this.videoConfig, });

factory StartLivestreamingRequest.fromJson(Map<String, dynamic> json) { return StartLivestreamingRequest(
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  videoConfig: json['video_config'] != null ? StartLivestreamingRequestVideoConfig.fromJson(json['video_config'] as Map<String, dynamic>) : null,
); }

final Omittable<String?> name;

final StartLivestreamingRequestVideoConfig? videoConfig;

Map<String, dynamic> toJson() { return {
  if (name.isPresent) 'name': name.value,
  if (videoConfig != null) 'video_config': videoConfig?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'video_config'}.contains(key)); } 
StartLivestreamingRequest copyWith({Omittable<String?>? name, StartLivestreamingRequestVideoConfig? Function()? videoConfig, }) { return StartLivestreamingRequest(
  name: name ?? this.name,
  videoConfig: videoConfig != null ? videoConfig() : this.videoConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartLivestreamingRequest &&
          name == other.name &&
          videoConfig == other.videoConfig; } 
@override int get hashCode { return Object.hash(name, videoConfig); } 
@override String toString() { return 'StartLivestreamingRequest(name: $name, videoConfig: $videoConfig)'; } 
 }
