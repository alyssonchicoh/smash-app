import 'package:smash/layers/data/datasources/get_available_court_by_date_datasource.dart';
import 'package:smash/layers/data/dto/available_court_dto.dart';

class GetAvailableCourtByDateDataSourceImpl
    implements GetAvailableCourtByDateDataSource {
  @override
  Future<List<AvailableCourtDto>> call(DateTime dateTime) async {
    final court1 = {
      'id': 1,
      'number': 1,
      'type': 'Quadra Aberta',
      'capacity': 8,
    };

    final court2 = {
      'id': 2,
      'number': 2,
      'type': 'Quadra Aberta',
      'capacity': 8,
    };

    final court3 = {
      'id': 3,
      'number': 3,
      'type': 'Quadra Fechada',
      'capacity': 6,
    };

    final court4 = {
      'id': 4,
      'number': 4,
      'type': 'Quadra Aberta',
      'capacity': 8,
    };

    final court5 = {
      'id': 5,
      'number': 5,
      'type': 'Quadra Fechada',
      'capacity': 6,
    };

    final court6 = {
      'id': 6,
      'number': 6,
      'type': 'Quadra Aberta',
      'capacity': 5,
    };

    final availableCourt1 = {
      'court': court1,
      'hours': ['19:00', '21:00', '20:00']
    };

    final availableCourt2 = {
      'court': court2,
      'hours': ['13:00', '14:00', '17:00']
    };

    final availableCourt3 = {
      'court': court3,
      'hours': ['18:00', '21:00', '22:00']
    };

    await Future.delayed(const Duration(seconds: 1));
    if (dateTime.day == DateTime.now().day) {
      return [
        AvailableCourtDto.fromMap(availableCourt1),
        AvailableCourtDto.fromMap(availableCourt2),
        AvailableCourtDto.fromMap(availableCourt3)
      ];
    } else {
      return [
        AvailableCourtDto.fromMap(availableCourt1),
        AvailableCourtDto.fromMap(availableCourt2),
      ];
    }
  }
}
