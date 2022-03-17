import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/videos_record.dart';
import 'schema/users_record.dart';
import 'schema/courses_record.dart';
import 'schema/authors_record.dart';
import 'schema/users_courses_record.dart';
import 'schema/course_journal_record.dart';
import 'schema/gratitude_journal_record.dart';
import 'schema/live_sessions_record.dart';
import 'schema/mindfulness_sessions_record.dart';
import 'schema/user_searches_record.dart';
import 'schema/video_affirmations_record.dart';
import 'schema/video_meditations_record.dart';
import 'schema/serializers.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/videos_record.dart';
export 'schema/users_record.dart';
export 'schema/courses_record.dart';
export 'schema/authors_record.dart';
export 'schema/users_courses_record.dart';
export 'schema/course_journal_record.dart';
export 'schema/gratitude_journal_record.dart';
export 'schema/live_sessions_record.dart';
export 'schema/mindfulness_sessions_record.dart';
export 'schema/user_searches_record.dart';
export 'schema/video_affirmations_record.dart';
export 'schema/video_meditations_record.dart';

/// Functions to query VideosRecords (as a Stream and as a Future).
Stream<List<VideosRecord>> queryVideosRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(VideosRecord.collection, VideosRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<VideosRecord>> queryVideosRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(VideosRecord.collection, VideosRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UsersRecord>> queryUsersRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query CoursesRecords (as a Stream and as a Future).
Stream<List<CoursesRecord>> queryCoursesRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(CoursesRecord.collection, CoursesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<CoursesRecord>> queryCoursesRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(CoursesRecord.collection, CoursesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AuthorsRecords (as a Stream and as a Future).
Stream<List<AuthorsRecord>> queryAuthorsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(AuthorsRecord.collection, AuthorsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuthorsRecord>> queryAuthorsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(AuthorsRecord.collection, AuthorsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query UsersCoursesRecords (as a Stream and as a Future).
Stream<List<UsersCoursesRecord>> queryUsersCoursesRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        UsersCoursesRecord.collection, UsersCoursesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UsersCoursesRecord>> queryUsersCoursesRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        UsersCoursesRecord.collection, UsersCoursesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query CourseJournalRecords (as a Stream and as a Future).
Stream<List<CourseJournalRecord>> queryCourseJournalRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        CourseJournalRecord.collection, CourseJournalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<CourseJournalRecord>> queryCourseJournalRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        CourseJournalRecord.collection, CourseJournalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query GratitudeJournalRecords (as a Stream and as a Future).
Stream<List<GratitudeJournalRecord>> queryGratitudeJournalRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        GratitudeJournalRecord.collection, GratitudeJournalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<GratitudeJournalRecord>> queryGratitudeJournalRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        GratitudeJournalRecord.collection, GratitudeJournalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query LiveSessionsRecords (as a Stream and as a Future).
Stream<List<LiveSessionsRecord>> queryLiveSessionsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        LiveSessionsRecord.collection, LiveSessionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<LiveSessionsRecord>> queryLiveSessionsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        LiveSessionsRecord.collection, LiveSessionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query MindfulnessSessionsRecords (as a Stream and as a Future).
Stream<List<MindfulnessSessionsRecord>> queryMindfulnessSessionsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(MindfulnessSessionsRecord.collection,
        MindfulnessSessionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<MindfulnessSessionsRecord>> queryMindfulnessSessionsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(MindfulnessSessionsRecord.collection,
        MindfulnessSessionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query UserSearchesRecords (as a Stream and as a Future).
Stream<List<UserSearchesRecord>> queryUserSearchesRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        UserSearchesRecord.collection, UserSearchesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UserSearchesRecord>> queryUserSearchesRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        UserSearchesRecord.collection, UserSearchesRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query VideoAffirmationsRecords (as a Stream and as a Future).
Stream<List<VideoAffirmationsRecord>> queryVideoAffirmationsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        VideoAffirmationsRecord.collection, VideoAffirmationsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<VideoAffirmationsRecord>> queryVideoAffirmationsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        VideoAffirmationsRecord.collection, VideoAffirmationsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query VideoMeditationsRecords (as a Stream and as a Future).
Stream<List<VideoMeditationsRecord>> queryVideoMeditationsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        VideoMeditationsRecord.collection, VideoMeditationsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<VideoMeditationsRecord>> queryVideoMeditationsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        VideoMeditationsRecord.collection, VideoMeditationsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

// Creates a Firestore record representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
