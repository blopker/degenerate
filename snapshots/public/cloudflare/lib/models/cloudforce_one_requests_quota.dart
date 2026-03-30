// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_time.dart';final class CloudforceOneRequestsQuota {const CloudforceOneRequestsQuota({this.anniversaryDate, this.quarterAnniversaryDate, this.quota, this.remaining, });

factory CloudforceOneRequestsQuota.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsQuota(
  anniversaryDate: json['anniversary_date'] != null ? CloudforceOneRequestsTime.fromJson(json['anniversary_date'] as String) : null,
  quarterAnniversaryDate: json['quarter_anniversary_date'] != null ? CloudforceOneRequestsTime.fromJson(json['quarter_anniversary_date'] as String) : null,
  quota: json['quota'] != null ? (json['quota'] as num).toInt() : null,
  remaining: json['remaining'] != null ? (json['remaining'] as num).toInt() : null,
); }

/// Anniversary date is when annual quota limit is refreshed.
final CloudforceOneRequestsTime? anniversaryDate;

/// Quarter anniversary date is when quota limit is refreshed each quarter.
final CloudforceOneRequestsTime? quarterAnniversaryDate;

/// Tokens for the quarter.
final int? quota;

/// Tokens remaining for the quarter.
final int? remaining;

Map<String, dynamic> toJson() { return {
  if (anniversaryDate != null) 'anniversary_date': anniversaryDate?.toJson(),
  if (quarterAnniversaryDate != null) 'quarter_anniversary_date': quarterAnniversaryDate?.toJson(),
  'quota': ?quota,
  'remaining': ?remaining,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'anniversary_date', 'quarter_anniversary_date', 'quota', 'remaining'}.contains(key)); } 
CloudforceOneRequestsQuota copyWith({CloudforceOneRequestsTime Function()? anniversaryDate, CloudforceOneRequestsTime Function()? quarterAnniversaryDate, int Function()? quota, int Function()? remaining, }) { return CloudforceOneRequestsQuota(
  anniversaryDate: anniversaryDate != null ? anniversaryDate() : this.anniversaryDate,
  quarterAnniversaryDate: quarterAnniversaryDate != null ? quarterAnniversaryDate() : this.quarterAnniversaryDate,
  quota: quota != null ? quota() : this.quota,
  remaining: remaining != null ? remaining() : this.remaining,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsQuota &&
          anniversaryDate == other.anniversaryDate &&
          quarterAnniversaryDate == other.quarterAnniversaryDate &&
          quota == other.quota &&
          remaining == other.remaining; } 
@override int get hashCode { return Object.hash(anniversaryDate, quarterAnniversaryDate, quota, remaining); } 
@override String toString() { return 'CloudforceOneRequestsQuota(anniversaryDate: $anniversaryDate, quarterAnniversaryDate: $quarterAnniversaryDate, quota: $quota, remaining: $remaining)'; } 
 }
