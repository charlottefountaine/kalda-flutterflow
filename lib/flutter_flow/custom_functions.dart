import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool progressCondition(
  int numberOfLessons,
  int progress,
) {
  if (progress >= numberOfLessons - 1) {
    return true;
  }
  return false;
}

double calculateProgress(
  int numberOfLessons,
  int progress,
) {
  if (numberOfLessons == 0) {
    return 0;
  }
  return progress / numberOfLessons;
}
