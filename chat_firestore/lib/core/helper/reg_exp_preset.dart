abstract class RegExpPreset {
  static const password =
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d?=.*[!@#$%^&*()_+{}:\\<>?\-=\[\];'\\,\./`~£€]{8,}$";
  static const email = r'^[\w\.+-]+@(([\w-]+\.)[\w]*).*$';
}
