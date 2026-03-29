// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2SlurperConnectivityResponseConnectivityStatus {const R2SlurperConnectivityResponseConnectivityStatus._(this.value);

factory R2SlurperConnectivityResponseConnectivityStatus.fromJson(String json) { return switch (json) {
  'success' => success,
  'error' => error,
  _ => R2SlurperConnectivityResponseConnectivityStatus._(json),
}; }

static const R2SlurperConnectivityResponseConnectivityStatus success = R2SlurperConnectivityResponseConnectivityStatus._('success');

static const R2SlurperConnectivityResponseConnectivityStatus error = R2SlurperConnectivityResponseConnectivityStatus._('error');

static const List<R2SlurperConnectivityResponseConnectivityStatus> values = [success, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SlurperConnectivityResponseConnectivityStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SlurperConnectivityResponseConnectivityStatus($value)'; } 
 }
final class R2SlurperConnectivityResponse {const R2SlurperConnectivityResponse({this.connectivityStatus});

factory R2SlurperConnectivityResponse.fromJson(Map<String, dynamic> json) { return R2SlurperConnectivityResponse(
  connectivityStatus: json['connectivityStatus'] != null ? R2SlurperConnectivityResponseConnectivityStatus.fromJson(json['connectivityStatus'] as String) : null,
); }

final R2SlurperConnectivityResponseConnectivityStatus? connectivityStatus;

Map<String, dynamic> toJson() { return {
  if (connectivityStatus != null) 'connectivityStatus': connectivityStatus?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2SlurperConnectivityResponse copyWith({R2SlurperConnectivityResponseConnectivityStatus Function()? connectivityStatus}) { return R2SlurperConnectivityResponse(
  connectivityStatus: connectivityStatus != null ? connectivityStatus() : this.connectivityStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperConnectivityResponse &&
          connectivityStatus == other.connectivityStatus; } 
@override int get hashCode { return connectivityStatus.hashCode; } 
@override String toString() { return 'R2SlurperConnectivityResponse(connectivityStatus: $connectivityStatus)'; } 
 }
