// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityDomainAuthorization {const EmailSecurityDomainAuthorization({required this.authorized, required this.timestamp, this.statusMessage = const Omittable.absent(), });

factory EmailSecurityDomainAuthorization.fromJson(Map<String, dynamic> json) { return EmailSecurityDomainAuthorization(
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
EmailSecurityDomainAuthorization copyWith({bool? authorized, Omittable<String?>? statusMessage, DateTime? timestamp, }) { return EmailSecurityDomainAuthorization(
  authorized: authorized ?? this.authorized,
  statusMessage: statusMessage ?? this.statusMessage,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDomainAuthorization &&
          authorized == other.authorized &&
          statusMessage == other.statusMessage &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(authorized, statusMessage, timestamp); } 
@override String toString() { return 'EmailSecurityDomainAuthorization(authorized: $authorized, statusMessage: $statusMessage, timestamp: $timestamp)'; } 
 }
