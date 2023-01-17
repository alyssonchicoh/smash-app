import 'package:intl/intl.dart';

class ReservationEntity {
  int id;
  String number;
  DateTime date;
  String status;
  String paymentStatus;

  ReservationEntity({
    required this.id,
    required this.number,
    required this.date,
    required this.status,
    required this.paymentStatus,
  });

  bool itsPaid() {
    return paymentStatus == "PAGO";
  }

  List<String> dayAndMonth() {
    return [
      date.day.toString(),
      DateFormat("MMMM").format(date).toString().substring(0, 3),
    ];
  }

  String get formattedData {
    return DateFormat("dd/MM/yyyy").format(date).toString();
  }
}
