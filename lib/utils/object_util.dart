class ObjectUtil {
  static bool isNotEmpty(Object object) {
    return !isEmpty(object);
  }

  static bool isEmpty(Object object) {
    if (object == null) return true;
    if (object is String && object.isEmpty) {
      return true;
    } else if (object is List && object.isEmpty) {
      return true;
    } else if (object is Map && object.isEmpty) {
      return true;
    }
    return false;
  }


  static bool isNetUri(String uri) {
    if (uri.isNotEmpty &&
        (uri.startsWith('http://') || uri.startsWith('https://'))) {
      return true;
    }
    return false;
  }
}
