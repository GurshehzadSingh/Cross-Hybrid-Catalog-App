import 'package:flutter/material.dart';
import 'package:flutter_revision/models/catalog.dart';
import 'package:flutter_revision/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';
class HomeDetailPage extends StatelessWidget {
final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog}) : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar:Container(
        color: context.cardColor,
        child: ButtonBar(
               alignment: MainAxisAlignment.spaceBetween,
               buttonPadding: EdgeInsets.zero,
               children:[
                 "\$${catalog.price}".text.bold.xl4.red800.make(),
                 AddToCart(catalog: catalog).wh(120,50)
               ],
               ).p32(),
      ) ,
      body:SafeArea(
        bottom: false,
              child: Column(
          children: [
            Hero(
               tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
              ).h32(context),
              Expanded(child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    color:context.cardColor,
                    width: context.screenWidth,
                    child: Column(children: [
                      catalog.name.text.xl4.color(context.accentColor).bold.make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                      "Duo diam et lorem invidunt dolor ea accusam magna sit. Gubergren amet clita vero ea. Aliquyam lorem labore lorem est sadipscing sit duo ipsum, eirmod sed eos dolore sadipscing invidunt nonumy dolores, justo rebum tempor dolores tempor elitr invidunt ut. Eirmod diam magna amet et sed kasd, lorem erat nonumy."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16()
                    ],
                    ).py(64)
                ),
              )
              )
        ],
        ),
      ),
    );
  }
}