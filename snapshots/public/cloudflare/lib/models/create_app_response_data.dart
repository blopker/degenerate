// GENERATED CODE - DO NOT MODIFY BY HAND

import 'create_app_response_data_app.dart';final class CreateAppResponseData {const CreateAppResponseData({this.app});

factory CreateAppResponseData.fromJson(Map<String, dynamic> json) { return CreateAppResponseData(
  app: json['app'] != null ? CreateAppResponseDataApp.fromJson(json['app'] as Map<String, dynamic>) : null,
); }

final CreateAppResponseDataApp? app;

Map<String, dynamic> toJson() { return {
  if (app != null) 'app': app?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CreateAppResponseData copyWith({CreateAppResponseDataApp Function()? app}) { return CreateAppResponseData(
  app: app != null ? app() : this.app,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateAppResponseData &&
          app == other.app; } 
@override int get hashCode { return app.hashCode; } 
@override String toString() { return 'CreateAppResponseData(app: $app)'; } 
 }
