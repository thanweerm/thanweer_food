import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodList extends StatefulWidget {
  FoodList({Key? key, required this.foodController, required this.ind})
      : super(key: key);
  final foodController;
  int ind;

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.foodController.welcome!.tableMenuList![widget.ind]
            .categoryDishes!.length,
        itemBuilder: (context, index) => ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: widget
                                .foodController
                                .welcome
                                .tableMenuList[widget.ind]
                                .categoryDishes[index]
                                .dishAvailability ==
                            false
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.foodController.welcome!.tableMenuList![widget.ind]
                        .categoryDishes![index].dishName
                        .toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                  Row(
                    children: [
                      Text(
                        'INR ${widget.foodController.welcome!.tableMenuList![widget.ind].categoryDishes![index].dishPrice.toString()}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                          '${widget.foodController.welcome!.tableMenuList![widget.ind].categoryDishes![index].dishCalories.toString()} Calories',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 17.0)),
                    ],
                  ),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  ${widget.foodController.welcome!.tableMenuList![widget.ind].categoryDishes![index].dishDescription.toString()}  ",
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      // color: Colors.green,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                          color: Colors.green),
                      width: 150.0,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 19,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              counter.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                incrementCounter();
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              trailing: Container(
                child: Image.network(
                  'https://media.istockphoto.com/id/1312283557/photo/classic-thai-food-dishes.webp?s=612x612&w=is&k=20&c=jCS33AOBwwXAIx00CCLADoM4IyO9vmy13n7HYibjSkM=',
                  width: 40,
                  height: 40,
                ),
              ),
            ));
  }
}
