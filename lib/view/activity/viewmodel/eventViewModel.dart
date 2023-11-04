import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/buttonmodel.dart';
import 'package:toplulugum/core/widgets/textmodels.dart';

class EventWidget extends StatelessWidget {
  final String eventName;
  final String eventDescription;
  final String eventDate;
  final String eventLocation;
  final String eventImage;

  EventWidget({
    required this.eventName,
    required this.eventDescription,
    required this.eventDate,
    required this.eventLocation,
    required this.eventImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.flashwhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                eventImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Etkinlik Adı: $eventName",
                      style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    CustomText(
                      text: "Tarih: $eventDate",
                      style: TextStyle(
                        color: AppColors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                customButton(
                    context: context,
                    text: "Etkinlik Detayları",
                    onPressed: () {},
                    borderRadius: 10,
                    height: 0.04,
                    width: 2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
