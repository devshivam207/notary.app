// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.status,
    required this.customer,
    required this.data,
    required this.message,
  });

  int status;
  Customer customer;
  Data data;
  String message;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        customer: Customer.fromJson(json["customer"]),
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "customer": customer.toJson(),
        "data": data.toJson(),
        "message": message,
      };
}

class Customer {
  Customer({
    required this.businessInfo,
    required this.userTimeZone,
    required this.homeLocation,
    required this.photoUrl,
    required this.hasBusiness,
    required this.useBusinessDefault,
    required this.customWebsiteEnabled,
    required this.createdOn,
    required this.isBusinessInfoSet,
    required this.isConnectedCalendar,
    required this.isServiceLinked,
    required this.isReviewMeetingLinkSet,
    required this.isRonMeetingLinkSet,
    required this.isInvoiceConfigsSet,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.pushToken,
    required this.v,
    required this.bio,
    required this.hasWebsite,
    required this.websiteDomainName,
    required this.isCalenderConnected,
    required this.isMobileGeneral,
    required this.isRonOnline,
    required this.isRealEstateOffline,
    required this.isRealEstateOnline,
  });

  BusinessInfo businessInfo;
  String userTimeZone;
  HomeLocation homeLocation;
  String photoUrl;
  bool hasBusiness;
  bool useBusinessDefault;
  bool customWebsiteEnabled;
  DateTime createdOn;
  bool isBusinessInfoSet;
  bool isConnectedCalendar;
  bool isServiceLinked;
  bool isReviewMeetingLinkSet;
  bool isRonMeetingLinkSet;
  bool isInvoiceConfigsSet;
  Id id;
  String firstName;
  String lastName;
  String username;
  String email;
  int phoneNumber;
  List<PushToken> pushToken;
  int v;
  String bio;
  bool hasWebsite;
  String websiteDomainName;
  bool isCalenderConnected;
  bool isMobileGeneral;
  bool isRonOnline;
  bool isRealEstateOffline;
  bool isRealEstateOnline;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        businessInfo: BusinessInfo.fromJson(json["businessInfo"]),
        userTimeZone: json["userTimeZone"],
        homeLocation: HomeLocation.fromJson(json["homeLocation"]),
        photoUrl: json["photoURL"],
        hasBusiness: json["hasBusiness"],
        useBusinessDefault: json["useBusinessDefault"],
        customWebsiteEnabled: json["customWebsiteEnabled"],
        createdOn: DateTime.parse(json["createdOn"]),
        isBusinessInfoSet: json["isBusinessInfoSet"],
        isConnectedCalendar: json["isConnectedCalendar"],
        isServiceLinked: json["isServiceLinked"],
        isReviewMeetingLinkSet: json["isReviewMeetingLinkSet"],
        isRonMeetingLinkSet: json["isRONMeetingLinkSet"],
        isInvoiceConfigsSet: json["isInvoiceConfigsSet"],
        id: idValues.map[json["_id"]]!,
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        pushToken: List<PushToken>.from(
            json["pushToken"].map((x) => PushToken.fromJson(x))),
        v: json["__v"],
        bio: json["bio"],
        hasWebsite: json["hasWebsite"],
        websiteDomainName: json["websiteDomainName"],
        isCalenderConnected: json["isCalenderConnected"],
        isMobileGeneral: json["isMOBILE_GENERAL"],
        isRonOnline: json["isRON_ONLINE"],
        isRealEstateOffline: json["isRealEstate_OFFLINE"],
        isRealEstateOnline: json["isRealEstate_ONLINE"],
      );

  Map<String, dynamic> toJson() => {
        "businessInfo": businessInfo.toJson(),
        "userTimeZone": userTimeZone,
        "homeLocation": homeLocation.toJson(),
        "photoURL": photoUrl,
        "hasBusiness": hasBusiness,
        "useBusinessDefault": useBusinessDefault,
        "customWebsiteEnabled": customWebsiteEnabled,
        "createdOn": createdOn.toIso8601String(),
        "isBusinessInfoSet": isBusinessInfoSet,
        "isConnectedCalendar": isConnectedCalendar,
        "isServiceLinked": isServiceLinked,
        "isReviewMeetingLinkSet": isReviewMeetingLinkSet,
        "isRONMeetingLinkSet": isRonMeetingLinkSet,
        "isInvoiceConfigsSet": isInvoiceConfigsSet,
        "_id": idValues.reverse[id],
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "phoneNumber": phoneNumber,
        "pushToken": List<dynamic>.from(pushToken.map((x) => x.toJson())),
        "__v": v,
        "bio": bio,
        "hasWebsite": hasWebsite,
        "websiteDomainName": websiteDomainName,
        "isCalenderConnected": isCalenderConnected,
        "isMOBILE_GENERAL": isMobileGeneral,
        "isRON_ONLINE": isRonOnline,
        "isRealEstate_OFFLINE": isRealEstateOffline,
        "isRealEstate_ONLINE": isRealEstateOnline,
      };
}

class BusinessInfo {
  BusinessInfo({
    required this.businessLocation,
    required this.country,
    required this.businessName,
    required this.businessImageUrl,
    required this.businessEmail,
    required this.businessNumber,
    required this.businessTaxCode,
    required this.businessFax,
  });

  HomeLocation businessLocation;
  String country;
  BusinessName businessName;
  String businessImageUrl;
  String businessEmail;
  String businessNumber;
  String businessTaxCode;
  String businessFax;

  factory BusinessInfo.fromJson(Map<String, dynamic> json) => BusinessInfo(
        businessLocation: HomeLocation.fromJson(json["businessLocation"]),
        country: json["country"],
        businessName: businessNameValues.map[json["businessName"]]!,
        businessImageUrl: json["businessImageURL"],
        businessEmail: json["businessEmail"],
        businessNumber: json["businessNumber"],
        businessTaxCode: json["businessTaxCode"],
        businessFax: json["businessFax"],
      );

  Map<String, dynamic> toJson() => {
        "businessLocation": businessLocation.toJson(),
        "country": country,
        "businessName": businessNameValues.reverse[businessName],
        "businessImageURL": businessImageUrl,
        "businessEmail": businessEmail,
        "businessNumber": businessNumber,
        "businessTaxCode": businessTaxCode,
        "businessFax": businessFax,
      };
}

class HomeLocation {
  HomeLocation({
    required this.completeAddress,
    required this.lat,
    required this.lon,
    this.zip,
    required this.city,
    required this.area,
    required this.streetAddress,
    this.placeId,
    this.isInOffice,
  });

  CompleteAddress completeAddress;
  double lat;
  double lon;
  int? zip;
  City city;
  BusinessName area;
  StreetAddress streetAddress;
  String? placeId;
  bool? isInOffice;

  factory HomeLocation.fromJson(Map<String, dynamic> json) => HomeLocation(
        completeAddress: completeAddressValues.map[json["completeAddress"]]!,
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        zip: json["zip"],
        city: cityValues.map[json["city"]]!,
        area: businessNameValues.map[json["area"]]!,
        streetAddress: streetAddressValues.map[json["streetAddress"]]!,
        placeId: json["placeId"],
        isInOffice: json["isInOffice"],
      );

  Map<String, dynamic> toJson() => {
        "completeAddress": completeAddressValues.reverse[completeAddress],
        "lat": lat,
        "lon": lon,
        "zip": zip,
        "city": cityValues.reverse[city],
        "area": businessNameValues.reverse[area],
        "streetAddress": streetAddressValues.reverse[streetAddress],
        "placeId": placeId,
        "isInOffice": isInOffice,
      };
}

enum BusinessName { ABC, PALO_ALTO }

final businessNameValues =
    EnumValues({"abc": BusinessName.ABC, "Palo Alto": BusinessName.PALO_ALTO});

enum City { JACKSON_TOWNSHIP, SAN_FRANCISCO }

final cityValues = EnumValues({
  "Jackson,Township": City.JACKSON_TOWNSHIP,
  "San Francisco": City.SAN_FRANCISCO
});

enum CompleteAddress {
  EMPTY,
  THE_1341_TROPICANA_AVENUE_PALO_ALTO_ROAD_STANFORD_CA
}

final completeAddressValues = EnumValues({
  "": CompleteAddress.EMPTY,
  "1341 Tropicana Avenue, Palo Alto Road, Stanford, CA":
      CompleteAddress.THE_1341_TROPICANA_AVENUE_PALO_ALTO_ROAD_STANFORD_CA
});

enum StreetAddress { EMPTY, SANDHILL_ROAD_PA_CA }

final streetAddressValues = EnumValues({
  "": StreetAddress.EMPTY,
  "Sandhill Road PA, CA": StreetAddress.SANDHILL_ROAD_PA_CA
});

enum Id { THE_63871_E8731_E3_DD0_F77_CDAA1_E }

final idValues = EnumValues(
    {"63871e8731e3dd0f77cdaa1e": Id.THE_63871_E8731_E3_DD0_F77_CDAA1_E});

class PushToken {
  PushToken({
    required this.id,
    required this.token,
  });

  String id;
  String token;

  factory PushToken.fromJson(Map<String, dynamic> json) => PushToken(
        id: json["_id"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "token": token,
      };
}

class Data {
  Data({
    required this.visitAnalytics,
    required this.masterServices,
    required this.invoiceBreakups,
    required this.invoiceGraph,
    required this.serviceBreakups,
    required this.upcomingApts,
    required this.contactsCount,
    required this.companiesCount,
    required this.availableServices,
    required this.companiesList,
    required this.suggestedExpenses,
    required this.user,
    this.profileConfigs,
  });

  VisitAnalytics visitAnalytics;
  MasterServices masterServices;
  InvoiceBreakups invoiceBreakups;
  InvoiceGraph invoiceGraph;
  ServiceBreakups serviceBreakups;
  List<UpcomingApt> upcomingApts;
  int contactsCount;
  int companiesCount;
  List<AvailableService> availableServices;
  List<CompaniesList> companiesList;
  List<SuggestedExpense> suggestedExpenses;
  Customer user;
  dynamic profileConfigs;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        visitAnalytics: VisitAnalytics.fromJson(json["visitAnalytics"]),
        masterServices: MasterServices.fromJson(json["masterServices"]),
        invoiceBreakups: InvoiceBreakups.fromJson(json["invoiceBreakups"]),
        invoiceGraph: InvoiceGraph.fromJson(json["invoiceGraph"]),
        serviceBreakups: ServiceBreakups.fromJson(json["serviceBreakups"]),
        upcomingApts: List<UpcomingApt>.from(
            json["upcomingApts"].map((x) => UpcomingApt.fromJson(x))),
        contactsCount: json["contactsCount"],
        companiesCount: json["companiesCount"],
        availableServices: List<AvailableService>.from(
            json["availableServices"].map((x) => AvailableService.fromJson(x))),
        companiesList: List<CompaniesList>.from(
            json["companiesList"].map((x) => CompaniesList.fromJson(x))),
        suggestedExpenses: List<SuggestedExpense>.from(
            json["suggestedExpenses"].map((x) => SuggestedExpense.fromJson(x))),
        user: Customer.fromJson(json["user"]),
        profileConfigs: json["profileConfigs"],
      );

  Map<String, dynamic> toJson() => {
        "visitAnalytics": visitAnalytics.toJson(),
        "masterServices": masterServices.toJson(),
        "invoiceBreakups": invoiceBreakups.toJson(),
        "invoiceGraph": invoiceGraph.toJson(),
        "serviceBreakups": serviceBreakups.toJson(),
        "upcomingApts": List<dynamic>.from(upcomingApts.map((x) => x.toJson())),
        "contactsCount": contactsCount,
        "companiesCount": companiesCount,
        "availableServices":
            List<dynamic>.from(availableServices.map((x) => x.toJson())),
        "companiesList":
            List<dynamic>.from(companiesList.map((x) => x.toJson())),
        "suggestedExpenses":
            List<dynamic>.from(suggestedExpenses.map((x) => x.toJson())),
        "user": user.toJson(),
        "profileConfigs": profileConfigs,
      };
}

class AvailableService {
  AvailableService({
    required this.id,
    required this.notaryId,
    required this.services,
    required this.v,
  });

  String id;
  Id notaryId;
  List<Service> services;
  int v;

  factory AvailableService.fromJson(Map<String, dynamic> json) =>
      AvailableService(
        id: json["_id"],
        notaryId: idValues.map[json["notaryId"]]!,
        services: List<Service>.from(
            json["services"].map((x) => Service.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "notaryId": idValues.reverse[notaryId],
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
        "__v": v,
      };
}

class Service {
  Service({
    required this.serviceId,
    required this.createdOn,
    required this.id,
  });

  String serviceId;
  DateTime createdOn;
  String id;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        serviceId: json["serviceId"],
        createdOn: DateTime.parse(json["createdOn"]),
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "serviceId": serviceId,
        "createdOn": createdOn.toIso8601String(),
        "_id": id,
      };
}

class CompaniesList {
  CompaniesList({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory CompaniesList.fromJson(Map<String, dynamic> json) => CompaniesList(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class InvoiceBreakups {
  InvoiceBreakups({
    required this.all,
    required this.paid,
    required this.due,
    required this.cancel,
  });

  All all;
  All paid;
  All due;
  All cancel;

  factory InvoiceBreakups.fromJson(Map<String, dynamic> json) =>
      InvoiceBreakups(
        all: All.fromJson(json["all"]),
        paid: All.fromJson(json["paid"]),
        due: All.fromJson(json["due"]),
        cancel: All.fromJson(json["cancel"]),
      );

  Map<String, dynamic> toJson() => {
        "all": all.toJson(),
        "paid": paid.toJson(),
        "due": due.toJson(),
        "cancel": cancel.toJson(),
      };
}

class All {
  All({
    required this.count,
    required this.value,
  });

  int count;
  int value;

  factory All.fromJson(Map<String, dynamic> json) => All(
        count: json["count"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "value": value,
      };
}

class InvoiceGraph {
  InvoiceGraph({
    required this.single,
    required this.multi,
  });

  Single single;
  Multi multi;

  factory InvoiceGraph.fromJson(Map<String, dynamic> json) => InvoiceGraph(
        single: Single.fromJson(json["single"]),
        multi: Multi.fromJson(json["multi"]),
      );

  Map<String, dynamic> toJson() => {
        "single": single.toJson(),
        "multi": multi.toJson(),
      };
}

class Multi {
  Multi({
    required this.labels,
    required this.dataSets,
  });

  List<String> labels;
  List<DataSet> dataSets;

  factory Multi.fromJson(Map<String, dynamic> json) => Multi(
        labels: List<String>.from(json["labels"].map((x) => x)),
        dataSets: List<DataSet>.from(
            json["dataSets"].map((x) => DataSet.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "labels": List<dynamic>.from(labels.map((x) => x)),
        "dataSets": List<dynamic>.from(dataSets.map((x) => x.toJson())),
      };
}

class DataSet {
  DataSet({
    required this.lsaOnline,
    required this.lsaOffline,
    required this.genOnline,
    required this.genOffline,
    required this.others,
  });

  int lsaOnline;
  int lsaOffline;
  int genOnline;
  int genOffline;
  int others;

  factory DataSet.fromJson(Map<String, dynamic> json) => DataSet(
        lsaOnline: json["lsaOnline"],
        lsaOffline: json["lsaOffline"],
        genOnline: json["genOnline"],
        genOffline: json["genOffline"],
        others: json["others"],
      );

  Map<String, dynamic> toJson() => {
        "lsaOnline": lsaOnline,
        "lsaOffline": lsaOffline,
        "genOnline": genOnline,
        "genOffline": genOffline,
        "others": others,
      };
}

class Single {
  Single({
    required this.labels,
    required this.dataSets,
  });

  List<String> labels;
  List<int> dataSets;

  factory Single.fromJson(Map<String, dynamic> json) => Single(
        labels: List<String>.from(json["labels"].map((x) => x)),
        dataSets: List<int>.from(json["dataSets"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "labels": List<dynamic>.from(labels.map((x) => x)),
        "dataSets": List<dynamic>.from(dataSets.map((x) => x)),
      };
}

class MasterServices {
  MasterServices({
    required this.lsaOffline,
    required this.lsaOnline,
    required this.genOffline,
    required this.genOnline,
    required this.others,
  });

  List<Line> lsaOffline;
  List<Line> lsaOnline;
  List<Line> genOffline;
  List<Line> genOnline;
  List<dynamic> others;

  factory MasterServices.fromJson(Map<String, dynamic> json) => MasterServices(
        lsaOffline:
            List<Line>.from(json["LSA_OFFLINE"].map((x) => Line.fromJson(x))),
        lsaOnline:
            List<Line>.from(json["LSA_ONLINE"].map((x) => Line.fromJson(x))),
        genOffline:
            List<Line>.from(json["GEN_OFFLINE"].map((x) => Line.fromJson(x))),
        genOnline:
            List<Line>.from(json["GEN_ONLINE"].map((x) => Line.fromJson(x))),
        others: List<dynamic>.from(json["OTHERS"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "LSA_OFFLINE": List<dynamic>.from(lsaOffline.map((x) => x.toJson())),
        "LSA_ONLINE": List<dynamic>.from(lsaOnline.map((x) => x.toJson())),
        "GEN_OFFLINE": List<dynamic>.from(genOffline.map((x) => x.toJson())),
        "GEN_ONLINE": List<dynamic>.from(genOnline.map((x) => x.toJson())),
        "OTHERS": List<dynamic>.from(others.map((x) => x)),
      };
}

class Line {
  Line({
    required this.serviceName,
    required this.description,
    required this.timeToBlockinMins,
    required this.manualPricingFlag,
    required this.cost,
    required this.timeBlockBeforeAfter,
    required this.serviceId,
  });

  String serviceName;
  String description;
  int timeToBlockinMins;
  bool manualPricingFlag;
  int cost;
  int timeBlockBeforeAfter;
  ServiceId serviceId;

  factory Line.fromJson(Map<String, dynamic> json) => Line(
        serviceName: json["serviceName"],
        description: json["description"],
        timeToBlockinMins: json["timeToBlockinMins"],
        manualPricingFlag: json["manualPricingFlag"],
        cost: json["cost"],
        timeBlockBeforeAfter: json["timeBlockBeforeAfter"],
        serviceId: serviceIdValues.map[json["serviceId"]]!,
      );

  Map<String, dynamic> toJson() => {
        "serviceName": serviceName,
        "description": description,
        "timeToBlockinMins": timeToBlockinMins,
        "manualPricingFlag": manualPricingFlag,
        "cost": cost,
        "timeBlockBeforeAfter": timeBlockBeforeAfter,
        "serviceId": serviceIdValues.reverse[serviceId],
      };
}

enum ServiceId { GEN_OFFLINE, GEN_ONLINE, LSA_OFFLINE, LSA_ONLINE }

final serviceIdValues = EnumValues({
  "GEN_OFFLINE": ServiceId.GEN_OFFLINE,
  "GEN_ONLINE": ServiceId.GEN_ONLINE,
  "LSA_OFFLINE": ServiceId.LSA_OFFLINE,
  "LSA_ONLINE": ServiceId.LSA_ONLINE
});

class ServiceBreakups {
  ServiceBreakups({
    required this.lsaOnline,
    required this.lsaOffline,
    required this.genOnline,
    required this.genOffline,
    required this.others,
  });

  GenOffline lsaOnline;
  GenOffline lsaOffline;
  GenOffline genOnline;
  GenOffline genOffline;
  GenOffline others;

  factory ServiceBreakups.fromJson(Map<String, dynamic> json) =>
      ServiceBreakups(
        lsaOnline: GenOffline.fromJson(json["lsaOnline"]),
        lsaOffline: GenOffline.fromJson(json["lsaOffline"]),
        genOnline: GenOffline.fromJson(json["genOnline"]),
        genOffline: GenOffline.fromJson(json["genOffline"]),
        others: GenOffline.fromJson(json["others"]),
      );

  Map<String, dynamic> toJson() => {
        "lsaOnline": lsaOnline.toJson(),
        "lsaOffline": lsaOffline.toJson(),
        "genOnline": genOnline.toJson(),
        "genOffline": genOffline.toJson(),
        "others": others.toJson(),
      };
}

class GenOffline {
  GenOffline({
    required this.count,
    this.cost,
  });

  int count;
  int? cost;

  factory GenOffline.fromJson(Map<String, dynamic> json) => GenOffline(
        count: json["count"],
        cost: json["cost"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "cost": cost,
      };
}

class SuggestedExpense {
  SuggestedExpense({
    required this.expenseName,
    required this.description,
    this.vendorName,
    this.notes,
    required this.cost,
    required this.category,
    required this.internalKeyForKnownExpenses,
    required this.serviceId,
  });

  String expenseName;
  String description;
  dynamic vendorName;
  dynamic notes;
  int cost;
  String category;
  String internalKeyForKnownExpenses;
  ServiceId serviceId;

  factory SuggestedExpense.fromJson(Map<String, dynamic> json) =>
      SuggestedExpense(
        expenseName: json["expenseName"],
        description: json["description"],
        vendorName: json["vendorName"],
        notes: json["notes"],
        cost: json["cost"],
        category: json["category"],
        internalKeyForKnownExpenses: json["internalKeyForKnownExpenses"],
        serviceId: serviceIdValues.map[json["serviceId"]]!,
      );

  Map<String, dynamic> toJson() => {
        "expenseName": expenseName,
        "description": description,
        "vendorName": vendorName,
        "notes": notes,
        "cost": cost,
        "category": category,
        "internalKeyForKnownExpenses": internalKeyForKnownExpenses,
        "serviceId": serviceIdValues.reverse[serviceId],
      };
}

class UpcomingApt {
  UpcomingApt({
    this.tracking,
    required this.serviceDetails,
    required this.place,
    required this.invoiceStatus,
    required this.invoices,
    required this.activityHistory,
    required this.signerLeadIds,
    required this.witnessids,
    required this.id,
    required this.isCancelledBefore,
    required this.isRejected,
    required this.isReschduled,
    required this.isDeleted,
    required this.isRealEstateTransaction,
    required this.isPaymentNeedTobeEnterered,
    required this.distanceFromHomeLocation,
    required this.isMileageEntryRequired,
    required this.totalMileageExpense,
    required this.totalMasterExpense,
    required this.totalOtherExpenses,
    required this.profitOnOrder,
    required this.profitWithAllExpense,
    required this.profileWithMileageOnly,
    required this.profileWithOtherExpenses,
    required this.isOnlineSigning,
    required this.isRealEstateAndEscrowNumberNotSet,
    this.escrowNumber,
    required this.signers,
    required this.aptTimeStamp,
    required this.signingTime,
    required this.readableTime,
    required this.isMileageEntered,
    required this.totalMileage,
    required this.mileageEntrySource,
    required this.mileageEnteredTimeStamp,
    required this.mileages,
    required this.isNotarialActsEntered,
    required this.totalNotarialActsCost,
    required this.totalNotarialActsDone,
    required this.notarialActsHistory,
    required this.isExpenseEntered,
    required this.expenses,
    required this.status,
    required this.paymentUpdateSource,
    required this.leadId,
    this.companyId,
    required this.notaryId,
    required this.notes,
    required this.witnessDetails,
    required this.quoteLineItems,
    required this.v,
    required this.payments,
    this.isExpenseNotRequired,
  });

  Tracking? tracking;
  ServiceDetails serviceDetails;
  HomeLocation place;
  int invoiceStatus;
  List<String> invoices;
  List<dynamic> activityHistory;
  List<SignerLeadId> signerLeadIds;
  List<dynamic> witnessids;
  String id;
  bool isCancelledBefore;
  bool isRejected;
  bool isReschduled;
  bool isDeleted;
  bool isRealEstateTransaction;
  bool isPaymentNeedTobeEnterered;
  double distanceFromHomeLocation;
  bool isMileageEntryRequired;
  int totalMileageExpense;
  int totalMasterExpense;
  int totalOtherExpenses;
  int profitOnOrder;
  int profitWithAllExpense;
  int profileWithMileageOnly;
  int profileWithOtherExpenses;
  bool isOnlineSigning;
  bool isRealEstateAndEscrowNumberNotSet;
  String? escrowNumber;
  List<Signer?> signers;
  int aptTimeStamp;
  int signingTime;
  ReadableTime readableTime;
  bool isMileageEntered;
  int totalMileage;
  MileageEntrySource mileageEntrySource;
  DateTime mileageEnteredTimeStamp;
  List<Mileage> mileages;
  bool isNotarialActsEntered;
  int totalNotarialActsCost;
  int totalNotarialActsDone;
  List<NotarialActsHistory> notarialActsHistory;
  bool isExpenseEntered;
  List<Expense> expenses;
  int status;
  PaymentUpdateSource paymentUpdateSource;
  LeadId leadId;
  CompanyId? companyId;
  Id notaryId;
  List<dynamic> notes;
  List<dynamic> witnessDetails;
  List<dynamic> quoteLineItems;
  int v;
  List<dynamic> payments;
  bool? isExpenseNotRequired;

  factory UpcomingApt.fromJson(Map<String, dynamic> json) => UpcomingApt(
        tracking: json["tracking"] == null
            ? null
            : Tracking.fromJson(json["tracking"]),
        serviceDetails: ServiceDetails.fromJson(json["serviceDetails"]),
        place: HomeLocation.fromJson(json["place"]),
        invoiceStatus: json["invoiceStatus"],
        invoices: List<String>.from(json["invoices"].map((x) => x)),
        activityHistory:
            List<dynamic>.from(json["activityHistory"].map((x) => x)),
        signerLeadIds: List<SignerLeadId>.from(
            json["signerLeadIds"].map((x) => signerLeadIdValues.map[x]!)),
        witnessids: List<dynamic>.from(json["witnessids"].map((x) => x)),
        id: json["_id"],
        isCancelledBefore: json["isCancelledBefore"],
        isRejected: json["isRejected"],
        isReschduled: json["isReschduled"],
        isDeleted: json["isDeleted"],
        isRealEstateTransaction: json["isRealEstateTransaction"],
        isPaymentNeedTobeEnterered: json["isPaymentNeedTobeEnterered"],
        distanceFromHomeLocation: json["distanceFromHomeLocation"]?.toDouble(),
        isMileageEntryRequired: json["isMileageEntryRequired"],
        totalMileageExpense: json["totalMileageExpense"],
        totalMasterExpense: json["totalMasterExpense"],
        totalOtherExpenses: json["totalOtherExpenses"],
        profitOnOrder: json["ProfitOnOrder"],
        profitWithAllExpense: json["profitWithAllExpense"],
        profileWithMileageOnly: json["profileWithMileageOnly"],
        profileWithOtherExpenses: json["profileWithOtherExpenses"],
        isOnlineSigning: json["isOnlineSigning"],
        isRealEstateAndEscrowNumberNotSet:
            json["isRealEstate_andEscrowNumberNotSet"],
        escrowNumber: json["escrowNumber"],
        signers: List<Signer?>.from(
            json["signers"].map((x) => x == null ? null : Signer.fromJson(x))),
        aptTimeStamp: json["aptTimeStamp"],
        signingTime: json["signingTime"],
        readableTime: readableTimeValues.map[json["readableTime"]]!,
        isMileageEntered: json["isMileageEntered"],
        totalMileage: json["totalMileage"],
        mileageEntrySource:
            mileageEntrySourceValues.map[json["mileageEntrySource"]]!,
        mileageEnteredTimeStamp:
            DateTime.parse(json["mileageEnteredTimeStamp"]),
        mileages: List<Mileage>.from(
            json["mileages"].map((x) => Mileage.fromJson(x))),
        isNotarialActsEntered: json["isNotarialActsEntered"],
        totalNotarialActsCost: json["totalNotarialActsCost"],
        totalNotarialActsDone: json["totalNotarialActsDone"],
        notarialActsHistory: List<NotarialActsHistory>.from(
            json["notarialActsHistory"]
                .map((x) => NotarialActsHistory.fromJson(x))),
        isExpenseEntered: json["isExpenseEntered"],
        expenses: List<Expense>.from(
            json["expenses"].map((x) => Expense.fromJson(x))),
        status: json["status"],
        paymentUpdateSource:
            paymentUpdateSourceValues.map[json["paymentUpdateSource"]]!,
        leadId: leadIdValues.map[json["leadId"]]!,
        companyId: companyIdValues.map[json["companyId"]],
        notaryId: idValues.map[json["notaryId"]]!,
        notes: List<dynamic>.from(json["notes"].map((x) => x)),
        witnessDetails:
            List<dynamic>.from(json["witnessDetails"].map((x) => x)),
        quoteLineItems:
            List<dynamic>.from(json["quoteLineItems"].map((x) => x)),
        v: json["__v"],
        payments: List<dynamic>.from(json["payments"].map((x) => x)),
        isExpenseNotRequired: json["isExpenseNotRequired"],
      );

  Map<String, dynamic> toJson() => {
        "tracking": tracking?.toJson(),
        "serviceDetails": serviceDetails.toJson(),
        "place": place.toJson(),
        "invoiceStatus": invoiceStatus,
        "invoices": List<dynamic>.from(invoices.map((x) => x)),
        "activityHistory": List<dynamic>.from(activityHistory.map((x) => x)),
        "signerLeadIds": List<dynamic>.from(
            signerLeadIds.map((x) => signerLeadIdValues.reverse[x])),
        "witnessids": List<dynamic>.from(witnessids.map((x) => x)),
        "_id": id,
        "isCancelledBefore": isCancelledBefore,
        "isRejected": isRejected,
        "isReschduled": isReschduled,
        "isDeleted": isDeleted,
        "isRealEstateTransaction": isRealEstateTransaction,
        "isPaymentNeedTobeEnterered": isPaymentNeedTobeEnterered,
        "distanceFromHomeLocation": distanceFromHomeLocation,
        "isMileageEntryRequired": isMileageEntryRequired,
        "totalMileageExpense": totalMileageExpense,
        "totalMasterExpense": totalMasterExpense,
        "totalOtherExpenses": totalOtherExpenses,
        "ProfitOnOrder": profitOnOrder,
        "profitWithAllExpense": profitWithAllExpense,
        "profileWithMileageOnly": profileWithMileageOnly,
        "profileWithOtherExpenses": profileWithOtherExpenses,
        "isOnlineSigning": isOnlineSigning,
        "isRealEstate_andEscrowNumberNotSet": isRealEstateAndEscrowNumberNotSet,
        "escrowNumber": escrowNumber,
        "signers": List<dynamic>.from(signers.map((x) => x?.toJson())),
        "aptTimeStamp": aptTimeStamp,
        "signingTime": signingTime,
        "readableTime": readableTimeValues.reverse[readableTime],
        "isMileageEntered": isMileageEntered,
        "totalMileage": totalMileage,
        "mileageEntrySource":
            mileageEntrySourceValues.reverse[mileageEntrySource],
        "mileageEnteredTimeStamp": mileageEnteredTimeStamp.toIso8601String(),
        "mileages": List<dynamic>.from(mileages.map((x) => x.toJson())),
        "isNotarialActsEntered": isNotarialActsEntered,
        "totalNotarialActsCost": totalNotarialActsCost,
        "totalNotarialActsDone": totalNotarialActsDone,
        "notarialActsHistory":
            List<dynamic>.from(notarialActsHistory.map((x) => x.toJson())),
        "isExpenseEntered": isExpenseEntered,
        "expenses": List<dynamic>.from(expenses.map((x) => x.toJson())),
        "status": status,
        "paymentUpdateSource":
            paymentUpdateSourceValues.reverse[paymentUpdateSource],
        "leadId": leadIdValues.reverse[leadId],
        "companyId": companyIdValues.reverse[companyId],
        "notaryId": idValues.reverse[notaryId],
        "notes": List<dynamic>.from(notes.map((x) => x)),
        "witnessDetails": List<dynamic>.from(witnessDetails.map((x) => x)),
        "quoteLineItems": List<dynamic>.from(quoteLineItems.map((x) => x)),
        "__v": v,
        "payments": List<dynamic>.from(payments.map((x) => x)),
        "isExpenseNotRequired": isExpenseNotRequired,
      };
}

enum CompanyId { THE_6389_CE3_EEA3_A0600169634_D3 }

final companyIdValues = EnumValues(
    {"6389ce3eea3a0600169634d3": CompanyId.THE_6389_CE3_EEA3_A0600169634_D3});

class Expense {
  Expense({
    required this.id,
    required this.expenseName,
    required this.description,
    required this.dateAdded,
    required this.receiptUrl,
    required this.vendorName,
    required this.notes,
    required this.cost,
    required this.category,
    required this.isIncomeCategory,
    required this.internalKeyForKnownExpenses,
  });

  String id;
  ExpenseName expenseName;
  Description description;
  DateAdded dateAdded;
  String receiptUrl;
  VendorName vendorName;
  Notes notes;
  int cost;
  Category category;
  bool isIncomeCategory;
  Category internalKeyForKnownExpenses;

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json["_id"],
        expenseName: expenseNameValues.map[json["expenseName"]]!,
        description: descriptionValues.map[json["description"]]!,
        dateAdded: dateAddedValues.map[json["dateAdded"]]!,
        receiptUrl: json["receiptURL"],
        vendorName: vendorNameValues.map[json["vendorName"]]!,
        notes: notesValues.map[json["notes"]]!,
        cost: json["cost"],
        category: categoryValues.map[json["category"]]!,
        isIncomeCategory: json["isIncomeCategory"],
        internalKeyForKnownExpenses:
            categoryValues.map[json["internalKeyForKnownExpenses"]]!,
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "expenseName": expenseNameValues.reverse[expenseName],
        "description": descriptionValues.reverse[description],
        "dateAdded": dateAddedValues.reverse[dateAdded],
        "receiptURL": receiptUrl,
        "vendorName": vendorNameValues.reverse[vendorName],
        "notes": notesValues.reverse[notes],
        "cost": cost,
        "category": categoryValues.reverse[category],
        "isIncomeCategory": isIncomeCategory,
        "internalKeyForKnownExpenses":
            categoryValues.reverse[internalKeyForKnownExpenses],
      };
}

enum Category { PRINT }

final categoryValues = EnumValues({"PRINT": Category.PRINT});

enum DateAdded {
  TUE_MAR_212023135037_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  TUE_MAR_212023135038_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  TUE_MAR_212023135039_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  TUE_MAR_212023135040_GMT_0000_COORDINATED_UNIVERSAL_TIME
}

final dateAddedValues = EnumValues({
  "Tue Mar 21 2023 13:50:37 GMT+0000 (Coordinated Universal Time)":
      DateAdded.TUE_MAR_212023135037_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  "Tue Mar 21 2023 13:50:38 GMT+0000 (Coordinated Universal Time)":
      DateAdded.TUE_MAR_212023135038_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  "Tue Mar 21 2023 13:50:39 GMT+0000 (Coordinated Universal Time)":
      DateAdded.TUE_MAR_212023135039_GMT_0000_COORDINATED_UNIVERSAL_TIME,
  "Tue Mar 21 2023 13:50:40 GMT+0000 (Coordinated Universal Time)":
      DateAdded.TUE_MAR_212023135040_GMT_0000_COORDINATED_UNIVERSAL_TIME
});

enum Description { COST_FOR_PRINTING_54_PAGES_FOR_DCUMENT }

final descriptionValues = EnumValues({
  "Cost for printing 54 pages for Dcument":
      Description.COST_FOR_PRINTING_54_PAGES_FOR_DCUMENT
});

enum ExpenseName { PRINTING_DOCUEMNTS, TRAVEL_DISTANCE, HOT_SPORT }

final expenseNameValues = EnumValues({
  "HotSport": ExpenseName.HOT_SPORT,
  "Printing Docuemnts": ExpenseName.PRINTING_DOCUEMNTS,
  "Travel Distance": ExpenseName.TRAVEL_DISTANCE
});

enum Notes { JOHN_WAS_GOOD }

final notesValues = EnumValues({"John was Good": Notes.JOHN_WAS_GOOD});

enum VendorName { JOHNS_PRINTER }

final vendorNameValues =
    EnumValues({"Johns Printer": VendorName.JOHNS_PRINTER});

enum LeadId {
  THE_6389_D3_C594_D3_AD0016866_EBF,
  THE_6389_D3_C594_D3_AD0016866_EBC
}

final leadIdValues = EnumValues({
  "6389d3c594d3ad0016866ebc": LeadId.THE_6389_D3_C594_D3_AD0016866_EBC,
  "6389d3c594d3ad0016866ebf": LeadId.THE_6389_D3_C594_D3_AD0016866_EBF
});

enum MileageEntrySource { WEBSITE, MOBILE }

final mileageEntrySourceValues = EnumValues({
  "Mobile": MileageEntrySource.MOBILE,
  "Website": MileageEntrySource.WEBSITE
});

class Mileage {
  Mileage({
    required this.id,
    required this.mileage,
  });

  String id;
  int mileage;

  factory Mileage.fromJson(Map<String, dynamic> json) => Mileage(
        id: json["_id"],
        mileage: json["mileage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "mileage": mileage,
      };
}

class NotarialActsHistory {
  NotarialActsHistory({
    required this.id,
    required this.dateDone,
    required this.actsNumber,
    required this.actsPerCost,
  });

  String id;
  DateTime dateDone;
  int actsNumber;
  int actsPerCost;

  factory NotarialActsHistory.fromJson(Map<String, dynamic> json) =>
      NotarialActsHistory(
        id: json["_id"],
        dateDone: DateTime.parse(json["dateDone"]),
        actsNumber: json["actsNumber"],
        actsPerCost: json["actsPerCost"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "dateDone": dateDone.toIso8601String(),
        "actsNumber": actsNumber,
        "actsPerCost": actsPerCost,
      };
}

enum PaymentUpdateSource { DESKTOP, MOBILE }

final paymentUpdateSourceValues = EnumValues({
  "Desktop": PaymentUpdateSource.DESKTOP,
  "Mobile": PaymentUpdateSource.MOBILE
});

enum ReadableTime { THE_121823520_AM }

final readableTimeValues =
    EnumValues({"12/18/23 @ 5:20 am": ReadableTime.THE_121823520_AM});

class ServiceDetails {
  ServiceDetails({
    required this.serviceName,
    required this.serviceId,
    required this.cost,
  });

  ServiceName serviceName;
  ServiceId serviceId;
  int cost;

  factory ServiceDetails.fromJson(Map<String, dynamic> json) => ServiceDetails(
        serviceName: serviceNameValues.map[json["serviceName"]]!,
        serviceId: serviceIdValues.map[json["serviceId"]]!,
        cost: json["cost"],
      );

  Map<String, dynamic> toJson() => {
        "serviceName": serviceNameValues.reverse[serviceName],
        "serviceId": serviceIdValues.reverse[serviceId],
        "cost": cost,
      };
}

enum ServiceName { SELLER_PACKAGES, BUYER_PACKAGES }

final serviceNameValues = EnumValues({
  "Buyer Packages": ServiceName.BUYER_PACKAGES,
  "Seller Packages": ServiceName.SELLER_PACKAGES
});

enum SignerLeadId {
  THE_6389_D3_C594_D3_AD0016866_EBF,
  THE_638_F270_CA78_F20353_AE7_D949
}

final signerLeadIdValues = EnumValues({
  "6389d3c594d3ad0016866ebf": SignerLeadId.THE_6389_D3_C594_D3_AD0016866_EBF,
  "638f270ca78f20353ae7d949": SignerLeadId.THE_638_F270_CA78_F20353_AE7_D949
});

class Signer {
  Signer({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.type,
    required this.phoneNumber,
    this.signerAddress,
    required this.emailAddress,
  });

  String id;
  FirstName firstName;
  LastName lastName;
  Type type;
  String phoneNumber;
  dynamic signerAddress;
  EmailAddress emailAddress;

  factory Signer.fromJson(Map<String, dynamic> json) => Signer(
        id: json["_id"],
        firstName: firstNameValues.map[json["firstName"]]!,
        lastName: lastNameValues.map[json["lastName"]]!,
        type: typeValues.map[json["type"]]!,
        phoneNumber: json["phoneNumber"],
        signerAddress: json["signerAddress"],
        emailAddress: emailAddressValues.map[json["emailAddress"]]!,
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstNameValues.reverse[firstName],
        "lastName": lastNameValues.reverse[lastName],
        "type": typeValues.reverse[type],
        "phoneNumber": phoneNumber,
        "signerAddress": signerAddress,
        "emailAddress": emailAddressValues.reverse[emailAddress],
      };
}

enum EmailAddress {
  ARAVIND_GMAIL_COM,
  NANDHAKUMAR1411_GMAIL_COM,
  ASHLEY_GMAIL_COM,
  PROSIGNINGSOFFLINE_GMAIL_COM,
  JOHN_GMAIL_COM,
  NATALIE_GMAIL_COM
}

final emailAddressValues = EnumValues({
  "aravind@gmail.com": EmailAddress.ARAVIND_GMAIL_COM,
  "ashley@gmail.com": EmailAddress.ASHLEY_GMAIL_COM,
  "john@gmail.com": EmailAddress.JOHN_GMAIL_COM,
  "nandhakumar1411@gmail.com": EmailAddress.NANDHAKUMAR1411_GMAIL_COM,
  "natalie@gmail.com": EmailAddress.NATALIE_GMAIL_COM,
  "prosigningsoffline@gmail.com": EmailAddress.PROSIGNINGSOFFLINE_GMAIL_COM
});

enum FirstName { ARVIND, NANDHA, ASHLEY, PATRICIA, JOHN, NATALIE }

final firstNameValues = EnumValues({
  "Arvind  ": FirstName.ARVIND,
  "Ashley ": FirstName.ASHLEY,
  "John ": FirstName.JOHN,
  "Nandha ": FirstName.NANDHA,
  "Natalie ": FirstName.NATALIE,
  "Patricia ": FirstName.PATRICIA
});

enum LastName { KUMAR, BOLDEN, BELL, JACOBS, PORTMAN }

final lastNameValues = EnumValues({
  "Bell": LastName.BELL,
  "Bolden": LastName.BOLDEN,
  "Jacobs": LastName.JACOBS,
  "Kumar": LastName.KUMAR,
  "Portman": LastName.PORTMAN
});

enum Type { SIGNER }

final typeValues = EnumValues({"signer": Type.SIGNER});

class Tracking {
  Tracking({
    required this.sentVia,
    required this.sentOn,
    required this.trackingNumber,
  });

  SentVia sentVia;
  DateAdded sentOn;
  String trackingNumber;

  factory Tracking.fromJson(Map<String, dynamic> json) => Tracking(
        sentVia: sentViaValues.map[json["SentVia"]]!,
        sentOn: dateAddedValues.map[json["sentOn"]]!,
        trackingNumber: json["trackingNumber"],
      );

  Map<String, dynamic> toJson() => {
        "SentVia": sentViaValues.reverse[sentVia],
        "sentOn": dateAddedValues.reverse[sentOn],
        "trackingNumber": trackingNumber,
      };
}

enum SentVia { FED_EX }

final sentViaValues = EnumValues({"Fed Ex": SentVia.FED_EX});

class VisitAnalytics {
  VisitAnalytics({
    required this.totalVisitCount,
    required this.todayVisitCount,
    required this.monthlyVisitCount,
    required this.visitAnalytics,
  });

  int totalVisitCount;
  int todayVisitCount;
  int monthlyVisitCount;
  List<VisitAnalytic> visitAnalytics;

  factory VisitAnalytics.fromJson(Map<String, dynamic> json) => VisitAnalytics(
        totalVisitCount: json["totalVisitCount"],
        todayVisitCount: json["todayVisitCount"],
        monthlyVisitCount: json["monthlyVisitCount"],
        visitAnalytics: List<VisitAnalytic>.from(
            json["visitAnalytics"].map((x) => VisitAnalytic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalVisitCount": totalVisitCount,
        "todayVisitCount": todayVisitCount,
        "monthlyVisitCount": monthlyVisitCount,
        "visitAnalytics":
            List<dynamic>.from(visitAnalytics.map((x) => x.toJson())),
      };
}

class VisitAnalytic {
  VisitAnalytic({
    required this.month,
    required this.visits,
  });

  int month;
  int visits;

  factory VisitAnalytic.fromJson(Map<String, dynamic> json) => VisitAnalytic(
        month: json["month"],
        visits: json["visits"],
      );

  Map<String, dynamic> toJson() => {
        "month": month,
        "visits": visits,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
