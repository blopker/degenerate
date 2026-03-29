// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_access_seat.dart';import 'access_gateway_seat.dart';import 'access_seat_uid.dart';import 'access_timestamp.dart';final class AccessSeats {const AccessSeats({this.accessSeat, this.createdAt, this.gatewaySeat, this.seatUid, this.updatedAt, });

factory AccessSeats.fromJson(Map<String, dynamic> json) { return AccessSeats(
  accessSeat: json['access_seat'] != null ? AccessAccessSeat.fromJson(json['access_seat'] as bool) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  gatewaySeat: json['gateway_seat'] != null ? AccessGatewaySeat.fromJson(json['gateway_seat'] as bool) : null,
  seatUid: json['seat_uid'] != null ? AccessSeatUid.fromJson(json['seat_uid'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

/// True if the seat is part of Access.
final AccessAccessSeat? accessSeat;

final AccessTimestamp? createdAt;

/// True if the seat is part of Gateway.
final AccessGatewaySeat? gatewaySeat;

/// The unique API identifier for the Zero Trust seat.
final AccessSeatUid? seatUid;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (accessSeat != null) 'access_seat': accessSeat?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (gatewaySeat != null) 'gateway_seat': gatewaySeat?.toJson(),
  if (seatUid != null) 'seat_uid': seatUid?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessSeats copyWith({AccessAccessSeat Function()? accessSeat, AccessTimestamp Function()? createdAt, AccessGatewaySeat Function()? gatewaySeat, AccessSeatUid Function()? seatUid, AccessTimestamp Function()? updatedAt, }) { return AccessSeats(
  accessSeat: accessSeat != null ? accessSeat() : this.accessSeat,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  gatewaySeat: gatewaySeat != null ? gatewaySeat() : this.gatewaySeat,
  seatUid: seatUid != null ? seatUid() : this.seatUid,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSeats &&
          accessSeat == other.accessSeat &&
          createdAt == other.createdAt &&
          gatewaySeat == other.gatewaySeat &&
          seatUid == other.seatUid &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(accessSeat, createdAt, gatewaySeat, seatUid, updatedAt); } 
@override String toString() { return 'AccessSeats(accessSeat: $accessSeat, createdAt: $createdAt, gatewaySeat: $gatewaySeat, seatUid: $seatUid, updatedAt: $updatedAt)'; } 
 }
