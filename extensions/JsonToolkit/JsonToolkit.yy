{
    "id": "aaf5f629-a98e-4c47-b1fb-58101ab451b0",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "JsonToolkit",
    "IncludedResources": [
        "Scripts\\JsonToolkitExtras\\JsonStruct",
        "Scripts\\JsonToolkitExtras\\JsonList",
        "Scripts\\JsonToolkitExtras\\JsonMap",
        "Scripts\\JsonToolkitExtras\\Map",
        "Scripts\\JsonToolkitExtras\\List"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 153720560310812910,
    "date": "2019-30-22 01:02:27",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "43a682ae-dda0-4c37-b4d0-ae7fddfd1a62",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "JsonToolkit.gml",
            "final": "",
            "functions": [
                {
                    "id": "2aeb78ad-c62f-49d1-9267-7a1e5ab64543",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_exists",
                    "help": "json_exists(jsonstruct, ...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_exists",
                    "returnType": 2
                },
                {
                    "id": "b43ac7f9-7a40-44f3-94b7-08a3307d5a72",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_get",
                    "help": "json_get(jsonstruct, ...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_get",
                    "returnType": 2
                },
                {
                    "id": "15b4b1f7-307f-4a0b-9919-cb4d445f8cca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "json_destroy",
                    "help": "json_destroy(@jsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_destroy",
                    "returnType": 2
                },
                {
                    "id": "aebdad13-d65d-4723-a7f4-7bebe8bf6328",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "_json_not_ds",
                    "help": "_json_not_ds(ds, type)",
                    "hidden": false,
                    "kind": 11,
                    "name": "_json_not_ds",
                    "returnType": 2
                },
                {
                    "id": "f76ec5e1-520a-444e-b466-0387c262e791",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_set",
                    "help": "json_set(@jsonstruct, ...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_set",
                    "returnType": 2
                },
                {
                    "id": "9cedb3c1-d82f-4f6f-9224-d1fcfdf01a25",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_unset",
                    "help": "json_unset(@jsonstruct, ...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_unset",
                    "returnType": 2
                },
                {
                    "id": "6f37994a-fa5b-40bd-a974-c235c94b22f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "json_clone",
                    "help": "json_clone(jsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_clone",
                    "returnType": 2
                },
                {
                    "id": "f5d67c9f-852a-48ad-8bf2-0fdb032b4b44",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_insert",
                    "help": "json_insert(@jsonstruct, ..., value)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_insert",
                    "returnType": 2
                },
                {
                    "id": "69b39e58-05ce-4297-bcaa-931e5a80ffd7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "json_encode_as_list",
                    "help": "json_encode_as_list(jsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_encode_as_list",
                    "returnType": 1
                },
                {
                    "id": "d755bd68-0de4-4baf-a4eb-c602aca4eccc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_iterate",
                    "help": "json_iterate(jsonstruct, ..., type)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_iterate",
                    "returnType": 2
                },
                {
                    "id": "4dbbe373-e32e-4557-887b-98476c870ce9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "json_has_next",
                    "help": "json_has_next(iterator)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_has_next",
                    "returnType": 2
                },
                {
                    "id": "49e76fe8-4ae6-4bc2-bfa2-af4771ad1c45",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "json_next",
                    "help": "json_next(@jsoniterator)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_next",
                    "returnType": 2
                },
                {
                    "id": "44bc1e69-5643-4375-9dcf-78b6cc1645cb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "json_load",
                    "help": "json_load(fname)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_load",
                    "returnType": 2
                },
                {
                    "id": "d02a7653-d1dc-401c-b395-eafb5661dacb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "json_save",
                    "help": "json_save(fname, jsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_save",
                    "returnType": 2
                },
                {
                    "id": "5670c332-6b85-4923-941d-44055478cce5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_set_nested",
                    "help": "json_set_nested(@jsonstruct, ..., subjsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_set_nested",
                    "returnType": 2
                },
                {
                    "id": "f1909410-c0a8-4ec2-8045-5fcda76eff7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "json_insert_nested",
                    "help": "json_insert_nested(@jsonstruct, ..., subjsonstruct)",
                    "hidden": false,
                    "kind": 11,
                    "name": "json_insert_nested",
                    "returnType": 2
                },
                {
                    "id": "1e14fbf3-1624-4f87-801d-fc3fba4d6ac4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "JsonStruct",
                    "help": "JsonStruct(toplevel_or_filename)",
                    "hidden": false,
                    "kind": 11,
                    "name": "JsonStruct",
                    "returnType": 2
                },
                {
                    "id": "ce3431eb-8514-4f71-a0e7-d5be28177623",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "JsonList",
                    "help": "JsonList(...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "JsonList",
                    "returnType": 2
                },
                {
                    "id": "7ae2add5-2c43-4178-8486-e2414ff94657",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "JsonMap",
                    "help": "JsonMap(...)",
                    "hidden": false,
                    "kind": 11,
                    "name": "JsonMap",
                    "returnType": 2
                },
                {
                    "id": "c7ccb965-f21c-445c-b47a-0611fa834b97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "_json_dig",
                    "help": "_json_dig(jsonstruct, @path, ignore_last_n)",
                    "hidden": false,
                    "kind": 11,
                    "name": "_json_dig",
                    "returnType": 2
                },
                {
                    "id": "608e19ca-eefe-4555-b4c4-44f1f022dac7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        1,
                        2,
                        2
                    ],
                    "externalName": "_json_rc4",
                    "help": "_json_rc4(@buffer, key, offset, length)",
                    "hidden": false,
                    "kind": 2,
                    "name": "_json_rc4",
                    "returnType": 1
                },
                {
                    "id": "45c67134-d743-4095-914e-362f2cf805bc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "_json_rc4_decrypt_string",
                    "help": "_json_rc4_decrypt_string(str, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "_json_rc4_decrypt_string",
                    "returnType": 1
                },
                {
                    "id": "56c71cbe-5999-44ee-ab0e-3fb91c203db5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "_json_rc4_encrypt_string",
                    "help": "_json_rc4_encrypt_string(str, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "_json_rc4_encrypt_string",
                    "returnType": 1
                },
                {
                    "id": "dab56006-befc-4012-98df-bd1f109d8650",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "json_encrypt",
                    "help": "json_encrypt(jsonstruct, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "json_encrypt",
                    "returnType": 1
                },
                {
                    "id": "62d45207-e521-4780-b41e-fd4c440f76a3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "json_decrypt",
                    "help": "json_decrypt(jsonencstr, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "json_decrypt",
                    "returnType": 2
                },
                {
                    "id": "9d3cb199-9cbe-4712-a354-4432c546b55f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2,
                        1
                    ],
                    "externalName": "json_save_encrypted",
                    "help": "json_save_encrypted(fname, jsonstruct, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "json_save_encrypted",
                    "returnType": 2
                },
                {
                    "id": "8cbd252b-9a75-4376-b07b-d8f83bdfd4c3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "json_load_encrypted",
                    "help": "json_load_encrypted(fname, key)",
                    "hidden": false,
                    "kind": 2,
                    "name": "json_load_encrypted",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "2aeb78ad-c62f-49d1-9267-7a1e5ab64543",
                "b43ac7f9-7a40-44f3-94b7-08a3307d5a72",
                "15b4b1f7-307f-4a0b-9919-cb4d445f8cca",
                "aebdad13-d65d-4723-a7f4-7bebe8bf6328",
                "f76ec5e1-520a-444e-b466-0387c262e791",
                "9cedb3c1-d82f-4f6f-9224-d1fcfdf01a25",
                "6f37994a-fa5b-40bd-a974-c235c94b22f8",
                "f5d67c9f-852a-48ad-8bf2-0fdb032b4b44",
                "69b39e58-05ce-4297-bcaa-931e5a80ffd7",
                "d755bd68-0de4-4baf-a4eb-c602aca4eccc",
                "4dbbe373-e32e-4557-887b-98476c870ce9",
                "49e76fe8-4ae6-4bc2-bfa2-af4771ad1c45",
                "44bc1e69-5643-4375-9dcf-78b6cc1645cb",
                "d02a7653-d1dc-401c-b395-eafb5661dacb",
                "5670c332-6b85-4923-941d-44055478cce5",
                "f1909410-c0a8-4ec2-8045-5fcda76eff7e",
                "1e14fbf3-1624-4f87-801d-fc3fba4d6ac4",
                "ce3431eb-8514-4f71-a0e7-d5be28177623",
                "7ae2add5-2c43-4178-8486-e2414ff94657",
                "c7ccb965-f21c-445c-b47a-0611fa834b97",
                "608e19ca-eefe-4555-b4c4-44f1f022dac7",
                "45c67134-d743-4095-914e-362f2cf805bc",
                "56c71cbe-5999-44ee-ab0e-3fb91c203db5",
                "dab56006-befc-4012-98df-bd1f109d8650",
                "62d45207-e521-4780-b41e-fd4c440f76a3",
                "9d3cb199-9cbe-4712-a354-4432c546b55f",
                "8cbd252b-9a75-4376-b07b-d8f83bdfd4c3"
            ],
            "origname": "extensions\\JsonToolkit.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 144713361056071918,
    "tvosProps": true,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.1.1"
}