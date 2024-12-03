import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/prefs.dart';

  Future<void> main() async {
    await NotificationController.initializeLocalNotifications();
    await NotificationController.getInitialNotificationAction();
    
    runApp(MyApp(language: PreferenceUtils.getString("Language"),));
  }

  class NotificationController extends ChangeNotifier {
    static final NotificationController _instance =
    NotificationController._internal();

    factory NotificationController() {
      return _instance;
    }

    NotificationController._internal();

  ReceivedAction? initialAction;

  static Future<void> initializeLocalNotifications() async {
    await AwesomeNotifications().initialize(
        'resource://drawable/res_app_icon',
        [
          NotificationChannel(
              channelKey: 'Tonsils',
              channelName: 'Tonsils',
              channelDescription: 'Notification alerts for tonsillectomy',
              playSound: true,
              onlyAlertOnce: true,
              channelShowBadge: false, // Should control badges showing in app or not
              defaultColor: Colors.white,
              importance: NotificationImportance.High
          )
        ],
        debug: true);

    // Get initial notification action is optional
    _instance.initialAction = await AwesomeNotifications()
        .getInitialNotificationAction(removeFromActionEvents: false);
  }

  static Future<void> startListeningNotificationEvents() async {
    AwesomeNotifications()
        .setListeners(onActionReceivedMethod: onActionReceivedMethod);
  }

  static Future<void> getInitialNotificationAction() async {
    ReceivedAction? receivedAction = await AwesomeNotifications()
        .getInitialNotificationAction(removeFromActionEvents: false);
    if (receivedAction == null) return;
      print('Notification action launched app: $receivedAction');
  }


  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future <void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    // Navigate into pages, opening the notification details page over any currently open page
    if (receivedAction.body == weekBeforeMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_week_before',
              (route) =>
          (route.settings.name != '/notification_week_before') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayBeforeMessageEnglishA) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_before_a',
              (route) =>
          (route.settings.name != '/notification_day_before_a') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayBeforeMessageEnglishB) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_before_b',
              (route) =>
          (route.settings.name != '/notification_day_before_b') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayOfSurgeryMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_dos',
              (route) =>
          (route.settings.name != '/notification_dos') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayAfterMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_after',
              (route) =>
          (route.settings.name != '/notification_day_after') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == secondDayAfterMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_second_day_after',
              (route) =>
          (route.settings.name != '/notification_second_day_after') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == fifthDayAfterMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_fifth_day_after',
              (route) =>
          (route.settings.name != '/notification_fifth_day_after') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == weekAfterMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_week_after',
              (route) =>
          (route.settings.name != '/notification_week_after') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == tenthDayAfterMessageEnglish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_tenth_day_after',
              (route) =>
          (route.settings.name != '/notification_tenth_day_after') ||
              route.isFirst,
          arguments: receivedAction);
    }

    if (receivedAction.body == weekBeforeMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_week_before_spanish',
              (route) =>
          (route.settings.name != '/notification_week_before_spanish') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayBeforeMessageSpanishA) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_before_a_spanish',
              (route) =>
          (route.settings.name != '/notification_day_before_a_spanish') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayBeforeMessageSpanishB) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_before_b_spanish',
              (route) =>
          (route.settings.name != '/notification_day_before_b_spanish') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayOfSurgeryMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_dos_spanish',
              (route) =>
          (route.settings.name != '/notification_dos_spanish') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == dayAfterMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_day_after_spanish',
              (route) =>
          (route.settings.name != '/notification_day_after_spanish') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == secondDayAfterMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_second_day_after_spanish',
              (route) =>
          (route.settings.name != '/notification_second_day_after_spanish') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == fifthDayAfterMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_fifth_day_after_spanish',
              (route) =>
          (route.settings.name != '/notification_fifth_day_after_spanish') ||
              route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == weekAfterMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_week_after_spanish',
              (route) =>
          (route.settings.name != '/notification_week_after_spanish') || route.isFirst,
          arguments: receivedAction);
    }
    if (receivedAction.body == tenthDayAfterMessageSpanish) {
      MyApp.navigatorKey.currentState?.pushNamedAndRemoveUntil(
          '/notification_tenth_day_after_spanish',
              (route) =>
          (route.settings.name != '/notification_tenth_day_after_spanish') ||
              route.isFirst,
          arguments: receivedAction);
    }
  }

    // English Title
    static String englishTitle = "Ready for Surgery";
    /// Define notification body text
    static var weekBeforeMessageEnglish = "Kids have less anxiety about surgery when they know what to expect. "
        "Talk to your child about surgery and what the day will be like. Go through the Ready for Surgery app together.";
    static var dayBeforeMessageEnglishA = "Surgery is tomorrow! Kids can often sense when their parents are worried. "
        "Try to be upbeat and positive around your child, even if you’re feeling a little anxious.";
    static var dayBeforeMessageEnglishB = "Your child might be feeling nervous about surgery. "
        "Today is a good day to go through the app again and ask your child if they have questions. "
        "Remember to check your doctor’s instructions about eating and drinking before surgery.";
    static var dayOfSurgeryMessageEnglish = "The big day is here! Going into surgery with an empty stomach makes your child’s surgery safe, so no breakfast this morning. "
        "Most kids can have clear drinks like water, apple juice, or sports drinks before surgery, but always follow your doctor’s advice.";
    static var dayAfterMessageEnglish = "Recovering from surgery is hard work. "
        "Your child may sleep more than normal in the few days following surgery. "
        "Keep plenty of cold drinks around when your child is awake. "
        "Think about making a chart to help you stay on top of the pain medicine schedule.";
    static var secondDayAfterMessageEnglish = "Your child might have a fever in the first 2-3 days after surgery. "
        "Most kids who have a fever right after surgery are not sick—just trying to get better! "
        "If your child’s temperature doesn’t come down after using pain medicine, call your doctor.";
    static var fifthDayAfterMessageEnglish = "Bad breath is normal after tonsil surgery. It typically goes away 7-14 days afterward. "
        "You can clean your child’s teeth, but avoid anything that can be harsh like mouthwash or breath fresheners.";
    static var weekAfterMessageEnglish = "Some kids feel discomfort in their ears or neck after throat surgery. "
        "That's normal. Medicine, heat, or massage may help.";
    static var tenthDayAfterMessageEnglish = "Many kids are starting to feel better by this point, but don’t worry if your child still has pain. "
        "The throat may take 2-3 weeks to heal fully. Soon you’ll be moving on!";

    // Spanish Title
    static String spanishTitle = "Me preparo para la cirugía";
    static var weekBeforeMessageSpanish = "La ansiedad que una cirugía causa en los niños se puede disminuir cuando ellos saben que pueden esperar. "
        "Hable con su hijo acerca de la cirugía y de lo que va a pasar ese día. Repasen juntos la aplicación Me preparo para la cirugía.";
    static var dayBeforeMessageSpanishA = "¡La cirugía es mañana! Es frecuente que los niños sientan la preocupación de los padres. "
        "A pesar de que usted esté un poco ansioso, trate de estar animado y positivo en presencia de su hijo.";
    static var dayBeforeMessageSpanishB = "La cirugía puede hacer que su hijo esté nervioso. "
        "Hoy es un buen día para repasar la aplicación y saber si su hijo tiene alguna pregunta. "
        "Déjele saber que es normal sentirse un poco nervioso. ¡Los miembros de su equipo médico estarán listos para ayudarlo! "
        "No se olvide de revisar las instrucciones que le dio su médico acerca de las horas en que su hijo debe dejar de comer y beber líquidos antes de la cirugía.";
    static var dayOfSurgeryMessageSpanish = "¡Llegó el gran día! Por la seguridad de su hijo, en la mañana de la cirugía el estómago debe estar vacío. No puede desayunar. "
        "Antes de la cirugía, la mayoría de los niños toman algo transparente: agua, jugo de manzana o refresco para deportistas. Sin embargo, siempre deben seguir las instrucciones acerca de la hora en que debe dejar de tomar líquidos.";
    static var dayAfterMessageSpanish = "La recuperación de la cirugía exige esfuerzo. "
        "En los días siguientes a la cirugía es posible que su hijo duerma más de lo acostumbrado. "
        "Tenga bastantes bebidas frías a su alcance para cuando esté despierto. "
        "Para no olvidar los horarios de la medicina para el dolor se recomienda hacer un cartel con las horas.";
    static var secondDayAfterMessageSpanish = "Su hijo puede presentar fiebre 2 o 3 días después de la cirugía. "
        "La mayoría de los niños a los que les da fiebre apenas pasa la cirugía no están enfermos, ¡se están recuperando! "
        "Si la temperatura de su niño no baja después de haberle dado acetaminofén o ibuprofeno, consulte a su doctor.";
    static var fifthDayAfterMessageSpanish = "El mal aliento as algo normal después de una cirugía de amígdalas. Generalmente se quita entre los 7 a 14 días después de la cirugía. "
        "Le puede limpiar los dientes a su hijo, pero evite enjuagues o refrescantes bucales fuertes.";
    static var weekAfterMessageSpanish = "Algunos niños sienten molestias en los oídos o en el cuello después de una cirugía de garganta. "
        "Hay un nervio grande que se encarga de enviar mensajes al cerebro acerca de lo que pasa en los oídos, la parte de atrás de la boca y el cuello. Por esto es probable que el dolor en estas áreas sea relacionado con la cirugía. "
        "Medicina, calor o un masaje pueden ser útiles en este caso.";
    static var tenthDayAfterMessageSpanish = "Para este momento hay muchos niños que ya se han empezado a sentir mejor, pero si su hijo todavía tiene dolor, no se preocupe. "
        "La garganta se demora entre 2 a 3 semanas en recuperarse completamente. ¡Pronto será prueba superada!";

  static Future<void> scheduleNewNotification(String language) async {
    var dayOfSurgery =DateTime.fromMillisecondsSinceEpoch(PreferenceUtils.getTimestamp("DOS")!);
    const defaultImage = "asset://assets/notifications/transparent.png";
    var title = language == 'en' ? englishTitle : spanishTitle;

    //first notification
    var weekBeforeDateTime= dayOfSurgery.subtract(const Duration(days: 7)).add(const Duration(hours: 8));
    const weekBeforeImagePath = 'asset://assets/notifications/doctor.png';
    await createNotification(title, language == 'en' ? weekBeforeMessageEnglish : weekBeforeMessageSpanish, weekBeforeDateTime, weekBeforeImagePath);


    //second notification
    var dayBeforeDateTimeA = dayOfSurgery.subtract(const Duration(days: 1)).add(const Duration(hours: 8));
    const dayBeforeImagePathA = 'asset://assets/notifications/mom.png';
    await createNotification(title, language == 'en' ? dayBeforeMessageEnglishA : dayBeforeMessageSpanishA, dayBeforeDateTimeA, dayBeforeImagePathA);

    //third notification
    var dayBeforeDateTimeB = dayOfSurgery.subtract(const Duration(days: 1)).add(const Duration(hours: 18));
    const dayBeforeImagePathB = 'asset://assets/notifications/no_food.png';
    await createNotification(title, language == 'en' ? dayBeforeMessageEnglishB : dayBeforeMessageSpanishB, dayBeforeDateTimeB, dayBeforeImagePathB);

    //fourth notification
    var dayOfSurgeryDateTime = dayOfSurgery.add(const Duration(hours: 5));
    const dayOfSurgeryImagePath = 'asset://assets/notifications/no_food.png';
    await createNotification(title, language == 'en' ? dayOfSurgeryMessageEnglish : dayOfSurgeryMessageSpanish, dayOfSurgeryDateTime, dayOfSurgeryImagePath);

    //fifth notification
    var dayAfterDateTime = dayOfSurgery.add(const Duration(days: 1, hours: 7));
    const dayAfterImagePath = 'asset://assets/notifications/chart.png';
    await createNotification(title, language == 'en' ? dayAfterMessageEnglish : dayAfterMessageSpanish, dayAfterDateTime, dayAfterImagePath);

    //sixth notification
    var secondDayAfterDateTime = dayOfSurgery.add(const Duration(days: 2, hours: 7));
    const secondDayAfterImagePath = 'asset://assets/notifications/thermometer.png';
    await createNotification(title, language == 'en' ? secondDayAfterMessageEnglish : secondDayAfterMessageSpanish, secondDayAfterDateTime, secondDayAfterImagePath);

    //seventh notification
    var fifthDayAfterDateTime = dayOfSurgery.add(const Duration(days: 5, hours: 7));
    const fifthDayAfterImagePath = 'asset://assets/notifications/dragon.png';
    await createNotification(title, language == 'en' ? fifthDayAfterMessageEnglish : fifthDayAfterMessageSpanish, fifthDayAfterDateTime, fifthDayAfterImagePath);

    //eighth notification
    var weekAfterDateTime = dayOfSurgery.add(const Duration(days: 7, hours: 11));
    const weekAfterImagePath = 'asset://assets/notifications/medicine.png';
    await createNotification(title, language == 'en' ? weekAfterMessageEnglish : weekAfterMessageSpanish, weekAfterDateTime, weekAfterImagePath);

    //ninth notification
    var tenthDayAfterDateTime = dayOfSurgery.add(const Duration(days: 10, hours: 11));
    const tenthDayAfterImagePath = 'asset://assets/notifications/kids.png';
    await createNotification(title, language == 'en' ? tenthDayAfterMessageEnglish : tenthDayAfterMessageSpanish, tenthDayAfterDateTime, tenthDayAfterImagePath);

  }

  static Future<void> createNotification(String title, String body, DateTime date, String imagePath) async {
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: Random().nextInt(1000),
            channelKey: 'Tonsils',
            title: title,
            body: body,
            bigPicture: imagePath, // Changed if from largeIcon
            notificationLayout: NotificationLayout.BigPicture,
            payload: {
              'notificationId': Random().nextInt(100).toString(),
            }),
        actionButtons: [
          NotificationActionButton(key: 'REDIRECT', label: 'Redirect'),
          NotificationActionButton(
              key: 'DISMISS',
              label: 'Dismiss',
              actionType: ActionType.DismissAction,
              isDangerousOption: true)
        ],
        schedule: NotificationCalendar.fromDate(date: date));
  }


  static Future<void> cancelAllNotifications() async {
    await AwesomeNotifications().cancelAll();
  }

}