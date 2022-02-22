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
  "displayName": "Encode/decode URI",
  "categories": ["UTILITY"],
  "description": "Encodes/decodes a URI (component).",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "input",
    "displayName": "Input string/variable:",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "method",
    "displayName": "Method:",
    "selectItems": [
      {
        "value": "encodeURIComponent",
        "displayValue": "encodeURIComponent()"
      },
      {
        "value": "encodeURI",
        "displayValue": "encodeURI()"
      },
      {
        "value": "decodeURIComponent",
        "displayValue": "decodeURIComponent()"
      },
      {
        "value": "decodeURI",
        "displayValue": "decodeURI()"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "encodeURIComponent",
    "help": "The \"URIComponent\" variant includes characters: , / ? : @ \u0026 \u003d + $ #"
  }
]


___SANDBOXED_JS_FOR_SERVER___

const decodeUri = require('decodeUri');
const decodeUriComponent = require('decodeUriComponent');
const encodeUri = require('encodeUri');
const encodeUriComponent = require('encodeUriComponent');

let input = data.input;

if (!input) return;

switch (data.method) {
  case 'encodeURI':
    return encodeUri(input);
  case 'decodeURI':
    return decodeUri(input);
  case 'decodeURIComponent':
    return decodeUriComponent(input);
  case 'encodeURIComponent':
    return encodeUriComponent(input);
}


___TESTS___

scenarios: []


___NOTES___

Created on 22/02/2022, 16:27:48


