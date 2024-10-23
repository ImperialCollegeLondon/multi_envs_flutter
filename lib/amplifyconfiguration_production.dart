const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "IdentityManager": {
                    "Default": {}
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "eu-west-2_xxx",
                        "AppClientId": "xxx",
                        "AppClientSecret": "xxx",
                        "Region": "eu-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 6,
                            "passwordPolicyCharacters": [
                                "REQUIRES_NUMBERS",
                                "REQUIRES_UPPERCASE"
                            ]
                        },
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';
const baseURL = 'xxx';
