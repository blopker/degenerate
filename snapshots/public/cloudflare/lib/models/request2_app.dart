// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'install_id.dart';@immutable final class Request2App {const Request2App({this.installId});

factory Request2App.fromJson(Map<String, dynamic> json) {return Request2App(
  installId: json['install_id'] != null ? InstallId.fromJson(json['install_id'] as String) : null,
);}

/// app install id.
final InstallId? installId;

Map<String, dynamic> toJson() {return {
  if (installId != null) 'install_id': installId?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'install_id'}.contains(key));}
Request2App copyWith({InstallId? Function()? installId}) {return Request2App(
  installId: installId != null ? installId() : this.installId,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Request2App &&
          installId == other.installId;}
@override int get hashCode {return installId.hashCode;}
@override String toString() {return 'Request2App(installId: $installId)';}
}
