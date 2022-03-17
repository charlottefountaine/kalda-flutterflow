import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_meditations_record.g.dart';

abstract class VideoMeditationsRecord
    implements Built<VideoMeditationsRecord, VideoMeditationsRecordBuilder> {
  static Serializer<VideoMeditationsRecord> get serializer =>
      _$videoMeditationsRecordSerializer;

  @nullable
  String get videoName;

  @nullable
  String get videoLink;

  @nullable
  int get videoIndex;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideoMeditationsRecordBuilder builder) =>
      builder
        ..videoName = ''
        ..videoLink = ''
        ..videoIndex = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videoMeditations');

  static Stream<VideoMeditationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VideoMeditationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideoMeditationsRecord._();
  factory VideoMeditationsRecord(
          [void Function(VideoMeditationsRecordBuilder) updates]) =
      _$VideoMeditationsRecord;

  static VideoMeditationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideoMeditationsRecordData({
  String videoName,
  String videoLink,
  int videoIndex,
}) =>
    serializers.toFirestore(
        VideoMeditationsRecord.serializer,
        VideoMeditationsRecord((v) => v
          ..videoName = videoName
          ..videoLink = videoLink
          ..videoIndex = videoIndex));
