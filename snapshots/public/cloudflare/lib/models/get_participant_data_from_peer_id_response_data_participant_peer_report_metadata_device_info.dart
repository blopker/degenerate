// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo({this.cpus, this.isMobile, this.os, this.osVersion, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo(
  cpus: json['cpus'] != null ? (json['cpus'] as num).toInt() : null,
  isMobile: json['is_mobile'] as bool?,
  os: json['os'] as String?,
  osVersion: json['os_version'] as String?,
); }

final int? cpus;

final bool? isMobile;

final String? os;

final String? osVersion;

Map<String, dynamic> toJson() { return {
  'cpus': ?cpus,
  'is_mobile': ?isMobile,
  'os': ?os,
  'os_version': ?osVersion,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpus', 'is_mobile', 'os', 'os_version'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo copyWith({int Function()? cpus, bool Function()? isMobile, String Function()? os, String Function()? osVersion, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo(
  cpus: cpus != null ? cpus() : this.cpus,
  isMobile: isMobile != null ? isMobile() : this.isMobile,
  os: os != null ? os() : this.os,
  osVersion: osVersion != null ? osVersion() : this.osVersion,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo &&
          cpus == other.cpus &&
          isMobile == other.isMobile &&
          os == other.os &&
          osVersion == other.osVersion; } 
@override int get hashCode { return Object.hash(cpus, isMobile, os, osVersion); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataDeviceInfo(cpus: $cpus, isMobile: $isMobile, os: $os, osVersion: $osVersion)'; } 
 }
