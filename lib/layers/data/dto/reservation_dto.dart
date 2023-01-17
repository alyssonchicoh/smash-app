import 'package:smash/layers/domain/entities/reservation_entity.dart';

class ReservationDto extends ReservationEntity {
  ReservationDto(
      {required id,
      required number,
      required date,
      required status,
      required paymentStatus})
      : super(
          id: id,
          number: number,
          date: date,
          status: status,
          paymentStatus: paymentStatus,
        );

  Map toMap() {
    return {
      'id': id,
      'number': number,
      'date': date,
      'status': status,
      'paymentStatus': paymentStatus,
    };
  }

  static ReservationDto fromMap(Map map) {
    return ReservationDto(
        id: map['id'],
        number: _getItemMap(map, 'number'),
        date: DateTime.parse(_getItemMap(map, 'date')),
        status: _getItemMap(map, 'status'),
        paymentStatus: _getItemMap(map, 'paymentStatus'));
  }

  static _getItemMap(Map map, String key) {
    return map.containsKey(key) ? map[key] : '';
  }
}
