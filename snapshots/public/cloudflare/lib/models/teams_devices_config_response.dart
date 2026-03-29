// GENERATED CODE - DO NOT MODIFY BY HAND

import 'teams_devices_workspace_one_config_response.dart';/// A value that is one of: `TeamsDevicesWorkspaceOneConfigResponse`.
sealed class TeamsDevicesConfigResponse {const TeamsDevicesConfigResponse();

factory TeamsDevicesConfigResponse.fromJson(Map<String, dynamic> json) {   if (TeamsDevicesWorkspaceOneConfigResponse.canParse(json)) {
    return TeamsDevicesConfigResponseTeamsDevicesWorkspaceOneConfigResponse(TeamsDevicesWorkspaceOneConfigResponse.fromJson(json));
  }
  return TeamsDevicesConfigResponse$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class TeamsDevicesConfigResponseTeamsDevicesWorkspaceOneConfigResponse extends TeamsDevicesConfigResponse {const TeamsDevicesConfigResponseTeamsDevicesWorkspaceOneConfigResponse(this._value);

final TeamsDevicesWorkspaceOneConfigResponse _value;

@override TeamsDevicesWorkspaceOneConfigResponse get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesConfigResponseTeamsDevicesWorkspaceOneConfigResponse && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TeamsDevicesConfigResponse.teamsDevicesWorkspaceOneConfigResponse($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class TeamsDevicesConfigResponse$Unknown extends TeamsDevicesConfigResponse {const TeamsDevicesConfigResponse$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesConfigResponse$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TeamsDevicesConfigResponse.unknown($_value)'; } 
 }
