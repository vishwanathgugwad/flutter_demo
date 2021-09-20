import 'package:flutter/material.dart';
import 'package:flutter_demo/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context,index){

        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog)));
            },
            child: CatalogItem(catalog:catalog));
      },
      itemCount: CatalogModel.items.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(

      children: [
        Hero(
          tag: Key(catalog.id.toString()),

          child:
          CatalogImage(image: catalog.image
          ),
        ),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.xs
                .color(context.accentColor)
                .bold
                .make(),
            //catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mOnly(right: 10),
              children: [
                // "\$${catalog.price}".text.bold.xl.make(),
                _AddToCart(),
              ],
            ).pOnly(right: 10)

          ],
        ))

      ],
    ))
        .color(context.cardColor)
        .roundedLg
    .width(150)
        .square(106)
        .make()
        .py(8);
  }
}

class _AddToCart extends StatefulWidget {
  const _AddToCart({Key? key,})
      :
        super(key: key);

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {

  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        setState(() {

        });
      },
      child: isAdded ? Icon(Icons.done) : "Read More".text.make(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())
      ),
    );
  }
}


