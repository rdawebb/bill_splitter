/// Represents an item on a receipt

library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_item.freezed.dart';

@freezed
abstract class ReceiptItem with _$ReceiptItem {
  const factory ReceiptItem({
    required String id,
    required String name,
    required int priceMinor,
    @Default(<String>[]) List<String> claimedByPersonIds,
  }) = _ReceiptItem;
}
