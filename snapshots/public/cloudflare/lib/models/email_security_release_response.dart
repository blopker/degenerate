// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_postfix_id.dart';@immutable final class EmailSecurityReleaseResponse {const EmailSecurityReleaseResponse({required this.id, required this.postfixId, this.delivered = const Omittable.absent(), this.failed = const Omittable.absent(), this.undelivered = const Omittable.absent(), });

factory EmailSecurityReleaseResponse.fromJson(Map<String, dynamic> json) { return EmailSecurityReleaseResponse(
  delivered: json.containsKey('delivered') ? Omittable((json['delivered'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  failed: json.containsKey('failed') ? Omittable((json['failed'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  undelivered: json.containsKey('undelivered') ? Omittable((json['undelivered'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  id: json['id'] as String,
  postfixId: EmailSecurityPostfixId.fromJson(json['postfix_id'] as String),
); }

final Omittable<List<String>?> delivered;

final Omittable<List<String>?> failed;

final Omittable<List<String>?> undelivered;

final String id;

/// The identifier of the message.
final EmailSecurityPostfixId postfixId;

Map<String, dynamic> toJson() { return {
  if (delivered.isPresent) 'delivered': delivered.value,
  if (failed.isPresent) 'failed': failed.value,
  if (undelivered.isPresent) 'undelivered': undelivered.value,
  'id': id,
  'postfix_id': postfixId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('postfix_id'); } 
EmailSecurityReleaseResponse copyWith({Omittable<List<String>?>? delivered, Omittable<List<String>?>? failed, Omittable<List<String>?>? undelivered, String? id, EmailSecurityPostfixId? postfixId, }) { return EmailSecurityReleaseResponse(
  delivered: delivered ?? this.delivered,
  failed: failed ?? this.failed,
  undelivered: undelivered ?? this.undelivered,
  id: id ?? this.id,
  postfixId: postfixId ?? this.postfixId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityReleaseResponse &&
          delivered.isPresent == other.delivered.isPresent &&
          listEquals(delivered.value, other.delivered.value) &&
          failed.isPresent == other.failed.isPresent &&
          listEquals(failed.value, other.failed.value) &&
          undelivered.isPresent == other.undelivered.isPresent &&
          listEquals(undelivered.value, other.undelivered.value) &&
          id == other.id &&
          postfixId == other.postfixId; } 
@override int get hashCode { return Object.hash(Object.hashAll(delivered.value ?? const []), Object.hashAll(failed.value ?? const []), Object.hashAll(undelivered.value ?? const []), id, postfixId); } 
@override String toString() { return 'EmailSecurityReleaseResponse(delivered: $delivered, failed: $failed, undelivered: $undelivered, id: $id, postfixId: $postfixId)'; } 
 }
