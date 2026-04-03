// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_device_info.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_events.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_ip_information.dart';import 'get_participant_data_from_peer_id_response_data_participant_peer_stats_precall_network_information.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerStats {const GetParticipantDataFromPeerIdResponseDataParticipantPeerStats({this.deviceInfo, this.events, this.ipInformation, this.precallNetworkInformation, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerStats.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStats(
  deviceInfo: json['device_info'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsDeviceInfo.fromJson(json['device_info'] as Map<String, dynamic>) : null,
  events: (json['events'] as List<dynamic>?)?.map((e) => GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEvents.fromJson(e as Map<String, dynamic>)).toList(),
  ipInformation: json['ip_information'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformation.fromJson(json['ip_information'] as Map<String, dynamic>) : null,
  precallNetworkInformation: json['precall_network_information'] != null ? GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation.fromJson(json['precall_network_information'] as Map<String, dynamic>) : null,
); }

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsDeviceInfo? deviceInfo;

final List<GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEvents>? events;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformation? ipInformation;

final GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation? precallNetworkInformation;

Map<String, dynamic> toJson() { return {
  if (deviceInfo != null) 'device_info': deviceInfo?.toJson(),
  if (events != null) 'events': events?.map((e) => e.toJson()).toList(),
  if (ipInformation != null) 'ip_information': ipInformation?.toJson(),
  if (precallNetworkInformation != null) 'precall_network_information': precallNetworkInformation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'device_info', 'events', 'ip_information', 'precall_network_information'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerStats copyWith({GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsDeviceInfo Function()? deviceInfo, List<GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsEvents> Function()? events, GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsIpInformation Function()? ipInformation, GetParticipantDataFromPeerIdResponseDataParticipantPeerStatsPrecallNetworkInformation Function()? precallNetworkInformation, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerStats(
  deviceInfo: deviceInfo != null ? deviceInfo() : this.deviceInfo,
  events: events != null ? events() : this.events,
  ipInformation: ipInformation != null ? ipInformation() : this.ipInformation,
  precallNetworkInformation: precallNetworkInformation != null ? precallNetworkInformation() : this.precallNetworkInformation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerStats &&
          deviceInfo == other.deviceInfo &&
          listEquals(events, other.events) &&
          ipInformation == other.ipInformation &&
          precallNetworkInformation == other.precallNetworkInformation; } 
@override int get hashCode { return Object.hash(deviceInfo, Object.hashAll(events ?? const []), ipInformation, precallNetworkInformation); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerStats(deviceInfo: $deviceInfo, events: $events, ipInformation: $ipInformation, precallNetworkInformation: $precallNetworkInformation)'; } 
 }
