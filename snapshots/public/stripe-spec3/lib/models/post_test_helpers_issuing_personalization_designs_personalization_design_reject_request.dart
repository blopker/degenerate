// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_issuing_personalization_designs_personalization_design_reject_request_rejection_reasons.dart';final class PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest {const PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest({this.expand, required this.rejectionReasons, });

factory PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectionReasons: PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequestRejectionReasons.fromJson(json['rejection_reasons'] as Map<String, dynamic>),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The reason(s) the personalization design was rejected.
final PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequestRejectionReasons rejectionReasons;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'rejection_reasons': rejectionReasons.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('rejection_reasons'); } 
PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest copyWith({List<String> Function()? expand, PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequestRejectionReasons? rejectionReasons, }) { return PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest(
  expand: expand != null ? expand() : this.expand,
  rejectionReasons: rejectionReasons ?? this.rejectionReasons,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest &&
          listEquals(expand, other.expand) &&
          rejectionReasons == other.rejectionReasons; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), rejectionReasons); } 
@override String toString() { return 'PostTestHelpersIssuingPersonalizationDesignsPersonalizationDesignRejectRequest(expand: $expand, rejectionReasons: $rejectionReasons)'; } 
 }
