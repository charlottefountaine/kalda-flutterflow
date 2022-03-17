import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KaldaFeb2022FirebaseUser {
  KaldaFeb2022FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KaldaFeb2022FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KaldaFeb2022FirebaseUser> kaldaFeb2022FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KaldaFeb2022FirebaseUser>(
            (user) => currentUser = KaldaFeb2022FirebaseUser(user));
