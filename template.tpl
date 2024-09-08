___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "HeyFlow Loader",
  "categories": ["UTILITY", "SALES"],
  "brand": {
    "id": "mbaersch",
    "displayName": "mbaersch",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAbFBMVEVAUP9AUP9AUP9BUf9BUP8AAABAUP9AUP9AUP9AUP9AUP/////6+v9xef9VYf/V1/+rrv+Mkv/29v/09P/y8v/Mzv/Gyf/CxP+hpf+Fi/9gav9DUv/v7//t7f/n6P/Z2/+4u/+wtP+Ynf+Ah/8fsMJHAAAACnRSTlOu9/IqJgD8tPm22EusCQAAAI1JREFUOMvtk0cOwjAQRSexTcB/XNIbnfvfESkLFBkcb7PgbefpT5GGlKRMR8hIKJK53iAXRHqTIswPOZBO8Bf2KZTDuuLHUHiAzcoGnoFgG5w/xqvGdQ5bjIzKz4t7ZzTme8iyBirXdzcGLubXFlPLWODeRtacfOtcN9h9nTr5OImIU/p5laRjNL8Q6g2woClDSZF4qAAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Loads HeyFlow script from static.heyflow.app",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

require('injectScript')(
  "https://static.heyflow.app/widget/latest/iframe.js", 
  data.gtmOnSuccess(), 
  data.gtmOnFailure(), 
  "heyflow"
);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://static.heyflow.app/widget/latest/iframe.js"
              }
            ]
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

scenarios:
- name: test load
  code: |-
    runCode();
    assertApi('injectScript').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 8.9.2024, 12:38:31


