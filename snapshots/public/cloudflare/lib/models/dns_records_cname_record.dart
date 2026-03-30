// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_cname_record_settings.dart';import 'dns_records_comment.dart';import 'dns_records_name.dart';import 'dns_records_proxied.dart';import 'dns_records_ttl.dart';/// Record type.
final class DnsRecordsCnameRecordType {const DnsRecordsCnameRecordType._(this.value);

factory DnsRecordsCnameRecordType.fromJson(String json) { return switch (json) {
  'CNAME' => cname,
  _ => DnsRecordsCnameRecordType._(json),
}; }

static const DnsRecordsCnameRecordType cname = DnsRecordsCnameRecordType._('CNAME');

static const List<DnsRecordsCnameRecordType> values = [cname];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsCnameRecordType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsRecordsCnameRecordType($value)'; } 
 }
final class DnsRecordsCnameRecord {const DnsRecordsCnameRecord({this.comment, this.name, this.proxied, this.settings, this.tags, this.ttl, this.content, this.type, });

factory DnsRecordsCnameRecord.fromJson(Map<String, dynamic> json) { return DnsRecordsCnameRecord(
  comment: json['comment'] != null ? DnsRecordsComment.fromJson(json['comment'] as String) : null,
  name: json['name'] != null ? DnsRecordsName.fromJson(json['name'] as String) : null,
  proxied: json['proxied'] != null ? DnsRecordsProxied.fromJson(json['proxied'] as bool) : null,
  settings: json['settings'] != null ? DnsRecordsCnameRecordSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ttl: json['ttl'] != null ? OneOf2.parse(json['ttl'], fromA: (v) => (v as num).toDouble(), fromB: (v) => DnsRecordsTtlVariant2.fromJson((v as num).toDouble()),) : null,
  content: json['content'] as String?,
  type: json['type'] != null ? DnsRecordsCnameRecordType.fromJson(json['type'] as String) : null,
); }

final DnsRecordsComment? comment;

final DnsRecordsName? name;

final DnsRecordsProxied? proxied;

final DnsRecordsCnameRecordSettings? settings;

final List<String>? tags;

final DnsRecordsTtl? ttl;

/// A valid hostname. Must not match the record's name.
final String? content;

/// Record type.
final DnsRecordsCnameRecordType? type;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (proxied != null) 'proxied': proxied?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
  'tags': ?tags,
  if (ttl != null) 'ttl': ttl?.toJson(),
  'content': ?content,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'comment', 'name', 'proxied', 'settings', 'tags', 'ttl', 'content', 'type'}.contains(key)); } 
DnsRecordsCnameRecord copyWith({DnsRecordsComment Function()? comment, DnsRecordsName Function()? name, DnsRecordsProxied Function()? proxied, DnsRecordsCnameRecordSettings Function()? settings, List<String> Function()? tags, DnsRecordsTtl Function()? ttl, String Function()? content, DnsRecordsCnameRecordType Function()? type, }) { return DnsRecordsCnameRecord(
  comment: comment != null ? comment() : this.comment,
  name: name != null ? name() : this.name,
  proxied: proxied != null ? proxied() : this.proxied,
  settings: settings != null ? settings() : this.settings,
  tags: tags != null ? tags() : this.tags,
  ttl: ttl != null ? ttl() : this.ttl,
  content: content != null ? content() : this.content,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsCnameRecord &&
          comment == other.comment &&
          name == other.name &&
          proxied == other.proxied &&
          settings == other.settings &&
          listEquals(tags, other.tags) &&
          ttl == other.ttl &&
          content == other.content &&
          type == other.type; } 
@override int get hashCode { return Object.hash(comment, name, proxied, settings, Object.hashAll(tags ?? const []), ttl, content, type); } 
@override String toString() { return 'DnsRecordsCnameRecord(comment: $comment, name: $name, proxied: $proxied, settings: $settings, tags: $tags, ttl: $ttl, content: $content, type: $type)'; } 
 }
