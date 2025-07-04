import 'package:ems_1/common/widgets/custom_search_bar.dart';
import 'package:ems_1/common/widgets/invitefreinds.dart';
import 'package:ems_1/common/widgets/popular_events_widget.dart';
import 'package:ems_1/common/widgets/service_provider_widget.dart';
import 'package:ems_1/features/home/data/models/event_card_model.dart';
import 'package:ems_1/features/home/data/models/service_card_model.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  UserHomeScreen({super.key});
  final List<EventCardModel> dummyList = [
    EventCardModel(
      imageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      title: 'test',
      date: '15 nov',
      location: 'Damascus',
      goingCount: 20,
      organizer: 'Ted',
      organizerImage:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      desc:
          'sdfEFKMfm[mef[mF[PMA{OF[APM[SPODVPSDLM[PSMLG[PSMFSP[MF[PSMF[PAM[PDFMA[DMA[PMLDA[MDLAMFDLMA[DMA[PLMDA[LMFA[PLMF[APLMSF[AMF]]]]]]]]]]]]]]]]]}]]]',
      price: '100',
    ),
    EventCardModel(
      imageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      title: 'test',
      date: '15 nov',
      location: 'Damascus',
      goingCount: 20,
      organizer: 'Ted',
      organizerImage:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      desc:
          'sdfEFKMfm[mef[mF[PMA{OF[APM[SPODVPSDLM[PSMLG[PSMFSP[MF[PSMF[PAM[PDFMA[DMA[PMLDA[MDLAMFDLMA[DMA[PLMDA[LMFA[PLMF[APLMSF[AMF]]]]]]]]]]]]]]]]]}]]]',
      price: '2000',
    ),
    EventCardModel(
      imageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      title: 'test',
      date: '15 nov',
      location: 'Damascus',
      goingCount: 20,
      organizer: 'Ted',
      organizerImage:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      desc:
          'sdfEFKMfm[mef[mF[PMA{OF[APM[SPODVPSDLM[PSMLG[PSMFSP[MF[PSMF[PAM[PDFMA[DMA[PMLDA[MDLAMFDLMA[DMA[PLMDA[LMFA[PLMF[APLMSF[AMF]]]]]]]]]]]]]]]]]}]]]',
      price: '20',
    ),
    EventCardModel(
      imageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      title: 'test',
      date: '15 nov',
      location: 'Damascus',
      goingCount: 20,
      organizer: 'Ted',
      organizerImage:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      desc:
          'sdfEFKMfm[mef[mF[PMA{OF[APM[SPODVPSDLM[PSMLG[PSMFSP[MF[PSMF[PAM[PDFMA[DMA[PMLDA[MDLAMFDLMA[DMA[PLMDA[LMFA[PLMF[APLMSF[AMF]]]]]]]]]]]]]]]]]}]]]',
      price: '300',
    ),
  ];

  final List<ServiceCardModel> dummyServices = [
    ServiceCardModel(
      providerName: 'Salon Sarah',
      serviceName: 'Hair Styling & Beauty',
      location: 'Damascus',
      placeImageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      providerImageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      description:
          'Expert beauty services from trained professionals in a relaxing environment.',
    ),
    ServiceCardModel(
      providerName: 'FixIt Co.',
      serviceName: 'Home Repair Services',
      location: 'Homs',
      placeImageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      providerImageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      description:
          'Reliable home maintenance and repair for appliances and furniture.',
    ),
    ServiceCardModel(
      providerName: 'FixIt Co.',
      serviceName: 'Home Repair Services',
      location: 'Homs',
      placeImageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      providerImageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      description:
          'Reliable home maintenance and repair for appliances and furniture.',
    ),
    ServiceCardModel(
      providerName: 'FixIt Co.',
      serviceName: 'Home Repair Services',
      location: 'Homs',
      placeImageUrl:
          'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?q=80&w=1974',
      providerImageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=800',
      description:
          'Reliable home maintenance and repair for appliances and furniture.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: [
                  PopularEventsWidget(event: dummyList),
                  Invitefreinds(),
                  ServiceProviderWidget(serviceCardModel: dummyServices),
                ],
              ),
            ),
          ),
          CustomSearchBar(),
        ],
      ),
    );
  }
}
