/// Money utilities operating purely on integer minor units

library;

int _pow10(int decimals) {
  var factor = 1;
  for (var i = 0; i < decimals; i++) {
    factor *= 10;
  }
  return factor;
}

int? parseMoneyToMinor(String input, {int decimals = 2}) {
  var s = input
      .trim()
      .replaceAll(',', '')
      .replaceAll('£', '')
      .replaceAll(r'$', '')
      .replaceAll('€', '')
      .trim();
  if (s.isEmpty) return null;

  var negative = false;
  if (s.startsWith('-')) {
    negative = true;
    s = s.substring(1).trim();
  }

  final parts = s.split('.');
  if (parts.length > 2) return null;

  final whole = parts[0].isEmpty ? '0' : parts[0];
  if (!RegExp(r'^\d+$').hasMatch(whole)) return null;

  var frac = parts.length == 2 ? parts[1] : '';
  if (frac.isNotEmpty && !RegExp(r'^\d+$').hasMatch(frac)) return null;

  if (frac.length < decimals) {
    frac = frac.padRight(decimals, '0');
  } else if (frac.length > decimals) {
    frac = frac.substring(0, decimals); // truncate, do not round
  }

  final factor = _pow10(decimals);
  final minor = int.parse(whole) * factor + (frac.isEmpty ? 0 : int.parse(frac));
  return negative ? -minor : minor;
}

/// Formats integer minor units for display
String formatMinor(int minor, {int decimals = 2, String symbol = '£'}) {
  final negative = minor < 0;
  final m = minor.abs();
  final factor = _pow10(decimals);
  final whole = m ~/ factor;
  final frac = (m % factor).toString().padLeft(decimals, '0');
  return '${negative ? '-' : ''}$symbol$whole.$frac';
}
