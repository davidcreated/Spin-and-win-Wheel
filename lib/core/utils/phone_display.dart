/// Formats a Nigerian phone number for display as +234 XXX XXX XXXX.
String formatNigerianPhoneForDisplay(String input) {
  final d = input.replaceAll(RegExp(r'[\s\-()+]'), '');
  if (d.isEmpty) return input;

  late final String ten;
  if (d.startsWith('234') && d.length >= 13) {
    ten = d.substring(3, 13);
  } else if (d.length == 11 && d.startsWith('0')) {
    ten = d.substring(1);
  } else if (d.length == 10) {
    ten = d;
  } else {
    return input;
  }

  if (ten.length != 10 || !RegExp(r'^\d{10}$').hasMatch(ten)) return input;

  return '+234 ${ten.substring(0, 3)} ${ten.substring(3, 6)}'
      ' ${ten.substring(6)}';
}
