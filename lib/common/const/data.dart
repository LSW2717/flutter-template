import 'package:flutter_dotenv/flutter_dotenv.dart';

const _MESSAGE_PREFIX = 'FLUTTER_APP_IO_U@WARE_MESSAGE';

const FCM_TOKEN_KEY = '${_MESSAGE_PREFIX}fcm_token';

const MESSAGE_AVAILABLE = '${_MESSAGE_PREFIX}available';

const _PREFIX = 'FLUTTER_APP_IO_U2WARE_OAUTH2_';

const KEY_JWT_RAW_TOKEN = '${_PREFIX}raw_token';
const KEY_JWT_RAW_INFO = '${_PREFIX}raw_info';
const KEY_JWT_ID_TOKEN = '${_PREFIX}id_token';
const KEY_JWT_TOKEN_TYPE = '${_PREFIX}token_type';
const KEY_JWT_USERNAME = '${_PREFIX}username';

const KEY_OAUTH2_SUBJECT = '${_PREFIX}oauth2subject';
const KEY_OAUTH2_NONCE = '${_PREFIX}oauth2nonce';
const KEY_OAUTH2_USERNAME = '${_PREFIX}oauth2username';
const KEY_OAUTH2_EMAIL = '${_PREFIX}oauth2email';
