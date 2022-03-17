import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_affirmations_record.g.dart';

abstract class VideoAffirmationsRecord
    implements Built<VideoAffirmationsRecord, VideoAffirmationsRecordBuilder> {
  static Serializer<VideoAffirmationsRecord> get serializer =>
      _$videoAffirmationsRecordSerializer;

  @nullable
  String get videoName;

  @nullable
  String get videoLink;

  @nullable
  int get videoIndex;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideoAffirmationsRecordBuilder builder) =>
      builder
        ..videoName = ''
        ..videoLink = ''
        ..videoIndex = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videoAffirmations');

  static Stream<VideoAffirmationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VideoAffirmationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideoAffirmationsRecord._();
  factory VideoAffirmationsRecord(
          [void Function(VideoAffirmationsRecordBuilder) updates]) =
      _$VideoAffirmationsRecord;

  static VideoAffirmationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideoAffirmationsRecordData({
  String videoName,
  String videoLink,
  int videoIndex,
}) =>
    serializers.toFirestore(
        VideoAffirmationsRecord.serializer,
        VideoAffirmationsRecord((v) => v
          ..videoName = videoName
          ..videoLink = videoLink
          ..videoIndex = videoIndex));
