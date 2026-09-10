// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_comment.dart';import 'dns_records_dnskey_record_request_data.dart';import 'dns_records_name.dart';import 'dns_records_proxied.dart';import 'dns_records_settings.dart';import 'dns_records_ttl.dart';/// Record type.
@immutable final class DnsRecordsDnskeyRecordRequestType {const DnsRecordsDnskeyRecordRequestType._(this.value);

factory DnsRecordsDnskeyRecordRequestType.fromJson(String json) { return switch (json) {
  'DNSKEY' => dnskey,
  _ => DnsRecordsDnskeyRecordRequestType._(json),
}; }

static const DnsRecordsDnskeyRecordRequestType dnskey = DnsRecordsDnskeyRecordRequestType._('DNSKEY');

static const List<DnsRecordsDnskeyRecordRequestType> values = [dnskey];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnskeyRecordRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsRecordsDnskeyRecordRequestType($value)'; } 
 }
@immutable final class DnsRecordsDnskeyRecordRequest {const DnsRecordsDnskeyRecordRequest({this.comment, this.name, this.proxied, this.settings, this.tags, this.ttl, this.data, this.type, });

factory DnsRecordsDnskeyRecordRequest.fromJson(Map<String, dynamic> json) { return DnsRecordsDnskeyRecordRequest(
  comment: json['comment'] != null ? DnsRecordsComment.fromJson(json['comment'] as String) : null,
  name: json['name'] != null ? DnsRecordsName.fromJson(json['name'] as String) : null,
  proxied: json['proxied'] != null ? DnsRecordsProxied.fromJson(json['proxied'] as bool) : null,
  settings: json['settings'] != null ? DnsRecordsSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ttl: json['ttl'] != null ? DnsRecordsTtl.fromJson(json['ttl']) : null,
  data: json['data'] != null ? DnsRecordsDnskeyRecordRequestData.fromJson(json['data'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? DnsRecordsDnskeyRecordRequestType.fromJson(json['type'] as String) : null,
); }

/// Comments or notes about the DNS record. This field has no effect on DNS responses.
final DnsRecordsComment? comment;

/// Complete DNS record name, including the zone name, in Punycode.
final DnsRecordsName? name;

/// Whether the record is receiving the performance and security benefits of Cloudflare.
final DnsRecordsProxied? proxied;

final DnsRecordsSettings? settings;

/// Custom tags for the DNS record. This field has no effect on DNS responses.
final List<String>? tags;

final DnsRecordsTtl? ttl;

/// Components of a DNSKEY record.
final DnsRecordsDnskeyRecordRequestData? data;

/// Record type.
final DnsRecordsDnskeyRecordRequestType? type;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (proxied != null) 'proxied': proxied?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
  'tags': ?tags,
  if (ttl != null) 'ttl': ttl?.toJson(),
  if (data != null) 'data': data?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'name', 'proxied', 'settings', 'tags', 'ttl', 'data', 'type'}.contains(key)); } 
DnsRecordsDnskeyRecordRequest copyWith({DnsRecordsComment? Function()? comment, DnsRecordsName? Function()? name, DnsRecordsProxied? Function()? proxied, DnsRecordsSettings? Function()? settings, List<String>? Function()? tags, DnsRecordsTtl? Function()? ttl, DnsRecordsDnskeyRecordRequestData? Function()? data, DnsRecordsDnskeyRecordRequestType? Function()? type, }) { return DnsRecordsDnskeyRecordRequest(
  comment: comment != null ? comment() : this.comment,
  name: name != null ? name() : this.name,
  proxied: proxied != null ? proxied() : this.proxied,
  settings: settings != null ? settings() : this.settings,
  tags: tags != null ? tags() : this.tags,
  ttl: ttl != null ? ttl() : this.ttl,
  data: data != null ? data() : this.data,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnskeyRecordRequest &&
          comment == other.comment &&
          name == other.name &&
          proxied == other.proxied &&
          settings == other.settings &&
          listEquals(tags, other.tags) &&
          ttl == other.ttl &&
          data == other.data &&
          type == other.type; } 
@override int get hashCode { return Object.hash(comment, name, proxied, settings, Object.hashAll(tags ?? const []), ttl, data, type); } 
@override String toString() { return 'DnsRecordsDnskeyRecordRequest(comment: $comment, name: $name, proxied: $proxied, settings: $settings, tags: $tags, ttl: $ttl, data: $data, type: $type)'; } 
 }
