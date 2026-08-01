// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetDomainResponseResultAuthorization {const EmailSecurityGetDomainResponseResultAuthorization({required this.authorized, required this.timestamp, this.statusMessage = const Omittable.absent(), });

factory EmailSecurityGetDomainResponseResultAuthorization.fromJson(Map<String, dynamic> json) { return EmailSecurityGetDomainResponseResultAuthorization(
  authorized: json['authorized'] as bool,
  statusMessage: json.containsKey('status_message') ? Omittable(json['status_message'] as String?) : const Omittable.absent(),
  timestamp: DateTime.parse(json['timestamp'] as String),
); }

final bool authorized;

final Omittable<String?> statusMessage;

final DateTime timestamp;

Map<String, dynamic> toJson() { return {
  'authorized': authorized,
  if (statusMessage.isPresent) 'status_message': statusMessage.value,
  'timestamp': timestamp.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authorized') && json['authorized'] is bool &&
      json.containsKey('timestamp') && json['timestamp'] is String; } 
EmailSecurityGetDomainResponseResultAuthorization copyWith({bool? authorized, Omittable<String?>? statusMessage, DateTime? timestamp, }) { return EmailSecurityGetDomainResponseResultAuthorization(
  authorized: authorized ?? this.authorized,
  statusMessage: statusMessage ?? this.statusMessage,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetDomainResponseResultAuthorization &&
          authorized == other.authorized &&
          statusMessage == other.statusMessage &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(authorized, statusMessage, timestamp); } 
@override String toString() { return 'EmailSecurityGetDomainResponseResultAuthorization(authorized: $authorized, statusMessage: $statusMessage, timestamp: $timestamp)'; } 
 }
