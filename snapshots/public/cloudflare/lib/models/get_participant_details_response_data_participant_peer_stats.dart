// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_details_response_data_participant_peer_stats_device_info.dart';import 'get_participant_details_response_data_participant_peer_stats_events.dart';import 'get_participant_details_response_data_participant_peer_stats_ip_information.dart';import 'get_participant_details_response_data_participant_peer_stats_precall_network_information.dart';@immutable final class GetParticipantDetailsResponseDataParticipantPeerStats {const GetParticipantDetailsResponseDataParticipantPeerStats({this.config, this.deviceInfo, this.events, this.ipInformation, this.precallNetworkInformation, this.status, });

factory GetParticipantDetailsResponseDataParticipantPeerStats.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponseDataParticipantPeerStats(
  config: json['config'] as String?,
  deviceInfo: json['device_info'] != null ? GetParticipantDetailsResponseDataParticipantPeerStatsDeviceInfo.fromJson(json['device_info'] as Map<String, dynamic>) : null,
  events: (json['events'] as List<dynamic>?)?.map((e) => GetParticipantDetailsResponseDataParticipantPeerStatsEvents.fromJson(e as Map<String, dynamic>)).toList(),
  ipInformation: json['ip_information'] != null ? GetParticipantDetailsResponseDataParticipantPeerStatsIpInformation.fromJson(json['ip_information'] as Map<String, dynamic>) : null,
  precallNetworkInformation: json['precall_network_information'] != null ? GetParticipantDetailsResponseDataParticipantPeerStatsPrecallNetworkInformation.fromJson(json['precall_network_information'] as Map<String, dynamic>) : null,
  status: json['status'] as String?,
); }

final String? config;

final GetParticipantDetailsResponseDataParticipantPeerStatsDeviceInfo? deviceInfo;

final List<GetParticipantDetailsResponseDataParticipantPeerStatsEvents>? events;

final GetParticipantDetailsResponseDataParticipantPeerStatsIpInformation? ipInformation;

final GetParticipantDetailsResponseDataParticipantPeerStatsPrecallNetworkInformation? precallNetworkInformation;

final String? status;

Map<String, dynamic> toJson() { return {
  'config': ?config,
  if (deviceInfo != null) 'device_info': deviceInfo?.toJson(),
  if (events != null) 'events': events?.map((e) => e.toJson()).toList(),
  if (ipInformation != null) 'ip_information': ipInformation?.toJson(),
  if (precallNetworkInformation != null) 'precall_network_information': precallNetworkInformation?.toJson(),
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config', 'device_info', 'events', 'ip_information', 'precall_network_information', 'status'}.contains(key)); } 
GetParticipantDetailsResponseDataParticipantPeerStats copyWith({String Function()? config, GetParticipantDetailsResponseDataParticipantPeerStatsDeviceInfo Function()? deviceInfo, List<GetParticipantDetailsResponseDataParticipantPeerStatsEvents> Function()? events, GetParticipantDetailsResponseDataParticipantPeerStatsIpInformation Function()? ipInformation, GetParticipantDetailsResponseDataParticipantPeerStatsPrecallNetworkInformation Function()? precallNetworkInformation, String Function()? status, }) { return GetParticipantDetailsResponseDataParticipantPeerStats(
  config: config != null ? config() : this.config,
  deviceInfo: deviceInfo != null ? deviceInfo() : this.deviceInfo,
  events: events != null ? events() : this.events,
  ipInformation: ipInformation != null ? ipInformation() : this.ipInformation,
  precallNetworkInformation: precallNetworkInformation != null ? precallNetworkInformation() : this.precallNetworkInformation,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponseDataParticipantPeerStats &&
          config == other.config &&
          deviceInfo == other.deviceInfo &&
          listEquals(events, other.events) &&
          ipInformation == other.ipInformation &&
          precallNetworkInformation == other.precallNetworkInformation &&
          status == other.status; } 
@override int get hashCode { return Object.hash(config, deviceInfo, Object.hashAll(events ?? const []), ipInformation, precallNetworkInformation, status); } 
@override String toString() { return 'GetParticipantDetailsResponseDataParticipantPeerStats(config: $config, deviceInfo: $deviceInfo, events: $events, ipInformation: $ipInformation, precallNetworkInformation: $precallNetworkInformation, status: $status)'; } 
 }
