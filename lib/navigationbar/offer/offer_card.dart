
import 'package:flutter/material.dart';
import 'package:flutter_tickets_booking_agency/Navigationbar/offer/offers_model.dart';
import 'package:flutter_tickets_booking_agency/appstyle.dart';

class OfferCard extends StatelessWidget {
  final OfferModel offer;

  const OfferCard({super.key, required this.offer});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: Image.asset(
          offer.image,
          height: 100,
          width: 110,
          fit: BoxFit.cover,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          "  ${offer.airline}",
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "   From : ${offer.departure}",
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              Text("   To : ${offer.destination}",
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 16))
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("    ${offer.departureDate}", style: Styles.headLineStyle29),
              Text(offer.returnDate, style: Styles.headLineStyle29)
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              const SizedBox(
                width: 9,
              ),
              Text('${offer.price}\$    ',
                  style: const TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                  )),
              const Icon(
                Icons.discount_rounded,
                color: Colors.green,
                size: 12,
                grade: 18,
              ),
              Text(' discount ${offer.amount}% for ${offer.durationoffer}  ',
                  style: const TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: List.generate(
                  offer.rate.stars.round(),
                  (index) => const Icon(
                        size: 15,
                        Icons.star,
                        color: Color.fromARGB(255, 255, 218, 11),
                      )),
            ),
          ),
          const Row(
            children: [
              SizedBox(
                height: 15,
              )
            ],
          ),
          Divider(
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
