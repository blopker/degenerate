// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_issuing_transactions_create_unlinked_refund_request_purchase_details_flight_segments.dart';final class PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight {const PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight({this.departureAt, this.passengerName, this.refundable, this.segments, this.travelAgency, });

factory PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight(
  departureAt: json['departure_at'] != null ? (json['departure_at'] as num).toInt() : null,
  passengerName: json['passenger_name'] as String?,
  refundable: json['refundable'] as bool?,
  segments: (json['segments'] as List<dynamic>?)?.map((e) => PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlightSegments.fromJson(e as Map<String, dynamic>)).toList(),
  travelAgency: json['travel_agency'] as String?,
); }

final int? departureAt;

final String? passengerName;

final bool? refundable;

final List<PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlightSegments>? segments;

final String? travelAgency;

Map<String, dynamic> toJson() { return {
  'departure_at': ?departureAt,
  'passenger_name': ?passengerName,
  'refundable': ?refundable,
  if (segments != null) 'segments': segments?.map((e) => e.toJson()).toList(),
  'travel_agency': ?travelAgency,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'departure_at', 'passenger_name', 'refundable', 'segments', 'travel_agency'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight copyWith({int Function()? departureAt, String Function()? passengerName, bool Function()? refundable, List<PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlightSegments> Function()? segments, String Function()? travelAgency, }) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight(
  departureAt: departureAt != null ? departureAt() : this.departureAt,
  passengerName: passengerName != null ? passengerName() : this.passengerName,
  refundable: refundable != null ? refundable() : this.refundable,
  segments: segments != null ? segments() : this.segments,
  travelAgency: travelAgency != null ? travelAgency() : this.travelAgency,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight &&
          departureAt == other.departureAt &&
          passengerName == other.passengerName &&
          refundable == other.refundable &&
          listEquals(segments, other.segments) &&
          travelAgency == other.travelAgency; } 
@override int get hashCode { return Object.hash(departureAt, passengerName, refundable, Object.hashAll(segments ?? const []), travelAgency); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetailsFlight(departureAt: $departureAt, passengerName: $passengerName, refundable: $refundable, segments: $segments, travelAgency: $travelAgency)'; } 
 }
