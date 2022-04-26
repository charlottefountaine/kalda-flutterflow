import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _meditIndex = prefs.getInt('ff_meditIndex') ?? _meditIndex;
    _onboardingComplete =
        prefs.getBool('ff_onboardingComplete') ?? _onboardingComplete;
  }

  SharedPreferences prefs;

  bool searchFail = false;

  bool affirmationPush = false;

  int _meditIndex = 1;
  int get meditIndex => _meditIndex;
  set meditIndex(int _value) {
    _meditIndex = _value;
    prefs.setInt('ff_meditIndex', _value);
  }

  bool _onboardingComplete = false;
  bool get onboardingComplete => _onboardingComplete;
  set onboardingComplete(bool _value) {
    _onboardingComplete = _value;
    prefs.setBool('ff_onboardingComplete', _value);
  }

  bool annualSub = true;

  bool monthlySub = false;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
