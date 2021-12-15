import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 36,
                            color: Colors.redAccent,
                          )),
                      title: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFf1f1f1),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: Icon(
                            Icons.search_outlined,
                            size: 32,
                            color: Colors.grey,
                          ),
                          title: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              hintText: 'Поиск по Kaspi.kz',
                              hintStyle:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      trailing: SizedBox(),
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        _columnImages('assets/2.jpg'),
                        SizedBox(width: 15),
                        _columnImages('assets/1.jpeg'),
                        SizedBox(width: 15),
                        _columnImages('assets/3.jpg'),
                        SizedBox(width: 15),
                        _columnImages('assets/4.jpg'),
                        SizedBox(width: 15),
                        _columnImages('assets/2.jpg'),
                        SizedBox(width: 15),
                        _columnImages('assets/1.jpeg'),
                        SizedBox(width: 15),
                        _columnImages('assets/3.jpg'),
                        SizedBox(width: 15),
                        _columnImages('assets/4.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _icons(Icons.qr_code_scanner, 'Kaspi QR'),
                  _icons(Icons.devices_outlined, 'Мой Банк'),
                  _icons(Icons.receipt_outlined, 'Платежи'),
                  _icons(Icons.cached_outlined, 'Переводы'),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, ////////////////////////////////
                children: [
                  _icons(Icons.shopping_cart_outlined, 'Магазин'),
                  _icons(Icons.card_giftcard_outlined, 'Акции'),
                  _icons(Icons.luggage_outlined, 'Travel'),
                  _icons(Icons.domain_outlined, 'Госуслуги'),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        _containers(Colors.red, '0-0-12', 'Рассрочка 0-0-12'),
                        _containers(
                            Colors.green[200], '0-0-12', 'Кредит\nНаличными'),
                        _containers(Colors.amber, 'T', 'Kaspi Депозит'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _containers(Colors.red, 'RED', 'Kaspi Red',
                            subtitle: 'Рассрочка 0% и Бонусы'),
                        _containers(Colors.red, 'KREDIT', 'Кредит на Покупки',
                            subtitle: 'Кредит или рассрочка 0%'),
                        SizedBox(width: 280)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Мебель',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _columnImagesNew('assets/1.jpeg', 'Кухня'),
                        _columnImagesNew('assets/2.jpg', 'Спальня'),
                        _columnImagesNew('assets/3.jpg', 'Детская\nкомната'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _columnImagesNew('assets/4.jpg', 'Гостиная'),
                        _columnImagesNew('assets/1.jpeg', 'Ванная Комната'),
                        _columnImagesNew('assets/2.jpg', 'Офис и кабинет'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _containers(Color color, String text, String data, {String subtitle}) {
    return Container(
      width: 280,
      child: Row(
        children: [
          Container(
            height: 55,
            width: 80,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            )),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              if (subtitle != null)
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  Widget _icons(IconData _icon, String text) {
    return Container(
      height: 80,
      width: 100,
      child: Column(
        children: [
          Icon(
            _icon,
            size: 48,
            color: Colors.redAccent,
          ),
          Text(text, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }

  Column _columnImages(String ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _images(ref),
        SizedBox(height: 16),
        Text(
          '6 декабря - 14 декабря',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Container _images(String ref) {
    return Container(
      height: 110,
      width: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.asset(
          ref,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Column _columnImagesNew(String ref, String room) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _imagesNew(ref),
        SizedBox(height: 16),
        Text(
          room,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Container _imagesNew(String ref) {
    return Container(
      height: 90,
      width: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.asset(
          ref,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
