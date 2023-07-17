// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_daikanwa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodayDaiKanWa _$$_TodayDaiKanWaFromJson(Map<String, dynamic> json) =>
    _$_TodayDaiKanWa(
      uuid: json['uuid'] as String,
      rawPreviewImgUrl: json['raw_preview_img_url'] as String,
      processedPreviewImgUrl: json['processed_preview_img_url'] as String,
      previewWidth: json['preview_width'] as int,
      previewHeight: json['preview_height'] as int,
      rawDetailImgUrl: json['raw_detail_img_url'] as String,
      processedDetailImgUrl: json['processed_detail_img_url'] as String,
      detailWidth: json['detail_width'] as int,
      detailHeight: json['detail_height'] as int,
    );

Map<String, dynamic> _$$_TodayDaiKanWaToJson(_$_TodayDaiKanWa instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'raw_preview_img_url': instance.rawPreviewImgUrl,
      'processed_preview_img_url': instance.processedPreviewImgUrl,
      'preview_width': instance.previewWidth,
      'preview_height': instance.previewHeight,
      'raw_detail_img_url': instance.rawDetailImgUrl,
      'processed_detail_img_url': instance.processedDetailImgUrl,
      'detail_width': instance.detailWidth,
      'detail_height': instance.detailHeight,
    };
