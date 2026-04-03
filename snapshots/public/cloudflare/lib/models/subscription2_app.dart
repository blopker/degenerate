// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// app install id.
extension type const InstallId(String value) {
factory InstallId.fromJson(String json) => InstallId(json);

String toJson() => value;

}
@immutable final class Subscription2App {const Subscription2App({this.installId});

factory Subscription2App.fromJson(Map<String, dynamic> json) { return Subscription2App(
  installId: json['install_id'] != null ? InstallId.fromJson(json['install_id'] as String) : null,
); }

/// app install id.
final InstallId? installId;

Map<String, dynamic> toJson() { return {
  if (installId != null) 'install_id': installId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'install_id'}.contains(key)); } 
Subscription2App copyWith({InstallId Function()? installId}) { return Subscription2App(
  installId: installId != null ? installId() : this.installId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Subscription2App &&
          installId == other.installId; } 
@override int get hashCode { return installId.hashCode; } 
@override String toString() { return 'Subscription2App(installId: $installId)'; } 
 }
