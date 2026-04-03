// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsForAZoneImportDnsRecordsRequest {const DnsRecordsForAZoneImportDnsRecordsRequest({required this.file, this.proxied = 'false', });

factory DnsRecordsForAZoneImportDnsRecordsRequest.fromJson(Map<String, dynamic> json) { return DnsRecordsForAZoneImportDnsRecordsRequest(
  file: json['file'] as String,
  proxied: json.containsKey('proxied') ? json['proxied'] as String : 'false',
); }

/// BIND config to import.
/// 
/// **Tip:** When using cURL, a file can be uploaded using `--form 'file=@bind_config.txt'`.
/// 
final String file;

/// Whether or not proxiable records should receive the performance and security benefits of Cloudflare.
/// 
/// The value should be either `true` or `false`.
final String proxied;

Map<String, dynamic> toJson() { return {
  'file': file,
  'proxied': proxied,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file') && json['file'] is String; } 
DnsRecordsForAZoneImportDnsRecordsRequest copyWith({String? file, String Function()? proxied, }) { return DnsRecordsForAZoneImportDnsRecordsRequest(
  file: file ?? this.file,
  proxied: proxied != null ? proxied() : this.proxied,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsForAZoneImportDnsRecordsRequest &&
          file == other.file &&
          proxied == other.proxied; } 
@override int get hashCode { return Object.hash(file, proxied); } 
@override String toString() { return 'DnsRecordsForAZoneImportDnsRecordsRequest(file: $file, proxied: $proxied)'; } 
 }
