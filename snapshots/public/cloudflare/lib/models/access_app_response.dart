// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_basic_app_response_props.dart';final class AccessAppResponse {const AccessAppResponse({this.accessBasicAppResponseProps});

factory AccessAppResponse.fromJson(Map<String, dynamic> json) { return AccessAppResponse(
  accessBasicAppResponseProps: AccessBasicAppResponseProps.canParse(json) ? AccessBasicAppResponseProps.fromJson(json) : null,
); }

final AccessBasicAppResponseProps? accessBasicAppResponseProps;

/// At least one variant must be present.
bool get isValid { return accessBasicAppResponseProps != null; } 
Map<String, dynamic> toJson() { return {
  ...?accessBasicAppResponseProps?.toJson(),
}; } 
 }
