// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_pages_state.dart';import 'custom_pages_url.dart';extension type CustomPagesTimestamp(DateTime value) {
factory CustomPagesTimestamp.fromJson(String json) => CustomPagesTimestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class CustomPagesCustomPage {const CustomPagesCustomPage({this.createdOn, this.description, this.id, this.modifiedOn, this.previewTarget, this.requiredTokens, this.state, this.url, });

factory CustomPagesCustomPage.fromJson(Map<String, dynamic> json) { return CustomPagesCustomPage(
  createdOn: json['created_on'] != null ? CustomPagesTimestamp.fromJson(json['created_on'] as String) : null,
  description: json['description'] as String?,
  id: json['id'] as String?,
  modifiedOn: json['modified_on'] != null ? CustomPagesTimestamp.fromJson(json['modified_on'] as String) : null,
  previewTarget: json['preview_target'] as String?,
  requiredTokens: (json['required_tokens'] as List<dynamic>?)?.map((e) => e as String).toList(),
  state: json['state'] != null ? CustomPagesState.fromJson(json['state'] as String) : null,
  url: json['url'] != null ? CustomPagesUrl.fromJson(json['url'] as String) : null,
); }

final CustomPagesTimestamp? createdOn;

final String? description;

final String? id;

final CustomPagesTimestamp? modifiedOn;

final String? previewTarget;

final List<String>? requiredTokens;

final CustomPagesState? state;

final CustomPagesUrl? url;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  'description': ?description,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  'preview_target': ?previewTarget,
  'required_tokens': ?requiredTokens,
  if (state != null) 'state': state?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_on', 'description', 'id', 'modified_on', 'preview_target', 'required_tokens', 'state', 'url'}.contains(key)); } 
CustomPagesCustomPage copyWith({CustomPagesTimestamp Function()? createdOn, String Function()? description, String Function()? id, CustomPagesTimestamp Function()? modifiedOn, String Function()? previewTarget, List<String> Function()? requiredTokens, CustomPagesState Function()? state, CustomPagesUrl Function()? url, }) { return CustomPagesCustomPage(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  previewTarget: previewTarget != null ? previewTarget() : this.previewTarget,
  requiredTokens: requiredTokens != null ? requiredTokens() : this.requiredTokens,
  state: state != null ? state() : this.state,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPagesCustomPage &&
          createdOn == other.createdOn &&
          description == other.description &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          previewTarget == other.previewTarget &&
          listEquals(requiredTokens, other.requiredTokens) &&
          state == other.state &&
          url == other.url; } 
@override int get hashCode { return Object.hash(createdOn, description, id, modifiedOn, previewTarget, Object.hashAll(requiredTokens ?? const []), state, url); } 
@override String toString() { return 'CustomPagesCustomPage(createdOn: $createdOn, description: $description, id: $id, modifiedOn: $modifiedOn, previewTarget: $previewTarget, requiredTokens: $requiredTokens, state: $state, url: $url)'; } 
 }
