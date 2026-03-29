// GENERATED CODE - DO NOT MODIFY BY HAND

/// The total number of seats set to "pending cancellation" for the specified users.
final class CopilotCancelCopilotSeatAssignmentForUsersResponse {const CopilotCancelCopilotSeatAssignmentForUsersResponse({required this.seatsCancelled});

factory CopilotCancelCopilotSeatAssignmentForUsersResponse.fromJson(Map<String, dynamic> json) { return CopilotCancelCopilotSeatAssignmentForUsersResponse(
  seatsCancelled: (json['seats_cancelled'] as num).toInt(),
); }

final int seatsCancelled;

Map<String, dynamic> toJson() { return {
  'seats_cancelled': seatsCancelled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('seats_cancelled') && json['seats_cancelled'] is num; } 
CopilotCancelCopilotSeatAssignmentForUsersResponse copyWith({int? seatsCancelled}) { return CopilotCancelCopilotSeatAssignmentForUsersResponse(
  seatsCancelled: seatsCancelled ?? this.seatsCancelled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotCancelCopilotSeatAssignmentForUsersResponse &&
          seatsCancelled == other.seatsCancelled; } 
@override int get hashCode { return seatsCancelled.hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersResponse(seatsCancelled: $seatsCancelled)'; } 
 }
