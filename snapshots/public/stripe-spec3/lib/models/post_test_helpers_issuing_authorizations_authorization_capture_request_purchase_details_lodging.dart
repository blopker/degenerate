// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging({this.checkInAt, this.nights, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging(
  checkInAt: json['check_in_at'] != null ? (json['check_in_at'] as num).toInt() : null,
  nights: json['nights'] != null ? (json['nights'] as num).toInt() : null,
); }

final int? checkInAt;

final int? nights;

Map<String, dynamic> toJson() { return {
  'check_in_at': ?checkInAt,
  'nights': ?nights,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'check_in_at', 'nights'}.contains(key)); } 
PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging copyWith({int Function()? checkInAt, int Function()? nights, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging(
  checkInAt: checkInAt != null ? checkInAt() : this.checkInAt,
  nights: nights != null ? nights() : this.nights,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging &&
          checkInAt == other.checkInAt &&
          nights == other.nights; } 
@override int get hashCode { return Object.hash(checkInAt, nights); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsLodging(checkInAt: $checkInAt, nights: $nights)'; } 
 }
