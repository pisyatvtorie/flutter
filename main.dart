import 'package:flutter/material.dart';
import 'package:wb/productDetails.dart';


void main() {
  runApp(MyApp());
}

final List<String> ImageContent = [
  'https://images.biggeek.ru/1/435/e97a/22698-93t_natural.jpg',
  'https://www.ikea.com/pl/pl/images/products/aepplaryd-sofa-3-osobowa-lejde-jasnoszary__0992909_pe820327_s5.jpg',
  'https://e7.pngegg.com/pngimages/680/735/png-clipart-high-heeled-shoe-stiletto-heel-slipper-red-woman-blue-people.png',
  'https://www.thesprucepets.com/thmb/IjQ1w-JlBl6ZygXSkVOPFDWoXYE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/PEO-litter-robot-4-automatic-litterbox-vicky-wasik-photo-02-f7b4e1d9d7424f20be36713975cd585c.jpg',
  'https://www.iphones.ru/wp-content/uploads/2023/08/zeekr001-5.jpg',
  'https://m.media-amazon.com/images/I/21wpJHZmftL._AC_.jpg',
  'https://www.cnet.com/a/img/resize/aee6fa621890d809c11d9c680911771b8a3db106/hub/2021/10/13/b8024a0e-b1a4-400c-96d5-1d68ee22e498/2022-bmw-m5-cs-011.jpg?auto=webp&width=1200',
  'https://imobile.market/assets/images/airpods-pro-2022.jpeg',
  'https://ir.ozone.ru/s3/multimedia-4/c1000/6785036140.jpg',
];

final List<String> TextContent = [
  'iPhone 15 Pro Max',
  'Sofa IKEA',
  'Labuteni Krasnie',
  'Cat Toilet',
  'ZEEKR апельсин',
  'Shelf IKEA',
  'BMW M5 CS',
  'Airpods pro',
  'Keyboard hyperX alloy ORIGINS CORE'
];

final List<double> PriceContent = [1499.52, 199.52, 15.52, 299.52, 52188.52, 29.52, 100000.52, 249.52, 199.52];

final List<String> productDescription = [
  'Невероятная мощь в компактном размере Новый корпус, новые возможности камеры, более мощный процессор и разъём USB-C – это лишь основные нововведения iPhone 15 Pro. Компактный, но мощный и функциональный, он станет идеальным гаджетом для любых задач и отличным инструментом для покорения соцсетей и видеохостингов. Всех, кто пропустил 14-е поколение, ждут дополнительные приятные изменения в виде таких фишек как Always-On, динамический остров и 48-Мегапиксельная основная камера, а улучшенная автономность позволит реже думать о зарядке.',
  'жёсткий, полужёсткий, полумягкий или мягкий предмет мебели со спинкой, предназначенный для сидения одного и/или нескольких человек.',
  'красная подошва туфель, в моделях обуви использует экзотические виды кожи, стразы Swarovski, кружево ручной работы.',
  '2',
  'Это крупный лифтбек с красивыми пропорциями, длинной колесной базой (3005 мм), колесами диаметром 22 дюйма и низким коэффициентом аэродинамического сопротивления Cx (0,23). Длина машины — 4970 мм, ширина — 1999 мм, высота — 1560 мм. Со сложенными задними сиденьями образуется багажный отсек объемом 2144 литра.',
  'многофункциональный предмет интерьера, который позволит удобно разместить различные аксессуары: наушники, декор, книги, игрушки, рамки с фотографиями, часы, цветочные горшки, сумки и многое другое. Конструкция предусматривает наличие горизонтальных полок и специальных держателей. Благодаря минималистичному дизайну и нейтральному цветовому решению модель прекрасно вписывается в любое оформление комнаты. Настенный монтаж обеспечивает компактное размещение. Практичные материалы гарантируют изделию износостойкость и долгий срок службы.',
  'Новый BMW M5 CS оснащен бензиновым двигателем V8 M TwinPower Turbo объемом 4,4 л, который развивает 635 л.с. (на 10 л.с. больше, чем M5 Competition) и располагает крутящим моментом 750 Нм. Силовой агрегат сочетается со спортивной автоматической коробкой передач Steptronic и и эффективным полным приводом M xDrive с активным задним дифференциалом М. Они обеспечивают M5 CS лучшую в классе динамику, недоступную для конкурентов.',
  '1',
  'это стильные, удобные и качественные наушники с беспроводным подключением. Модель имеет функцию активного шумоподавления и использует чип Apple H1, который гарантирует минимальную задержку при прослушивании музыки, а также обработку внешних шумов в реальном времени.',
  'Клавиатура HyperX Alloy Core RGB обладает полноразмерной раскладкой со 114 клавишами. В основе клавиш используется мембранный механизм, который обеспечивает плавный и четкий отклик при низком уровне шума. Для повышения удобства игры реализована светодиодная подсветка с многоцветной палитрой RGB.',
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LiriShop'),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.deepPurple,
        body: ProductGrid(),
      ),
    );
  }
}


class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
        children: List.generate(ImageContent.length, (index) {
        return ProductCard(
          imageUrl: ImageContent[index],
          productName: TextContent[index],
          ProductPrice: PriceContent[index],
          productDescription: productDescription[index],
          );
      }),
    );
  }
}


class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double ProductPrice;
  final String productDescription;

  ProductCard({required this.imageUrl, required this.productName, required this.ProductPrice, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
        children:[
          Image.network(
              imageUrl,
              width: 83,
              height: 83,
          ),
          Text('\$${ProductPrice.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(productName),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    ImageContent: imageUrl,
                    TextContent: productName,
                    productDescription: productDescription,
                  ),
                ),
              );
            },
            child: Text('Купить'),
          )
        ],
      ),
      ),
    );
  }
}


// class ProductDetailsPage extends StatelessWidget{
//   final String ImageContent;
//   final String TextContent;
//
//   ProductDetailsPage({required this.ImageContent, required this.TextContent});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(TextContent),
//       ),
//       body: Column(
//         children: [
//           Image.network(ImageContent),
//           Text(TextContent),
//         ],
//       ),
//     );
//   }
// }





