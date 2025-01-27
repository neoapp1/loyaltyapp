import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'it'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? itText = '',
  }) =>
      [enText, esText, itText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SignUpPage
  {
    'b13iu9mb': {
      'en': 'NeoPlus',
      'es': 'NeoPlus',
      'it': 'NeoPlus',
    },
    'zw85pbld': {
      'en': 'Create an account',
      'es': 'Crear una cuenta',
      'it': 'Creare un account',
    },
    '7kxp0epw': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'it': 'Iniziamo compilando il modulo sottostante.',
    },
    '39ce9154': {
      'en': 'Name',
      'es': 'Nombre',
      'it': 'Nome',
    },
    'vlpnkhq2': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'it': 'E-mail',
    },
    '58wj0k1r': {
      'en': 'Password',
      'es': 'Contraseña',
      'it': 'Password',
    },
    'on30y54i': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'it': 'Conferma password',
    },
    '6eft2o2p': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'it': 'Creare un account',
    },
    'hm5enfs3': {
      'en': 'OR',
      'es': 'O',
      'it': 'O',
    },
    '6mo3ecej': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
      'it': 'Continua con Google',
    },
    'qeocwj2t': {
      'en': 'Already have an account? ',
      'es': '¿Ya tienes una cuenta?',
      'it': 'Hai già un account?',
    },
    's8rood03': {
      'en': ' Sign In here',
      'es': 'Inicia sesión aquí',
      'it': 'Accedi qui',
    },
    'gfv221fv': {
      'en': 'UserName',
      'es': 'Nombre de usuario',
      'it': 'Nome utente',
    },
    '4dw72ri3': {
      'en': 'Overall',
      'es': 'En general',
      'it': 'Complessivamente',
    },
    'qfe5llyo': {
      'en': '5',
      'es': '5',
      'it': '5',
    },
    'ga3qe6x4': {
      'en':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'es':
          'Bonitas canchas al aire libre, concreto solido y buenos aros para el barrio.',
      'it':
          'Bei campi all\'aperto, cemento solido e buoni canestri per il quartiere.',
    },
    'nxnswjop': {
      'en': 'Home',
      'es': 'Hogar',
      'it': 'Casa',
    },
  },
  // UserHomePage
  {
    '5s18vlde': {
      'en': 'Hello, Alex',
      'es': 'Hola, Alex.',
      'it': 'Ciao, Alex',
    },
    'xeyj4neu': {
      'en': 'Welcome back!',
      'es': '¡Bienvenido de nuevo!',
      'it': 'Bentornato!',
    },
    'vrrbmfx1': {
      'en': 'Total Points',
      'es': 'Puntos totales',
      'it': 'Punti totali',
    },
    'llsz4qm4': {
      'en': '2,547',
      'es': '2,547',
      'it': '2.547',
    },
    '9qdta20x': {
      'en': '+125 points this month',
      'es': '+125 puntos este mes',
      'it': '+125 punti questo mese',
    },
    'cqopa9x8': {
      'en': 'Quick Actions',
      'es': 'Acciones rápidas',
      'it': 'Azioni rapide',
    },
    'xe8nivhp': {
      'en': 'See All',
      'es': 'Ver todo',
      'it': 'Vedi tutto',
    },
    'bwjzx3cz': {
      'en': 'Scan QR',
      'es': 'Escanear código QR',
      'it': 'Scansiona il codice QR',
    },
    'n7jrw44a': {
      'en': 'Redeem',
      'es': 'Canjear',
      'it': 'Riscattare',
    },
    'gtmyccfd': {
      'en': 'Rewards',
      'es': 'Recompensas',
      'it': 'Ricompense',
    },
    'es62doqi': {
      'en': 'History',
      'es': 'Historia',
      'it': 'Storia',
    },
    'ts70y8lv': {
      'en': 'Available Rewards',
      'es': 'Recompensas disponibles',
      'it': 'Ricompense disponibili',
    },
    'r3am2ktp': {
      'en': '50% OFF',
      'es': '50% de descuento',
      'it': '50% DI SCONTO',
    },
    'z5ktmi2x': {
      'en': 'on your next purchase',
      'es': 'en tu próxima compra',
      'it': 'sul tuo prossimo acquisto',
    },
    'ctfhhift': {
      'en': 'Valid until June 30, 2024',
      'es': 'Válido hasta el 30 de junio de 2024',
      'it': 'Valido fino al 30 giugno 2024',
    },
    'erk8v9u2': {
      'en': 'Recent Activity',
      'es': 'Actividad reciente',
      'it': 'Attività recenti',
    },
    'ax32pfim': {
      'en': 'View All',
      'es': 'Ver todo',
      'it': 'Visualizza tutto',
    },
    'fhqyunac': {
      'en': 'Points Earned',
      'es': 'Puntos ganados',
      'it': 'Punti guadagnati',
    },
    'kklbru1o': {
      'en': 'Coffee Purchase',
      'es': 'Compra de café',
      'it': 'Acquisto del caffè',
    },
    '3ttdi1qp': {
      'en': '+25 pts',
      'es': '+25 puntos',
      'it': '+25 punti',
    },
    'nije5f8z': {
      'en': 'Reward Redeemed',
      'es': 'Recompensa canjeada',
      'it': 'Ricompensa riscattata',
    },
    '0jdugjor': {
      'en': 'Free Pastry',
      'es': 'Pastelería gratis',
      'it': 'Pasticceria gratuita',
    },
    'r83v7vrp': {
      'en': '-100 pts',
      'es': '-100 puntos',
      'it': '-100 punti',
    },
  },
  // SignInPage
  {
    'g8dxmoem': {
      'en': 'NeoPlus',
      'es': 'NeoPlus',
      'it': 'NeoPlus',
    },
    'kq0l5u9f': {
      'en': 'Welcome Back',
      'es': 'Bienvenido de nuevo',
      'it': 'Bentornato',
    },
    'ioki0dou': {
      'en': 'Fill out the information below in order to access your account.',
      'es': 'Complete la siguiente información para acceder a su cuenta.',
      'it': 'Compila le informazioni qui sotto per accedere al tuo account.',
    },
    'qssc28hp': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'it': 'E-mail',
    },
    '8k86eum1': {
      'en': 'Password',
      'es': 'Contraseña',
      'it': 'Password',
    },
    'f2g9e8xg': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'it': 'Registrazione',
    },
    'z50aa061': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
      'it': 'Continua con Google',
    },
    'ufc77wub': {
      'en': 'Don\'t have an account?  ',
      'es': '¿No tienes una cuenta?',
      'it': 'Non hai un account?',
    },
    's68bzijs': {
      'en': 'Sign Up here',
      'es': 'Regístrate aquí',
      'it': 'Iscriviti qui',
    },
    'y2a3he23': {
      'en': 'Home',
      'es': 'Hogar',
      'it': 'Casa',
    },
  },
  // memberSettingsPage
  {
    '3f7x1hsm': {
      'en': 'Sarah Johnson',
      'es': 'Sarah Johnson',
      'it': 'Sara Johnson',
    },
    'u981l0rj': {
      'en': '@sarahjohnson',
      'es': '@sarahjohnson',
      'it': '@sarahjohnson',
    },
    'bxt2fhzx': {
      'en': 'Loyalty Status',
      'es': 'Estado de lealtad',
      'it': 'Stato di fedeltà',
    },
    'ojxvpmxf': {
      'en': 'Current Points',
      'es': 'Puntos actuales',
      'it': 'Punti attuali',
    },
    'v94yj4ja': {
      'en': '2,547',
      'es': '2,547',
      'it': '2.547',
    },
    'd1po3bgy': {
      'en': 'Level',
      'es': 'Nivel',
      'it': 'Livello',
    },
    'fhq7ej7x': {
      'en': 'Gold Member',
      'es': 'Miembro de oro',
      'it': 'Membro d\'oro',
    },
    'htf8uas5': {
      'en': 'Account Settings',
      'es': 'Configuraciones de la cuenta',
      'it': 'Impostazioni dell\'account',
    },
    'ct6tno5q': {
      'en': 'sarah@email.com',
      'es': 'sarah@correo electrónico.com',
      'it': 'sarah@email.com',
    },
    '1r1raogy': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'it': 'Notifiche',
    },
    '6qm47ckx': {
      'en': 'Language',
      'es': 'Idioma',
      'it': 'Lingua',
    },
    '33s3lda9': {
      'en': 'English',
      'es': 'Inglés',
      'it': 'Inglese',
    },
    'g4wko0ng': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'it': 'Modifica profilo',
    },
    'y4qnrjsf': {
      'en': 'Log Out',
      'es': 'Finalizar la sesión',
      'it': 'Esci',
    },
  },
  // DashboardResponsiveAdminPanel
  {
    'q31d9dif': {
      'en': 'NeoPlus',
      'es': 'NeoPlus',
      'it': 'NeoPlus',
    },
    '1xams0c1': {
      'en': 'Platform Navigation',
      'es': 'Navegación de la plataforma',
      'it': 'Navigazione della piattaforma',
    },
    'y1oea2qt': {
      'en': 'Dashboard',
      'es': 'Panel',
      'it': 'Pannello di controllo',
    },
    'rcore7di': {
      'en': 'Users',
      'es': 'Usuarios',
      'it': 'Utenti',
    },
    'lrl2zw1b': {
      'en': 'Groups',
      'es': 'Grupos',
      'it': 'Gruppi',
    },
    '5z4uysc1': {
      'en': 'Settings',
      'es': 'Ajustes',
      'it': 'Impostazioni',
    },
    'vn4xdfh2': {
      'en': 'Transactions',
      'es': 'Actas',
      'it': 'Transazioni',
    },
    'nee1dhyf': {
      'en': 'Explore',
      'es': 'Explorar',
      'it': 'Esplorare',
    },
    '2f8kpo7h': {
      'en': 'Overview',
      'es': 'Descripción general',
      'it': 'Panoramica',
    },
    '0xqs99r1': {
      'en': 'Below is a company overview',
      'es': 'A continuación se muestra una descripción general de la empresa.',
      'it': 'Di seguito una panoramica dell\'azienda',
    },
    'qlmzvb4b': {
      'en': 'Andrew D.',
      'es': 'Andrés D.',
      'it': 'Andrea D.',
    },
    'a0cqqogv': {
      'en': 'admin@gmail.com',
      'es': 'admin@gmail.com',
      'it': 'admin@gmail.com',
    },
    '5yo1cgt7': {
      'en': 'Income this Month',
      'es': 'Ingresos de este mes',
      'it': 'Reddito questo mese',
    },
    'iwrpm9uc': {
      'en': '\$567,402',
      'es': '\$567,402',
      'it': '\$567.402',
    },
    '5fk1s7u1': {
      'en': 'Total Orders',
      'es': 'Pedidos totales',
      'it': 'Ordini totali',
    },
    'tkr02a4u': {
      'en': '2,208',
      'es': '2.208',
      'it': '2.208',
    },
    '9qrsbwiz': {
      'en': 'Total Orders',
      'es': 'Pedidos totales',
      'it': 'Ordini totali',
    },
    '5ll2svrj': {
      'en': '2,208',
      'es': '2.208',
      'it': '2.208',
    },
    'jjv7k3sb': {
      'en': 'Total Orders',
      'es': 'Pedidos totales',
      'it': 'Ordini totali',
    },
    '5mmw50k7': {
      'en': '2,208',
      'es': '2.208',
      'it': '2.208',
    },
    'xzf6hou8': {
      'en': 'Outstanding Balance',
      'es': 'Saldo pendiente',
      'it': 'Saldo in sospeso',
    },
    '4hxvywps': {
      'en': '\$529,204',
      'es': '\$529,204',
      'it': '\$529.204',
    },
    'njsgwn1a': {
      'en': '55%',
      'es': '55%',
      'it': '55%',
    },
    'phtoh0y3': {
      'en': 'Outstanding Balance',
      'es': 'Saldo pendiente',
      'it': 'Saldo in sospeso',
    },
    'tn04zjfa': {
      'en': '\$529,204',
      'es': '\$529,204',
      'it': '\$529.204',
    },
    '6t2edojh': {
      'en': '55%',
      'es': '55%',
      'it': '55%',
    },
    'lvc1fhcd': {
      'en': 'You’re using 80% of available requests.',
      'es': 'Estás utilizando el 80% de las solicitudes disponibles.',
      'it': 'Stai utilizzando l\'80% delle richieste disponibili.',
    },
    '9ab2244r': {
      'en': '562k',
      'es': '562k',
      'it': '562 mila',
    },
    '54owq45g': {
      'en': 'You’ve almost reached your limit',
      'es': 'Ya casi has llegado a tu límite',
      'it': 'Hai quasi raggiunto il tuo limite',
    },
    'o4y3vrnd': {
      'en':
          'You have used 80% of your available requests. Upgrade plan to make more network requests.',
      'es':
          'Has utilizado el 80 % de tus solicitudes disponibles. Actualiza tu plan para realizar más solicitudes de red.',
      'it':
          'Hai utilizzato l\'80% delle richieste disponibili. Esegui l\'upgrade del piano per effettuare più richieste di rete.',
    },
    'nvooabfo': {
      'en': 'Card Header',
      'es': 'Encabezado de la tarjeta',
      'it': 'Intestazione della carta',
    },
    'ojjgs7y7': {
      'en': 'Create tables and ui elements that work below.',
      'es':
          'Cree tablas y elementos de interfaz de usuario que funcionen a continuación.',
      'it':
          'Crea tabelle ed elementi dell\'interfaccia utente che funzionino di seguito.',
    },
    'pkgib5rx': {
      'en': 'Add New',
      'es': 'Agregar nuevo',
      'it': 'Aggiungi nuovo',
    },
    'nwklfhs5': {
      'en': 'Work Type',
      'es': 'Tipo de trabajo',
      'it': 'Tipo di lavoro',
    },
    'oqorbech': {
      'en': 'Assigned User',
      'es': 'Usuario asignado',
      'it': 'Utente assegnato',
    },
    'l663j1g8': {
      'en': 'Contract Amount',
      'es': 'Monto del contrato',
      'it': 'Importo del contratto',
    },
    '2qcsmr6l': {
      'en': 'Status',
      'es': 'Estado',
      'it': 'Stato',
    },
    'myhoel3a': {
      'en': 'Actions',
      'es': 'Comportamiento',
      'it': 'Azioni',
    },
    'ndunwleq': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    '176tj0h0': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'bcqurrh1': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'wvgv09qs': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'mgs596zg': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    '2jyf6a1j': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'lestlffs': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'nky3bcom': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    '2y0538s0': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'lcsvu0kb': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    '2r5yz1ci': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'ts7lquq1': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'kks6j7ce': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'epyit01w': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'v6qhycb8': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    'ijxetbyq': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'f7t7dtwu': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'gosyir7w': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'b3hcmjkk': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'f5um24q2': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    '5o6mb1ki': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'd31v0l9r': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'vm8krut2': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'nhhgao8l': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'vetwuv7j': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    'f7wgzyhn': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'hebmht8w': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'whh95br4': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'nx6rcw7l': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    '0bty4t09': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    'gb1mk8bc': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    '4h52cz2p': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'mhp3idta': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    '0a1mte8l': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    '7r9lkxtk': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    '0h2u81s1': {
      'en': 'Card Header',
      'es': 'Encabezado de la tarjeta',
      'it': 'Intestazione della carta',
    },
    '6p4etxpt': {
      'en': 'Create tables and ui elements that work below.',
      'es':
          'Cree tablas y elementos de interfaz de usuario que funcionen a continuación.',
      'it':
          'Crea tabelle ed elementi dell\'interfaccia utente che funzionino di seguito.',
    },
    'uzto6vtl': {
      'en': 'Add New',
      'es': 'Agregar nuevo',
      'it': 'Aggiungi nuovo',
    },
    'ixrjlgr0': {
      'en': 'Work Type',
      'es': 'Tipo de trabajo',
      'it': 'Tipo di lavoro',
    },
    'viq04nn7': {
      'en': 'Assigned User',
      'es': 'Usuario asignado',
      'it': 'Utente assegnato',
    },
    'uyespwmw': {
      'en': 'Contract Amount',
      'es': 'Monto del contrato',
      'it': 'Importo del contratto',
    },
    'kc71ncjq': {
      'en': 'Status',
      'es': 'Estado',
      'it': 'Stato',
    },
    'm093heyn': {
      'en': 'Actions',
      'es': 'Comportamiento',
      'it': 'Azioni',
    },
    'wrc7tbjp': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'kqazmj26': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    '89bsbjng': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'az4bfhet': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'qngijnxu': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    'enrwhsv1': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'yl5alu36': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'piv95jki': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'rtu34bax': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    '60v4jh2r': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    'svoobgh2': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'etjxjsb0': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'v6ldp03k': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'rocfxohs': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'nqmbq1zw': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    'q678p2um': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'vpes9tuq': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'mykfhttl': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'phe4lgeg': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'n6hh64im': {
      'en': 'Paid',
      'es': 'Pagado',
      'it': 'Pagato',
    },
    'cbeofyet': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'lp19zmd7': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'a5x05fzi': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'ipjbg1va': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'wn37p599': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    'u66z6ujq': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'njbz6cgt': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    'nuldpfzm': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    '0i4rwtn2': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    't4cgpqyi': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    '66b9nqie': {
      'en': 'Design Work',
      'es': 'Trabajo de diseño',
      'it': 'Lavoro di progettazione',
    },
    'kes33qdi': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'it': 'Randy Peterson',
    },
    '8s1uuql9': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'it': 'Nome dell\'azienda',
    },
    'xkzhsgh0': {
      'en': '\$2,100',
      'es': '\$2,100',
      'it': '\$2.100',
    },
    'kr4f9ujp': {
      'en': 'Pending',
      'es': 'Pendiente',
      'it': 'In attesa di',
    },
    'y56xdhh4': {
      'en': 'Home',
      'es': 'Hogar',
      'it': 'Casa',
    },
  },
  // UsersResponsiveAdminPanel
  {
    'cnq82043': {
      'en': 'NeoPlus',
      'es': '',
      'it': '',
    },
    '2wpvspi4': {
      'en': 'Platform Navigation',
      'es': '',
      'it': '',
    },
    'ir4tzmy9': {
      'en': 'Dashboard',
      'es': '',
      'it': '',
    },
    'jdy8h92k': {
      'en': 'Users',
      'es': '',
      'it': '',
    },
    '2ghzu57p': {
      'en': 'Groups',
      'es': '',
      'it': '',
    },
    '8ze0yw7k': {
      'en': 'Settings',
      'es': '',
      'it': '',
    },
    'o0lk3rak': {
      'en': 'Transactions',
      'es': '',
      'it': '',
    },
    'ekcc0il5': {
      'en': 'Explore',
      'es': '',
      'it': '',
    },
    'esr8oy6m': {
      'en': 'My Users',
      'es': '',
      'it': '',
    },
    '1td7dnoo': {
      'en': 'Below is a list of your users, select them for details.',
      'es': '',
      'it': '',
    },
    'yj1h4ppa': {
      'en': 'Andrew D.',
      'es': '',
      'it': '',
    },
    'q23xtss2': {
      'en': 'admin@gmail.com',
      'es': '',
      'it': '',
    },
    'zgn16amz': {
      'en': 'Search users...',
      'es': '',
      'it': '',
    },
    '25ipnxw6': {
      'en': 'Create User',
      'es': '',
      'it': '',
    },
    '63ye8ai3': {
      'en': 'User Information',
      'es': '',
      'it': '',
    },
    '6l0szai1': {
      'en': 'Created On',
      'es': '',
      'it': '',
    },
    '5j2nn8ay': {
      'en': 'Last Active',
      'es': '',
      'it': '',
    },
    '9nhu746e': {
      'en': 'Actions',
      'es': '',
      'it': '',
    },
    'uf4q1k00': {
      'en': 'Home',
      'es': '',
      'it': '',
    },
  },
  // employeeHomePage
  {
    'xz58t5lk': {
      'en': 'Digiprint #247',
      'es': '',
      'it': '',
    },
    'o7mr1odc': {
      'en': 'Employee Dashboard',
      'es': '',
      'it': '',
    },
    'w56im565': {
      'en': 'Today\'s Transactions',
      'es': '',
      'it': '',
    },
    'ks4n3jkm': {
      'en': '47',
      'es': '',
      'it': '',
    },
    '6eg3gs6m': {
      'en': '+12 from yesterday',
      'es': '',
      'it': '',
    },
    'nchrxyfy': {
      'en': 'Quick Actions',
      'es': '',
      'it': '',
    },
    'm1j8jcll': {
      'en': 'Scan Code',
      'es': '',
      'it': '',
    },
    'vh89vwij': {
      'en': 'Add Points',
      'es': '',
      'it': '',
    },
    'zyr0u5k9': {
      'en': 'Redeem',
      'es': '',
      'it': '',
    },
    'sccwe1jp': {
      'en': 'History',
      'es': '',
      'it': '',
    },
    'czk7o391': {
      'en': 'Recent Activity',
      'es': '',
      'it': '',
    },
    'e6n8mulc': {
      'en': 'New Member',
      'es': '',
      'it': '',
    },
    '0dqbs8iq': {
      'en': 'Sarah Johnson',
      'es': '',
      'it': '',
    },
    'oavztowg': {
      'en': '2m ago',
      'es': '',
      'it': '',
    },
    'q1qgtvhj': {
      'en': 'Points Added',
      'es': '',
      'it': '',
    },
    '5zm2do2o': {
      'en': 'John Smith • \$45.99',
      'es': '',
      'it': '',
    },
    '9adwyhiz': {
      'en': '15m ago',
      'es': '',
      'it': '',
    },
    'tjbu7udf': {
      'en': 'Reward Redeemed',
      'es': '',
      'it': '',
    },
    'ogpb5zb0': {
      'en': 'Emma Davis • Free Coffee',
      'es': '',
      'it': '',
    },
    'br0vh5wc': {
      'en': '45m ago',
      'es': '',
      'it': '',
    },
    'poortzch': {
      'en': 'Today\'s Stats',
      'es': '',
      'it': '',
    },
    'en29ryxi': {
      'en': 'Points Issued',
      'es': '',
      'it': '',
    },
    '5tqx3lyw': {
      'en': '2,547',
      'es': '',
      'it': '',
    },
    'p9gvps7f': {
      'en': 'Rewards Redeemed',
      'es': '',
      'it': '',
    },
    'vms0kak7': {
      'en': '23',
      'es': '',
      'it': '',
    },
    '4mdt9xmo': {
      'en': 'New Members',
      'es': '',
      'it': '',
    },
    'g7oqysjd': {
      'en': '7',
      'es': '',
      'it': '',
    },
    '9xba35j9': {
      'en': 'Total Sales',
      'es': '',
      'it': '',
    },
    '8p6ox7p4': {
      'en': '\$1,234',
      'es': '',
      'it': '',
    },
  },
  // masterAdminHomePage
  {
    'q028ooaw': {
      'en': 'NeoPlus',
      'es': '',
      'it': '',
    },
    '8ukng7o3': {
      'en': 'Super Administrator Dashboard',
      'es': '',
      'it': '',
    },
    'gy3x0lz4': {
      'en': 'Active Companies',
      'es': '',
      'it': '',
    },
    'ib9fc6rc': {
      'en': '156',
      'es': '',
      'it': '',
    },
    'xjsqb6nu': {
      'en': '+3 this month',
      'es': '',
      'it': '',
    },
    't8am50eg': {
      'en': 'Quick Actions',
      'es': '',
      'it': '',
    },
    'zgvgdkx3': {
      'en': 'New Company',
      'es': '',
      'it': '',
    },
    'p1pyhpn5': {
      'en': 'Settings',
      'es': '',
      'it': '',
    },
    'hrquo6qg': {
      'en': 'Analytics',
      'es': '',
      'it': '',
    },
    'bzobjuja': {
      'en': 'Support',
      'es': '',
      'it': '',
    },
    'ro5ceh58': {
      'en': 'Recent Companies',
      'es': '',
      'it': '',
    },
    '0ii4kyhu': {
      'en': 'Coffee House Co.',
      'es': '',
      'it': '',
    },
    'shqmx93t': {
      'en': 'Active • 2,547 Members',
      'es': '',
      'it': '',
    },
    'rbyx3tia': {
      'en': 'Burger Palace',
      'es': '',
      'it': '',
    },
    'tlxbzoi8': {
      'en': 'Active • 1,832 Members',
      'es': '',
      'it': '',
    },
    '3tiinxom': {
      'en': 'Fashion Outlet',
      'es': '',
      'it': '',
    },
    'qvz4p0wi': {
      'en': 'Pending Approval',
      'es': '',
      'it': '',
    },
    '3m7dabjz': {
      'en': 'System Overview',
      'es': '',
      'it': '',
    },
    'rg1og1fy': {
      'en': 'Total Revenue',
      'es': '',
      'it': '',
    },
    'k3yth25e': {
      'en': '\$247,568',
      'es': '',
      'it': '',
    },
    'hp03nh6i': {
      'en': 'Active Users',
      'es': '',
      'it': '',
    },
    '2ubwdzp8': {
      'en': '45,789',
      'es': '',
      'it': '',
    },
    '8m2tbc9c': {
      'en': 'Success Rate',
      'es': '',
      'it': '',
    },
    'o7asd1qz': {
      'en': '98.7%',
      'es': '',
      'it': '',
    },
    '6ifjo4nl': {
      'en': 'Support Tickets',
      'es': '',
      'it': '',
    },
    'zp1ppt4f': {
      'en': '12',
      'es': '',
      'it': '',
    },
  },
  // HomePage
  {
    'yi1lnywh': {
      'en': 'Home',
      'es': '',
      'it': '',
    },
    'xzx796oj': {
      'en': 'Home',
      'es': '',
      'it': '',
    },
  },
  // addNewCompany
  {
    'ug064mcm': {
      'en': 'Add New Company',
      'es': '',
      'it': '',
    },
    '1gc67uvt': {
      'en': 'Register a new business to NeoPlus',
      'es': '',
      'it': '',
    },
    'trqa2d9w': {
      'en': 'Company Information',
      'es': '',
      'it': '',
    },
    '18pki9ds': {
      'en': 'Company Name',
      'es': '',
      'it': '',
    },
    '20m79gtj': {
      'en': 'Email address',
      'es': '',
      'it': '',
    },
    'h4eaps1d': {
      'en': 'Telephone Phone',
      'es': '',
      'it': '',
    },
    '1l7jdpsn': {
      'en': 'Register Company',
      'es': '',
      'it': '',
    },
  },
  // SignUpNewPage
  {
    'st6ahu07': {
      'en': 'NeoPlus',
      'es': '',
      'it': '',
    },
    '44eaavf0': {
      'en': 'Create an account',
      'es': '',
      'it': '',
    },
    '118qo1ee': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
      'it': '',
    },
    'jrceroa1': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'it': 'E-mail',
    },
    'wbw3z1pj': {
      'en': 'Verify Email',
      'es': '',
      'it': '',
    },
    'bw4ueo80': {
      'en': 'Already have an account? ',
      'es': '',
      'it': '',
    },
    'myqucaeg': {
      'en': ' Sign In here',
      'es': '',
      'it': '',
    },
    '5nvd40r5': {
      'en': 'UserName',
      'es': '',
      'it': '',
    },
    'pkzxhdyg': {
      'en': 'Overall',
      'es': '',
      'it': '',
    },
    '2idgedkq': {
      'en': '5',
      'es': '',
      'it': '',
    },
    'ea824re7': {
      'en':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'es': '',
      'it': '',
    },
    'l3i798f2': {
      'en': 'Home',
      'es': '',
      'it': '',
    },
  },
  // Miscellaneous
  {
    'ghj0pj8t': {
      'en': '',
      'es': '',
      'it': '',
    },
    'bg25jw4q': {
      'en': '',
      'es': '',
      'it': '',
    },
    'xl7ueux6': {
      'en': '',
      'es': '',
      'it': '',
    },
    'wap5ghsr': {
      'en': '',
      'es': '',
      'it': '',
    },
    '0h02q2cc': {
      'en': '',
      'es': '',
      'it': '',
    },
    'czgwxh54': {
      'en': '',
      'es': '',
      'it': '',
    },
    'fmrj27ls': {
      'en': '',
      'es': '',
      'it': '',
    },
    '9ulfq4er': {
      'en': '',
      'es': '',
      'it': '',
    },
    'udw6n73j': {
      'en': '',
      'es': '',
      'it': '',
    },
    'l3uo60tz': {
      'en': '',
      'es': '',
      'it': '',
    },
    'ws7pv7lj': {
      'en': '',
      'es': '',
      'it': '',
    },
    '3yrnag84': {
      'en': '',
      'es': '',
      'it': '',
    },
    '1mp7aweg': {
      'en': '',
      'es': '',
      'it': '',
    },
    '5r6vgna7': {
      'en': '',
      'es': '',
      'it': '',
    },
    'ftmx4wjp': {
      'en': '',
      'es': '',
      'it': '',
    },
    'alnqltto': {
      'en': '',
      'es': '',
      'it': '',
    },
    'v7znq0u5': {
      'en': '',
      'es': '',
      'it': '',
    },
    '29illth2': {
      'en': '',
      'es': '',
      'it': '',
    },
    '6ykhuogj': {
      'en': '',
      'es': '',
      'it': '',
    },
    '3zh9dr9v': {
      'en': '',
      'es': '',
      'it': '',
    },
    'ytz7uyjf': {
      'en': '',
      'es': '',
      'it': '',
    },
    'ph6woys2': {
      'en': '',
      'es': '',
      'it': '',
    },
    'bd8ua0sv': {
      'en': '',
      'es': '',
      'it': '',
    },
    'zljk98xt': {
      'en': '',
      'es': '',
      'it': '',
    },
    '9z3v17gy': {
      'en': '',
      'es': '',
      'it': '',
    },
  },
].reduce((a, b) => a..addAll(b));
