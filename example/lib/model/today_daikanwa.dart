// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'today_daikanwa.g.dart';
part 'today_daikanwa.freezed.dart';

@freezed
class TodayDaiKanWa with _$TodayDaiKanWa {
  const TodayDaiKanWa._();

  const factory TodayDaiKanWa({
    @JsonKey(name: 'uuid') required String uuid,
    @JsonKey(name: 'raw_preview_img_url') required String rawPreviewImgUrl,
    @JsonKey(name: 'processed_preview_img_url')
    required String processedPreviewImgUrl,
    @JsonKey(name: 'preview_width') required int previewWidth,
    @JsonKey(name: 'preview_height') required int previewHeight,
    @JsonKey(name: 'raw_detail_img_url') required String rawDetailImgUrl,
    @JsonKey(name: 'processed_detail_img_url')
    required String processedDetailImgUrl,
    @JsonKey(name: 'detail_width') required int detailWidth,
    @JsonKey(name: 'detail_height') required int detailHeight,
  }) = _TodayDaiKanWa;

  factory TodayDaiKanWa.fromJson(Map<String, Object?> json) =>
      _$TodayDaiKanWaFromJson(json);
}
