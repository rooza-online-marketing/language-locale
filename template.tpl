___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Language Locale",
  "categories": ["PERSONALIZATION"],
  "description": "This variable template returns the page language or locale in ISO 639-1 format (i.e. \u0027EN\u0027) based on the URL of the webpage, if no locale is set in the URL then the default language is used.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "default_lang",
    "displayName": "Default language",
    "simpleValueType": true,
    "defaultValue": "en"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Geef hier uw templatecode op.
  const getUrl = require('getUrl');

  // Gets the current URL
  var url = getUrl('path');

  // Splits the URL into segments
  var pathSegments = url.split('/');

  // Assuming the URL structure is always https://example.com/<locale>/...
  // The locale should be right after the domain, which would typically
  // make it the 1st segment in a URL split by '/'
  var localeSegment = pathSegments[1]; 

  // Define a list of supported locales
  var supportedLocales = [
    'AA', 'AB', 'AE', 'AF', 'AK', 'AM', 'AN', 'AR', 'AS', 'AV', 
    'AY', 'AZ', 'BA', 'BE', 'BG', 'BH', 'BI', 'BM', 'BN', 'BO', 
    'BR', 'BS', 'CA', 'CE', 'CH', 'CO', 'CR', 'CS', 'CU', 'CV', 
    'CY', 'DA', 'DE', 'DV', 'DZ', 'EE', 'EL', 'EN', 'EO', 'ES', 
    'ET', 'EU', 'FA', 'FF', 'FI', 'FJ', 'FO', 'FR', 'FY', 'GA', 
    'GD', 'GL', 'GN', 'GU', 'GV', 'HA', 'HE', 'HI', 'HO', 'HR', 
    'HT', 'HU', 'HY', 'HZ', 'IA', 'ID', 'IE', 'IG', 'II', 'IK', 
    'IO', 'IS', 'IT', 'IU', 'JA', 'JV', 'KA', 'KG', 'KI', 'KJ', 
    'KK', 'KL', 'KM', 'KN', 'KO', 'KR', 'KS', 'KU', 'KV', 'KW', 
    'KY', 'LA', 'LB', 'LG', 'LI', 'LN', 'LO', 'LT', 'LU', 'LV', 
    'MG', 'MH', 'MI', 'MK', 'ML', 'MN', 'MR', 'MS', 'MT', 'MU', 
    'MV', 'MW', 'MY', 'MZ', 'NA', 'NB', 'ND', 'NE', 'NG', 'NL', 
    'NN', 'NO', 'NR', 'NV', 'NY', 'OC', 'OJ', 'OM', 'OR', 'OS', 
    'PA', 'PI', 'PL', 'PS', 'PT', 'QU', 'RM', 'RN', 'RO', 'RU', 
    'RW', 'SA', 'SC', 'SD', 'SE', 'SG', 'SI', 'SK', 'SL', 'SM', 
    'SN', 'SO', 'SQ', 'SR', 'SS', 'ST', 'SU', 'SV', 'SW', 'TA', 
    'TE', 'TG', 'TH', 'TI', 'TK', 'TL', 'TN', 'TO', 'TR', 'TS', 
    'TT', 'TW', 'TY', 'UG', 'UK', 'UR', 'UZ', 'VE', 'VI', 'VO', 
    'WA', 'WO', 'XH', 'YI', 'YO', 'ZA', 'ZH', 'ZU'
  ];

  // Convert the locale segment to uppercase to ensure case-insensitive comparison
  var localeUpperCase = localeSegment.toUpperCase();

  // Check if the extracted segment is a supported locale
  if (supportedLocales.indexOf(localeUpperCase) !== -1) {
    return localeUpperCase;
  } else {
    return data.default_lang.toUpperCase(); // Default to default language if no supported locale is found
  }


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "path",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

This variable template returns the page language or locale in ISO 639-1 format (i.e. 'EN') based on the URL of the webpage, if no locale is set in the URL then the default language is used.


