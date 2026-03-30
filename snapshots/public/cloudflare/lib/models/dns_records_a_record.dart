// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_comment.dart';import 'dns_records_name.dart';import 'dns_records_proxied.dart';import 'dns_records_settings.dart';import 'dns_records_ttl.dart';/// Record type.
final class DnsRecordsARecordType {const DnsRecordsARecordType._(this.value);

factory DnsRecordsARecordType.fromJson(String json) { return switch (json) {
  'A' => a,
  _ => DnsRecordsARecordType._(json),
}; }

static const DnsRecordsARecordType a = DnsRecordsARecordType._('A');

static const List<DnsRecordsARecordType> values = [a];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsARecordType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DnsRecordsARecordType($value)'; } 
 }
final class DnsRecordsARecord {const DnsRecordsARecord({this.comment, this.name, this.proxied, this.settings, this.tags, this.ttl, this.content, this.type, });

factory DnsRecordsARecord.fromJson(Map<String, dynamic> json) { return DnsRecordsARecord(
  comment: json['comment'] != null ? DnsRecordsComment.fromJson(json['comment'] as String) : null,
  name: json['name'] != null ? DnsRecordsName.fromJson(json['name'] as String) : null,
  proxied: json['proxied'] != null ? DnsRecordsProxied.fromJson(json['proxied'] as bool) : null,
  settings: json['settings'] != null ? DnsRecordsSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ttl: json['ttl'] != null ? OneOf2.parse(json['ttl'], fromA: (v) => (v as num).toDouble(), fromB: (v) => DnsRecordsTtlVariant2.fromJson((v as num).toDouble()),) : null,
  content: json['content'] as String?,
  type: json['type'] != null ? DnsRecordsARecordType.fromJson(json['type'] as String) : null,
); }

final DnsRecordsComment? comment;

final DnsRecordsName? name;

final DnsRecordsProxied? proxied;

final DnsRecordsSettings? settings;

final List<String>? tags;

final DnsRecordsTtl? ttl;

/// A valid IPv4 address.
final String? content;

/// Record type.
final DnsRecordsARecordType? type;

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
DnsRecordsARecord copyWith({DnsRecordsComment Function()? comment, DnsRecordsName Function()? name, DnsRecordsProxied Function()? proxied, DnsRecordsSettings Function()? settings, List<String> Function()? tags, DnsRecordsTtl Function()? ttl, String Function()? content, DnsRecordsARecordType Function()? type, }) { return DnsRecordsARecord(
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
      other is DnsRecordsARecord &&
          comment == other.comment &&
          name == other.name &&
          proxied == other.proxied &&
          settings == other.settings &&
          listEquals(tags, other.tags) &&
          ttl == other.ttl &&
          content == other.content &&
          type == other.type; } 
@override int get hashCode { return Object.hash(comment, name, proxied, settings, Object.hashAll(tags ?? const []), ttl, content, type); } 
@override String toString() { return 'DnsRecordsARecord(comment: $comment, name: $name, proxied: $proxied, settings: $settings, tags: $tags, ttl: $ttl, content: $content, type: $type)'; } 
 }
