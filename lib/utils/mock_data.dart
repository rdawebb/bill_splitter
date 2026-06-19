/// Provides mock data for testing purposes

library;

import '../models/person.dart';
import '../models/receipt_item.dart';

final mockPeople = <Person>[
  const Person(id: 'p1', name: 'Alex', colorHex: 0xFFE57373),
  const Person(id: 'p2', name: 'Sam',  colorHex: 0xFF64B5F6),
  const Person(id: 'p3', name: 'Jo',   colorHex: 0xFF81C784),
];

final mockItems = <ReceiptItem>[
  const ReceiptItem(id: 'i1', name: 'Margherita Pizza', priceMinor: 1295),
  const ReceiptItem(id: 'i2', name: 'Caesar Salad',     priceMinor: 875),
  const ReceiptItem(id: 'i3', name: 'Garlic Bread',     priceMinor: 450),
  const ReceiptItem(id: 'i4', name: 'Sparkling Water',  priceMinor: 320),
];
