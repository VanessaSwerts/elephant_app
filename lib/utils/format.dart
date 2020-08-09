String calcAge({var yearB, var yearD}) {
  String currentYear = yearD == "-" ? "2020" : yearD;

  return yearB == "Unavailable" || yearD == "Unavailable"
      ? "-"
      : (int.parse(currentYear) - int.parse(yearB)).toString();
}

String formatDate({var yearB, var yearD}) {
  yearB = yearB == "Unavailable" ? "?" : yearB;
  yearD = yearD == "Unavailable" ? "?" : yearD;

  return yearD == "-" ? "$yearB - ?" : "$yearB - $yearD";
}
