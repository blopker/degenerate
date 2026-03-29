// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_browser_metadata.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_candidate_pairs.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_device_info.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_events.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_ip_information.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_report_metadata_pc_metadata.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata({this.audioDevicesUpdates, this.browserMetadata, this.candidatePairs, this.deviceInfo, this.events, this.ipInformation, this.pcMetadata, this.roomViewType, this.sdkName, this.sdkVersion, this.selectedDeviceUpdates, this.speakerDevicesUpdates, this.videoDevicesUpdates, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata(
  audioDevicesUpdates: (json['audio_devices_updates'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  browserMetadata: json['browser_metadata'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata.fromJson(json['browser_metadata'] as Map<String, dynamic>) : null,
  candidatePairs: json['candidate_pairs'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataCandidatePairs.fromJson(json['candidate_pairs'] as Map<String, dynamic>) : null,
  deviceInfo: json['device_info'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo.fromJson(json['device_info'] as Map<String, dynamic>) : null,
  events: (json['events'] as List<dynamic>?)?.map((e) => GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents.fromJson(e as Map<String, dynamic>)).toList(),
  ipInformation: json['ip_information'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformation.fromJson(json['ip_information'] as Map<String, dynamic>) : null,
  pcMetadata: (json['pc_metadata'] as List<dynamic>?)?.map((e) => GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata.fromJson(e as Map<String, dynamic>)).toList(),
  roomViewType: json['room_view_type'] as String?,
  sdkName: json['sdk_name'] as String?,
  sdkVersion: json['sdk_version'] as String?,
  selectedDeviceUpdates: (json['selected_device_updates'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  speakerDevicesUpdates: (json['speaker_devices_updates'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  videoDevicesUpdates: (json['video_devices_updates'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<Map<String,dynamic>>? audioDevicesUpdates;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata? browserMetadata;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataCandidatePairs? candidatePairs;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo? deviceInfo;

final List<GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents>? events;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformation? ipInformation;

final List<GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata>? pcMetadata;

final String? roomViewType;

final String? sdkName;

final String? sdkVersion;

final List<Map<String,dynamic>>? selectedDeviceUpdates;

final List<Map<String,dynamic>>? speakerDevicesUpdates;

final List<Map<String,dynamic>>? videoDevicesUpdates;

Map<String, dynamic> toJson() { return {
  if (audioDevicesUpdates != null) 'audio_devices_updates': audioDevicesUpdates?.map((e) => e).toList(),
  if (browserMetadata != null) 'browser_metadata': browserMetadata?.toJson(),
  if (candidatePairs != null) 'candidate_pairs': candidatePairs?.toJson(),
  if (deviceInfo != null) 'device_info': deviceInfo?.toJson(),
  if (events != null) 'events': events?.map((e) => e.toJson()).toList(),
  if (ipInformation != null) 'ip_information': ipInformation?.toJson(),
  if (pcMetadata != null) 'pc_metadata': pcMetadata?.map((e) => e.toJson()).toList(),
  'room_view_type': ?roomViewType,
  'sdk_name': ?sdkName,
  'sdk_version': ?sdkVersion,
  if (selectedDeviceUpdates != null) 'selected_device_updates': selectedDeviceUpdates?.map((e) => e).toList(),
  if (speakerDevicesUpdates != null) 'speaker_devices_updates': speakerDevicesUpdates?.map((e) => e).toList(),
  if (videoDevicesUpdates != null) 'video_devices_updates': videoDevicesUpdates?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata copyWith({List<Map<String, dynamic>> Function()? audioDevicesUpdates, GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata Function()? browserMetadata, GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataCandidatePairs Function()? candidatePairs, GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo Function()? deviceInfo, List<GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataEvents> Function()? events, GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataIpInformation Function()? ipInformation, List<GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataPcMetadata> Function()? pcMetadata, String Function()? roomViewType, String Function()? sdkName, String Function()? sdkVersion, List<Map<String, dynamic>> Function()? selectedDeviceUpdates, List<Map<String, dynamic>> Function()? speakerDevicesUpdates, List<Map<String, dynamic>> Function()? videoDevicesUpdates, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata(
  audioDevicesUpdates: audioDevicesUpdates != null ? audioDevicesUpdates() : this.audioDevicesUpdates,
  browserMetadata: browserMetadata != null ? browserMetadata() : this.browserMetadata,
  candidatePairs: candidatePairs != null ? candidatePairs() : this.candidatePairs,
  deviceInfo: deviceInfo != null ? deviceInfo() : this.deviceInfo,
  events: events != null ? events() : this.events,
  ipInformation: ipInformation != null ? ipInformation() : this.ipInformation,
  pcMetadata: pcMetadata != null ? pcMetadata() : this.pcMetadata,
  roomViewType: roomViewType != null ? roomViewType() : this.roomViewType,
  sdkName: sdkName != null ? sdkName() : this.sdkName,
  sdkVersion: sdkVersion != null ? sdkVersion() : this.sdkVersion,
  selectedDeviceUpdates: selectedDeviceUpdates != null ? selectedDeviceUpdates() : this.selectedDeviceUpdates,
  speakerDevicesUpdates: speakerDevicesUpdates != null ? speakerDevicesUpdates() : this.speakerDevicesUpdates,
  videoDevicesUpdates: videoDevicesUpdates != null ? videoDevicesUpdates() : this.videoDevicesUpdates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata &&
          listEquals(audioDevicesUpdates, other.audioDevicesUpdates) &&
          browserMetadata == other.browserMetadata &&
          candidatePairs == other.candidatePairs &&
          deviceInfo == other.deviceInfo &&
          listEquals(events, other.events) &&
          ipInformation == other.ipInformation &&
          listEquals(pcMetadata, other.pcMetadata) &&
          roomViewType == other.roomViewType &&
          sdkName == other.sdkName &&
          sdkVersion == other.sdkVersion &&
          listEquals(selectedDeviceUpdates, other.selectedDeviceUpdates) &&
          listEquals(speakerDevicesUpdates, other.speakerDevicesUpdates) &&
          listEquals(videoDevicesUpdates, other.videoDevicesUpdates); } 
@override int get hashCode { return Object.hash(Object.hashAll(audioDevicesUpdates ?? const []), browserMetadata, candidatePairs, deviceInfo, Object.hashAll(events ?? const []), ipInformation, Object.hashAll(pcMetadata ?? const []), roomViewType, sdkName, sdkVersion, Object.hashAll(selectedDeviceUpdates ?? const []), Object.hashAll(speakerDevicesUpdates ?? const []), Object.hashAll(videoDevicesUpdates ?? const [])); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadata(audioDevicesUpdates: $audioDevicesUpdates, browserMetadata: $browserMetadata, candidatePairs: $candidatePairs, deviceInfo: $deviceInfo, events: $events, ipInformation: $ipInformation, pcMetadata: $pcMetadata, roomViewType: $roomViewType, sdkName: $sdkName, sdkVersion: $sdkVersion, selectedDeviceUpdates: $selectedDeviceUpdates, speakerDevicesUpdates: $speakerDevicesUpdates, videoDevicesUpdates: $videoDevicesUpdates)'; } 
 }
