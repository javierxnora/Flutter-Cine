import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: FittedBox(
                      child: Text(
                        'Recomendadas',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: "Montserrat",
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {
                        print('Presionaron la búsqueda');
                      },
                    ),
                  ),
                ],
              ),
              _moviesSlider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moviesSlider() {
    return Container(
      height: 150,
      width: double.infinity,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: 300,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: new Image.network(
              "https://scontent.fscl7-1.fna.fbcdn.net/v/t1.0-0/p180x540/55485863_10157472280527275_7877149838259781632_o.jpg?_nc_cat=111&_nc_sid=730e14&_nc_ohc=IKwazZWA3KQAX_rm0Hf&_nc_ht=scontent.fscl7-1.fna&_nc_tp=6&oh=35fa61b703c44c6897789687f52e02f8&oe=5ECDC352",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
