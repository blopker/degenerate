// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'copilot_seat_details.dart';final class CopilotListCopilotSeatsResponse {const CopilotListCopilotSeatsResponse({this.totalSeats, this.seats, });

factory CopilotListCopilotSeatsResponse.fromJson(Map<String, dynamic> json) { return CopilotListCopilotSeatsResponse(
  totalSeats: json['total_seats'] != null ? (json['total_seats'] as num).toInt() : null,
  seats: (json['seats'] as List<dynamic>?)?.map((e) => CopilotSeatDetails.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Total number of Copilot seats for the organization currently being billed.
final int? totalSeats;

final List<CopilotSeatDetails>? seats;

Map<String, dynamic> toJson() { return {
  'total_seats': ?totalSeats,
  if (seats != null) 'seats': seats?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CopilotListCopilotSeatsResponse copyWith({int Function()? totalSeats, List<CopilotSeatDetails> Function()? seats, }) { return CopilotListCopilotSeatsResponse(
  totalSeats: totalSeats != null ? totalSeats() : this.totalSeats,
  seats: seats != null ? seats() : this.seats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotListCopilotSeatsResponse &&
          totalSeats == other.totalSeats &&
          listEquals(seats, other.seats); } 
@override int get hashCode { return Object.hash(totalSeats, Object.hashAll(seats ?? const [])); } 
@override String toString() { return 'CopilotListCopilotSeatsResponse(totalSeats: $totalSeats, seats: $seats)'; } 
 }
