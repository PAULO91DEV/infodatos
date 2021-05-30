import 'package:flutter/material.dart';

Widget displayByConditionWidget({
  @required Widget childPositive,
  @required Widget childNegative,
  @required bool condition,
}) {
  if (condition) {
    return childPositive;
  }
  return childNegative;
}

extension NullCheckable on String {
  bool isNullOrEmpty() {
    return this == null || this.trimRight().isEmpty;
  }

  bool isNotNullAndEmpty() {
    return this != null && this.trim().isNotEmpty;
  }
}

String getDateFromIsoDate(DateTime dt) {
  if (dt == null) {
    return "";
  }
  return "${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}";
}

Widget createField(String label, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(label),
      SizedBox(
        height: 8,
      ),
      Container(
        height: 46,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
