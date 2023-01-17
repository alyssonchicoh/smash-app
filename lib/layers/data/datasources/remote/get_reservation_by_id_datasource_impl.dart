import 'package:smash/layers/data/datasources/get_reservation_by_id_datasource.dart';
import 'package:smash/layers/data/dto/reservation_datail_dto.dart';

class GetReservationByIdDataSourceImpl implements GetReservationByIdDataSource {
  @override
  Future<ReservationDetailDto> call(int id) async {
    final person1 = {
      'id': 1,
      'name': "Harry Potter",
      'url_photo':
          'https://conteudo.imguol.com.br/c/parceiros/6e/2022/11/15/a-saga-harry-potter-esta-disponivel-no-hbo-max-1668541198115_v2_3x4.jpg',
      'status': "Confirmado",
    };

    final person2 = {
      'id': 1,
      'name': "Hermione Granger",
      'url_photo':
          'http://4.bp.blogspot.com/-clk-DZnT4F0/Tarp4GMLT_I/AAAAAAAAAKI/krB9xuLDk6c/s1600/Hermione-Jean-Granger.jpg',
      'status': "Confirmado",
    };

    final person3 = {
      'id': 3,
      'name': "Lord Voldermort",
      'url_photo':
          'https://static.wikia.nocookie.net/newojesed/images/b/be/Voldemort.jpg/revision/latest?cb=20110418171800&path-prefix=pt-br',
      'status': "Confirmado",
    };

    final person4 = {
      'id': 4,
      'name': "Severo Snape",
      'url_photo':
          'https://observatoriodocinema.uol.com.br/wp-content/uploads/2022/09/morreu-o-actor-de-professor-snape-em-harry-potter-1452784531876.jpg',
      'status': "Confirmado",
    };

    final reservation = {
      'id': 1,
      'number': "0110123",
      'date': "2023-01-16",
      'status': "Pagamento Pendente",
      'paymentStatus': "PAGO",
    };

    final reservationDetail = {
      'reservation': reservation,
      'hour': '20:00',
      'court_number': '7',
      'court_capacity': 10,
      'persons': []
    };

    await Future.delayed(const Duration(seconds: 3));

    return ReservationDetailDto.fromMap(reservationDetail);
  }
}
