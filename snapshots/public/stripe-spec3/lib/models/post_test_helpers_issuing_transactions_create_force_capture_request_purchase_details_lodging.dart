// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging({this.checkInAt, this.nights, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging(
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
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging copyWith({int Function()? checkInAt, int Function()? nights, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging(
  checkInAt: checkInAt != null ? checkInAt() : this.checkInAt,
  nights: nights != null ? nights() : this.nights,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging &&
          checkInAt == other.checkInAt &&
          nights == other.nights; } 
@override int get hashCode { return Object.hash(checkInAt, nights); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging(checkInAt: $checkInAt, nights: $nights)'; } 
 }
