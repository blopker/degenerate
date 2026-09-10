// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_disposition_label.dart';@immutable final class EmailSecurityAttachment {const EmailSecurityAttachment({required this.size, this.contentType = const Omittable.absent(), this.detection = const Omittable.absent(), this.encrypted = const Omittable.absent(), this.name = const Omittable.absent(), });

factory EmailSecurityAttachment.fromJson(Map<String, dynamic> json) { return EmailSecurityAttachment(
  contentType: json.containsKey('content_type') ? Omittable(json['content_type'] as String?) : const Omittable.absent(),
  detection: json.containsKey('detection') ? Omittable(json['detection'] != null ? EmailSecurityDispositionLabel.fromJson(json['detection'] as String) : null) : const Omittable.absent(),
  encrypted: json.containsKey('encrypted') ? Omittable(json['encrypted'] as bool?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  size: (json['size'] as num).toInt(),
); }

final Omittable<String?> contentType;

final Omittable<EmailSecurityDispositionLabel?> detection;

final Omittable<bool?> encrypted;

final Omittable<String?> name;

final int size;

Map<String, dynamic> toJson() { return {
  if (contentType.isPresent) 'content_type': contentType.value,
  if (detection.isPresent) 'detection': detection.value?.toJson(),
  if (encrypted.isPresent) 'encrypted': encrypted.value,
  if (name.isPresent) 'name': name.value,
  'size': size,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('size') && json['size'] is num; } 
EmailSecurityAttachment copyWith({Omittable<String?>? contentType, Omittable<EmailSecurityDispositionLabel?>? detection, Omittable<bool?>? encrypted, Omittable<String?>? name, int? size, }) { return EmailSecurityAttachment(
  contentType: contentType ?? this.contentType,
  detection: detection ?? this.detection,
  encrypted: encrypted ?? this.encrypted,
  name: name ?? this.name,
  size: size ?? this.size,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityAttachment &&
          contentType == other.contentType &&
          detection == other.detection &&
          encrypted == other.encrypted &&
          name == other.name &&
          size == other.size; } 
@override int get hashCode { return Object.hash(contentType, detection, encrypted, name, size); } 
@override String toString() { return 'EmailSecurityAttachment(contentType: $contentType, detection: $detection, encrypted: $encrypted, name: $name, size: $size)'; } 
 }
