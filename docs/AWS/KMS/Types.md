## Module AWS.KMS.Types

#### `options`

``` purescript
options :: Options
```

#### `AWSAccountIdType`

``` purescript
newtype AWSAccountIdType
  = AWSAccountIdType String
```

##### Instances
``` purescript
Newtype AWSAccountIdType _
Generic AWSAccountIdType _
Show AWSAccountIdType
Decode AWSAccountIdType
Encode AWSAccountIdType
```

#### `AlgorithmSpec`

``` purescript
newtype AlgorithmSpec
  = AlgorithmSpec String
```

##### Instances
``` purescript
Newtype AlgorithmSpec _
Generic AlgorithmSpec _
Show AlgorithmSpec
Decode AlgorithmSpec
Encode AlgorithmSpec
```

#### `AliasList`

``` purescript
newtype AliasList
  = AliasList (Array AliasListEntry)
```

##### Instances
``` purescript
Newtype AliasList _
Generic AliasList _
Show AliasList
Decode AliasList
Encode AliasList
```

#### `AliasListEntry`

``` purescript
newtype AliasListEntry
  = AliasListEntry { "AliasName" :: NullOrUndefined (AliasNameType), "AliasArn" :: NullOrUndefined (ArnType), "TargetKeyId" :: NullOrUndefined (KeyIdType) }
```

<p>Contains information about an alias.</p>

##### Instances
``` purescript
Newtype AliasListEntry _
Generic AliasListEntry _
Show AliasListEntry
Decode AliasListEntry
Encode AliasListEntry
```

#### `newAliasListEntry`

``` purescript
newAliasListEntry :: AliasListEntry
```

Constructs AliasListEntry from required parameters

#### `newAliasListEntry'`

``` purescript
newAliasListEntry' :: ({ "AliasName" :: NullOrUndefined (AliasNameType), "AliasArn" :: NullOrUndefined (ArnType), "TargetKeyId" :: NullOrUndefined (KeyIdType) } -> { "AliasName" :: NullOrUndefined (AliasNameType), "AliasArn" :: NullOrUndefined (ArnType), "TargetKeyId" :: NullOrUndefined (KeyIdType) }) -> AliasListEntry
```

Constructs AliasListEntry's fields from required parameters

#### `AliasNameType`

``` purescript
newtype AliasNameType
  = AliasNameType String
```

##### Instances
``` purescript
Newtype AliasNameType _
Generic AliasNameType _
Show AliasNameType
Decode AliasNameType
Encode AliasNameType
```

#### `AlreadyExistsException`

``` purescript
newtype AlreadyExistsException
  = AlreadyExistsException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because it attempted to create a resource that already exists.</p>

##### Instances
``` purescript
Newtype AlreadyExistsException _
Generic AlreadyExistsException _
Show AlreadyExistsException
Decode AlreadyExistsException
Encode AlreadyExistsException
```

#### `newAlreadyExistsException`

``` purescript
newAlreadyExistsException :: AlreadyExistsException
```

Constructs AlreadyExistsException from required parameters

#### `newAlreadyExistsException'`

``` purescript
newAlreadyExistsException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> AlreadyExistsException
```

Constructs AlreadyExistsException's fields from required parameters

#### `ArnType`

``` purescript
newtype ArnType
  = ArnType String
```

##### Instances
``` purescript
Newtype ArnType _
Generic ArnType _
Show ArnType
Decode ArnType
Encode ArnType
```

#### `BooleanType`

``` purescript
newtype BooleanType
  = BooleanType Boolean
```

##### Instances
``` purescript
Newtype BooleanType _
Generic BooleanType _
Show BooleanType
Decode BooleanType
Encode BooleanType
```

#### `CancelKeyDeletionRequest`

``` purescript
newtype CancelKeyDeletionRequest
  = CancelKeyDeletionRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype CancelKeyDeletionRequest _
Generic CancelKeyDeletionRequest _
Show CancelKeyDeletionRequest
Decode CancelKeyDeletionRequest
Encode CancelKeyDeletionRequest
```

#### `newCancelKeyDeletionRequest`

``` purescript
newCancelKeyDeletionRequest :: KeyIdType -> CancelKeyDeletionRequest
```

Constructs CancelKeyDeletionRequest from required parameters

#### `newCancelKeyDeletionRequest'`

``` purescript
newCancelKeyDeletionRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> CancelKeyDeletionRequest
```

Constructs CancelKeyDeletionRequest's fields from required parameters

#### `CancelKeyDeletionResponse`

``` purescript
newtype CancelKeyDeletionResponse
  = CancelKeyDeletionResponse { "KeyId" :: NullOrUndefined (KeyIdType) }
```

##### Instances
``` purescript
Newtype CancelKeyDeletionResponse _
Generic CancelKeyDeletionResponse _
Show CancelKeyDeletionResponse
Decode CancelKeyDeletionResponse
Encode CancelKeyDeletionResponse
```

#### `newCancelKeyDeletionResponse`

``` purescript
newCancelKeyDeletionResponse :: CancelKeyDeletionResponse
```

Constructs CancelKeyDeletionResponse from required parameters

#### `newCancelKeyDeletionResponse'`

``` purescript
newCancelKeyDeletionResponse' :: ({ "KeyId" :: NullOrUndefined (KeyIdType) } -> { "KeyId" :: NullOrUndefined (KeyIdType) }) -> CancelKeyDeletionResponse
```

Constructs CancelKeyDeletionResponse's fields from required parameters

#### `CiphertextType`

``` purescript
newtype CiphertextType
  = CiphertextType String
```

##### Instances
``` purescript
Newtype CiphertextType _
Generic CiphertextType _
Show CiphertextType
Decode CiphertextType
Encode CiphertextType
```

#### `CreateAliasRequest`

``` purescript
newtype CreateAliasRequest
  = CreateAliasRequest { "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype CreateAliasRequest _
Generic CreateAliasRequest _
Show CreateAliasRequest
Decode CreateAliasRequest
Encode CreateAliasRequest
```

#### `newCreateAliasRequest`

``` purescript
newCreateAliasRequest :: AliasNameType -> KeyIdType -> CreateAliasRequest
```

Constructs CreateAliasRequest from required parameters

#### `newCreateAliasRequest'`

``` purescript
newCreateAliasRequest' :: AliasNameType -> KeyIdType -> ({ "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType } -> { "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType }) -> CreateAliasRequest
```

Constructs CreateAliasRequest's fields from required parameters

#### `CreateGrantRequest`

``` purescript
newtype CreateGrantRequest
  = CreateGrantRequest { "KeyId" :: KeyIdType, "GranteePrincipal" :: PrincipalIdType, "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "Operations" :: GrantOperationList, "Constraints" :: NullOrUndefined (GrantConstraints), "GrantTokens" :: NullOrUndefined (GrantTokenList), "Name" :: NullOrUndefined (GrantNameType) }
```

##### Instances
``` purescript
Newtype CreateGrantRequest _
Generic CreateGrantRequest _
Show CreateGrantRequest
Decode CreateGrantRequest
Encode CreateGrantRequest
```

#### `newCreateGrantRequest`

``` purescript
newCreateGrantRequest :: PrincipalIdType -> KeyIdType -> GrantOperationList -> CreateGrantRequest
```

Constructs CreateGrantRequest from required parameters

#### `newCreateGrantRequest'`

``` purescript
newCreateGrantRequest' :: PrincipalIdType -> KeyIdType -> GrantOperationList -> ({ "KeyId" :: KeyIdType, "GranteePrincipal" :: PrincipalIdType, "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "Operations" :: GrantOperationList, "Constraints" :: NullOrUndefined (GrantConstraints), "GrantTokens" :: NullOrUndefined (GrantTokenList), "Name" :: NullOrUndefined (GrantNameType) } -> { "KeyId" :: KeyIdType, "GranteePrincipal" :: PrincipalIdType, "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "Operations" :: GrantOperationList, "Constraints" :: NullOrUndefined (GrantConstraints), "GrantTokens" :: NullOrUndefined (GrantTokenList), "Name" :: NullOrUndefined (GrantNameType) }) -> CreateGrantRequest
```

Constructs CreateGrantRequest's fields from required parameters

#### `CreateGrantResponse`

``` purescript
newtype CreateGrantResponse
  = CreateGrantResponse { "GrantToken" :: NullOrUndefined (GrantTokenType), "GrantId" :: NullOrUndefined (GrantIdType) }
```

##### Instances
``` purescript
Newtype CreateGrantResponse _
Generic CreateGrantResponse _
Show CreateGrantResponse
Decode CreateGrantResponse
Encode CreateGrantResponse
```

#### `newCreateGrantResponse`

``` purescript
newCreateGrantResponse :: CreateGrantResponse
```

Constructs CreateGrantResponse from required parameters

#### `newCreateGrantResponse'`

``` purescript
newCreateGrantResponse' :: ({ "GrantToken" :: NullOrUndefined (GrantTokenType), "GrantId" :: NullOrUndefined (GrantIdType) } -> { "GrantToken" :: NullOrUndefined (GrantTokenType), "GrantId" :: NullOrUndefined (GrantIdType) }) -> CreateGrantResponse
```

Constructs CreateGrantResponse's fields from required parameters

#### `CreateKeyRequest`

``` purescript
newtype CreateKeyRequest
  = CreateKeyRequest { "Policy" :: NullOrUndefined (PolicyType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "Origin" :: NullOrUndefined (OriginType), "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType), "Tags" :: NullOrUndefined (TagList) }
```

##### Instances
``` purescript
Newtype CreateKeyRequest _
Generic CreateKeyRequest _
Show CreateKeyRequest
Decode CreateKeyRequest
Encode CreateKeyRequest
```

#### `newCreateKeyRequest`

``` purescript
newCreateKeyRequest :: CreateKeyRequest
```

Constructs CreateKeyRequest from required parameters

#### `newCreateKeyRequest'`

``` purescript
newCreateKeyRequest' :: ({ "Policy" :: NullOrUndefined (PolicyType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "Origin" :: NullOrUndefined (OriginType), "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType), "Tags" :: NullOrUndefined (TagList) } -> { "Policy" :: NullOrUndefined (PolicyType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "Origin" :: NullOrUndefined (OriginType), "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType), "Tags" :: NullOrUndefined (TagList) }) -> CreateKeyRequest
```

Constructs CreateKeyRequest's fields from required parameters

#### `CreateKeyResponse`

``` purescript
newtype CreateKeyResponse
  = CreateKeyResponse { "KeyMetadata" :: NullOrUndefined (KeyMetadata) }
```

##### Instances
``` purescript
Newtype CreateKeyResponse _
Generic CreateKeyResponse _
Show CreateKeyResponse
Decode CreateKeyResponse
Encode CreateKeyResponse
```

#### `newCreateKeyResponse`

``` purescript
newCreateKeyResponse :: CreateKeyResponse
```

Constructs CreateKeyResponse from required parameters

#### `newCreateKeyResponse'`

``` purescript
newCreateKeyResponse' :: ({ "KeyMetadata" :: NullOrUndefined (KeyMetadata) } -> { "KeyMetadata" :: NullOrUndefined (KeyMetadata) }) -> CreateKeyResponse
```

Constructs CreateKeyResponse's fields from required parameters

#### `DataKeySpec`

``` purescript
newtype DataKeySpec
  = DataKeySpec String
```

##### Instances
``` purescript
Newtype DataKeySpec _
Generic DataKeySpec _
Show DataKeySpec
Decode DataKeySpec
Encode DataKeySpec
```

#### `DateType`

``` purescript
newtype DateType
  = DateType Timestamp
```

##### Instances
``` purescript
Newtype DateType _
Generic DateType _
Show DateType
Decode DateType
Encode DateType
```

#### `DecryptRequest`

``` purescript
newtype DecryptRequest
  = DecryptRequest { "CiphertextBlob" :: CiphertextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype DecryptRequest _
Generic DecryptRequest _
Show DecryptRequest
Decode DecryptRequest
Encode DecryptRequest
```

#### `newDecryptRequest`

``` purescript
newDecryptRequest :: CiphertextType -> DecryptRequest
```

Constructs DecryptRequest from required parameters

#### `newDecryptRequest'`

``` purescript
newDecryptRequest' :: CiphertextType -> ({ "CiphertextBlob" :: CiphertextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "CiphertextBlob" :: CiphertextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> DecryptRequest
```

Constructs DecryptRequest's fields from required parameters

#### `DecryptResponse`

``` purescript
newtype DecryptResponse
  = DecryptResponse { "KeyId" :: NullOrUndefined (KeyIdType), "Plaintext" :: NullOrUndefined (PlaintextType) }
```

##### Instances
``` purescript
Newtype DecryptResponse _
Generic DecryptResponse _
Show DecryptResponse
Decode DecryptResponse
Encode DecryptResponse
```

#### `newDecryptResponse`

``` purescript
newDecryptResponse :: DecryptResponse
```

Constructs DecryptResponse from required parameters

#### `newDecryptResponse'`

``` purescript
newDecryptResponse' :: ({ "KeyId" :: NullOrUndefined (KeyIdType), "Plaintext" :: NullOrUndefined (PlaintextType) } -> { "KeyId" :: NullOrUndefined (KeyIdType), "Plaintext" :: NullOrUndefined (PlaintextType) }) -> DecryptResponse
```

Constructs DecryptResponse's fields from required parameters

#### `DeleteAliasRequest`

``` purescript
newtype DeleteAliasRequest
  = DeleteAliasRequest { "AliasName" :: AliasNameType }
```

##### Instances
``` purescript
Newtype DeleteAliasRequest _
Generic DeleteAliasRequest _
Show DeleteAliasRequest
Decode DeleteAliasRequest
Encode DeleteAliasRequest
```

#### `newDeleteAliasRequest`

``` purescript
newDeleteAliasRequest :: AliasNameType -> DeleteAliasRequest
```

Constructs DeleteAliasRequest from required parameters

#### `newDeleteAliasRequest'`

``` purescript
newDeleteAliasRequest' :: AliasNameType -> ({ "AliasName" :: AliasNameType } -> { "AliasName" :: AliasNameType }) -> DeleteAliasRequest
```

Constructs DeleteAliasRequest's fields from required parameters

#### `DeleteImportedKeyMaterialRequest`

``` purescript
newtype DeleteImportedKeyMaterialRequest
  = DeleteImportedKeyMaterialRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype DeleteImportedKeyMaterialRequest _
Generic DeleteImportedKeyMaterialRequest _
Show DeleteImportedKeyMaterialRequest
Decode DeleteImportedKeyMaterialRequest
Encode DeleteImportedKeyMaterialRequest
```

#### `newDeleteImportedKeyMaterialRequest`

``` purescript
newDeleteImportedKeyMaterialRequest :: KeyIdType -> DeleteImportedKeyMaterialRequest
```

Constructs DeleteImportedKeyMaterialRequest from required parameters

#### `newDeleteImportedKeyMaterialRequest'`

``` purescript
newDeleteImportedKeyMaterialRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> DeleteImportedKeyMaterialRequest
```

Constructs DeleteImportedKeyMaterialRequest's fields from required parameters

#### `DependencyTimeoutException`

``` purescript
newtype DependencyTimeoutException
  = DependencyTimeoutException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The system timed out while trying to fulfill the request. The request can be retried.</p>

##### Instances
``` purescript
Newtype DependencyTimeoutException _
Generic DependencyTimeoutException _
Show DependencyTimeoutException
Decode DependencyTimeoutException
Encode DependencyTimeoutException
```

#### `newDependencyTimeoutException`

``` purescript
newDependencyTimeoutException :: DependencyTimeoutException
```

Constructs DependencyTimeoutException from required parameters

#### `newDependencyTimeoutException'`

``` purescript
newDependencyTimeoutException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> DependencyTimeoutException
```

Constructs DependencyTimeoutException's fields from required parameters

#### `DescribeKeyRequest`

``` purescript
newtype DescribeKeyRequest
  = DescribeKeyRequest { "KeyId" :: KeyIdType, "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype DescribeKeyRequest _
Generic DescribeKeyRequest _
Show DescribeKeyRequest
Decode DescribeKeyRequest
Encode DescribeKeyRequest
```

#### `newDescribeKeyRequest`

``` purescript
newDescribeKeyRequest :: KeyIdType -> DescribeKeyRequest
```

Constructs DescribeKeyRequest from required parameters

#### `newDescribeKeyRequest'`

``` purescript
newDescribeKeyRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "KeyId" :: KeyIdType, "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> DescribeKeyRequest
```

Constructs DescribeKeyRequest's fields from required parameters

#### `DescribeKeyResponse`

``` purescript
newtype DescribeKeyResponse
  = DescribeKeyResponse { "KeyMetadata" :: NullOrUndefined (KeyMetadata) }
```

##### Instances
``` purescript
Newtype DescribeKeyResponse _
Generic DescribeKeyResponse _
Show DescribeKeyResponse
Decode DescribeKeyResponse
Encode DescribeKeyResponse
```

#### `newDescribeKeyResponse`

``` purescript
newDescribeKeyResponse :: DescribeKeyResponse
```

Constructs DescribeKeyResponse from required parameters

#### `newDescribeKeyResponse'`

``` purescript
newDescribeKeyResponse' :: ({ "KeyMetadata" :: NullOrUndefined (KeyMetadata) } -> { "KeyMetadata" :: NullOrUndefined (KeyMetadata) }) -> DescribeKeyResponse
```

Constructs DescribeKeyResponse's fields from required parameters

#### `DescriptionType`

``` purescript
newtype DescriptionType
  = DescriptionType String
```

##### Instances
``` purescript
Newtype DescriptionType _
Generic DescriptionType _
Show DescriptionType
Decode DescriptionType
Encode DescriptionType
```

#### `DisableKeyRequest`

``` purescript
newtype DisableKeyRequest
  = DisableKeyRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype DisableKeyRequest _
Generic DisableKeyRequest _
Show DisableKeyRequest
Decode DisableKeyRequest
Encode DisableKeyRequest
```

#### `newDisableKeyRequest`

``` purescript
newDisableKeyRequest :: KeyIdType -> DisableKeyRequest
```

Constructs DisableKeyRequest from required parameters

#### `newDisableKeyRequest'`

``` purescript
newDisableKeyRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> DisableKeyRequest
```

Constructs DisableKeyRequest's fields from required parameters

#### `DisableKeyRotationRequest`

``` purescript
newtype DisableKeyRotationRequest
  = DisableKeyRotationRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype DisableKeyRotationRequest _
Generic DisableKeyRotationRequest _
Show DisableKeyRotationRequest
Decode DisableKeyRotationRequest
Encode DisableKeyRotationRequest
```

#### `newDisableKeyRotationRequest`

``` purescript
newDisableKeyRotationRequest :: KeyIdType -> DisableKeyRotationRequest
```

Constructs DisableKeyRotationRequest from required parameters

#### `newDisableKeyRotationRequest'`

``` purescript
newDisableKeyRotationRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> DisableKeyRotationRequest
```

Constructs DisableKeyRotationRequest's fields from required parameters

#### `DisabledException`

``` purescript
newtype DisabledException
  = DisabledException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified CMK is not enabled.</p>

##### Instances
``` purescript
Newtype DisabledException _
Generic DisabledException _
Show DisabledException
Decode DisabledException
Encode DisabledException
```

#### `newDisabledException`

``` purescript
newDisabledException :: DisabledException
```

Constructs DisabledException from required parameters

#### `newDisabledException'`

``` purescript
newDisabledException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> DisabledException
```

Constructs DisabledException's fields from required parameters

#### `EnableKeyRequest`

``` purescript
newtype EnableKeyRequest
  = EnableKeyRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype EnableKeyRequest _
Generic EnableKeyRequest _
Show EnableKeyRequest
Decode EnableKeyRequest
Encode EnableKeyRequest
```

#### `newEnableKeyRequest`

``` purescript
newEnableKeyRequest :: KeyIdType -> EnableKeyRequest
```

Constructs EnableKeyRequest from required parameters

#### `newEnableKeyRequest'`

``` purescript
newEnableKeyRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> EnableKeyRequest
```

Constructs EnableKeyRequest's fields from required parameters

#### `EnableKeyRotationRequest`

``` purescript
newtype EnableKeyRotationRequest
  = EnableKeyRotationRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype EnableKeyRotationRequest _
Generic EnableKeyRotationRequest _
Show EnableKeyRotationRequest
Decode EnableKeyRotationRequest
Encode EnableKeyRotationRequest
```

#### `newEnableKeyRotationRequest`

``` purescript
newEnableKeyRotationRequest :: KeyIdType -> EnableKeyRotationRequest
```

Constructs EnableKeyRotationRequest from required parameters

#### `newEnableKeyRotationRequest'`

``` purescript
newEnableKeyRotationRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> EnableKeyRotationRequest
```

Constructs EnableKeyRotationRequest's fields from required parameters

#### `EncryptRequest`

``` purescript
newtype EncryptRequest
  = EncryptRequest { "KeyId" :: KeyIdType, "Plaintext" :: PlaintextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype EncryptRequest _
Generic EncryptRequest _
Show EncryptRequest
Decode EncryptRequest
Encode EncryptRequest
```

#### `newEncryptRequest`

``` purescript
newEncryptRequest :: KeyIdType -> PlaintextType -> EncryptRequest
```

Constructs EncryptRequest from required parameters

#### `newEncryptRequest'`

``` purescript
newEncryptRequest' :: KeyIdType -> PlaintextType -> ({ "KeyId" :: KeyIdType, "Plaintext" :: PlaintextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "KeyId" :: KeyIdType, "Plaintext" :: PlaintextType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> EncryptRequest
```

Constructs EncryptRequest's fields from required parameters

#### `EncryptResponse`

``` purescript
newtype EncryptResponse
  = EncryptResponse { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) }
```

##### Instances
``` purescript
Newtype EncryptResponse _
Generic EncryptResponse _
Show EncryptResponse
Decode EncryptResponse
Encode EncryptResponse
```

#### `newEncryptResponse`

``` purescript
newEncryptResponse :: EncryptResponse
```

Constructs EncryptResponse from required parameters

#### `newEncryptResponse'`

``` purescript
newEncryptResponse' :: ({ "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) } -> { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) }) -> EncryptResponse
```

Constructs EncryptResponse's fields from required parameters

#### `EncryptionContextKey`

``` purescript
newtype EncryptionContextKey
  = EncryptionContextKey String
```

##### Instances
``` purescript
Newtype EncryptionContextKey _
Generic EncryptionContextKey _
Show EncryptionContextKey
Decode EncryptionContextKey
Encode EncryptionContextKey
```

#### `EncryptionContextType`

``` purescript
newtype EncryptionContextType
  = EncryptionContextType (StrMap EncryptionContextValue)
```

##### Instances
``` purescript
Newtype EncryptionContextType _
Generic EncryptionContextType _
Show EncryptionContextType
Decode EncryptionContextType
Encode EncryptionContextType
```

#### `EncryptionContextValue`

``` purescript
newtype EncryptionContextValue
  = EncryptionContextValue String
```

##### Instances
``` purescript
Newtype EncryptionContextValue _
Generic EncryptionContextValue _
Show EncryptionContextValue
Decode EncryptionContextValue
Encode EncryptionContextValue
```

#### `ErrorMessageType`

``` purescript
newtype ErrorMessageType
  = ErrorMessageType String
```

##### Instances
``` purescript
Newtype ErrorMessageType _
Generic ErrorMessageType _
Show ErrorMessageType
Decode ErrorMessageType
Encode ErrorMessageType
```

#### `ExpirationModelType`

``` purescript
newtype ExpirationModelType
  = ExpirationModelType String
```

##### Instances
``` purescript
Newtype ExpirationModelType _
Generic ExpirationModelType _
Show ExpirationModelType
Decode ExpirationModelType
Encode ExpirationModelType
```

#### `ExpiredImportTokenException`

``` purescript
newtype ExpiredImportTokenException
  = ExpiredImportTokenException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>

##### Instances
``` purescript
Newtype ExpiredImportTokenException _
Generic ExpiredImportTokenException _
Show ExpiredImportTokenException
Decode ExpiredImportTokenException
Encode ExpiredImportTokenException
```

#### `newExpiredImportTokenException`

``` purescript
newExpiredImportTokenException :: ExpiredImportTokenException
```

Constructs ExpiredImportTokenException from required parameters

#### `newExpiredImportTokenException'`

``` purescript
newExpiredImportTokenException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> ExpiredImportTokenException
```

Constructs ExpiredImportTokenException's fields from required parameters

#### `GenerateDataKeyRequest`

``` purescript
newtype GenerateDataKeyRequest
  = GenerateDataKeyRequest { "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "KeySpec" :: NullOrUndefined (DataKeySpec), "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype GenerateDataKeyRequest _
Generic GenerateDataKeyRequest _
Show GenerateDataKeyRequest
Decode GenerateDataKeyRequest
Encode GenerateDataKeyRequest
```

#### `newGenerateDataKeyRequest`

``` purescript
newGenerateDataKeyRequest :: KeyIdType -> GenerateDataKeyRequest
```

Constructs GenerateDataKeyRequest from required parameters

#### `newGenerateDataKeyRequest'`

``` purescript
newGenerateDataKeyRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "KeySpec" :: NullOrUndefined (DataKeySpec), "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "KeySpec" :: NullOrUndefined (DataKeySpec), "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> GenerateDataKeyRequest
```

Constructs GenerateDataKeyRequest's fields from required parameters

#### `GenerateDataKeyResponse`

``` purescript
newtype GenerateDataKeyResponse
  = GenerateDataKeyResponse { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "Plaintext" :: NullOrUndefined (PlaintextType), "KeyId" :: NullOrUndefined (KeyIdType) }
```

##### Instances
``` purescript
Newtype GenerateDataKeyResponse _
Generic GenerateDataKeyResponse _
Show GenerateDataKeyResponse
Decode GenerateDataKeyResponse
Encode GenerateDataKeyResponse
```

#### `newGenerateDataKeyResponse`

``` purescript
newGenerateDataKeyResponse :: GenerateDataKeyResponse
```

Constructs GenerateDataKeyResponse from required parameters

#### `newGenerateDataKeyResponse'`

``` purescript
newGenerateDataKeyResponse' :: ({ "CiphertextBlob" :: NullOrUndefined (CiphertextType), "Plaintext" :: NullOrUndefined (PlaintextType), "KeyId" :: NullOrUndefined (KeyIdType) } -> { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "Plaintext" :: NullOrUndefined (PlaintextType), "KeyId" :: NullOrUndefined (KeyIdType) }) -> GenerateDataKeyResponse
```

Constructs GenerateDataKeyResponse's fields from required parameters

#### `GenerateDataKeyWithoutPlaintextRequest`

``` purescript
newtype GenerateDataKeyWithoutPlaintextRequest
  = GenerateDataKeyWithoutPlaintextRequest { "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "KeySpec" :: NullOrUndefined (DataKeySpec), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype GenerateDataKeyWithoutPlaintextRequest _
Generic GenerateDataKeyWithoutPlaintextRequest _
Show GenerateDataKeyWithoutPlaintextRequest
Decode GenerateDataKeyWithoutPlaintextRequest
Encode GenerateDataKeyWithoutPlaintextRequest
```

#### `newGenerateDataKeyWithoutPlaintextRequest`

``` purescript
newGenerateDataKeyWithoutPlaintextRequest :: KeyIdType -> GenerateDataKeyWithoutPlaintextRequest
```

Constructs GenerateDataKeyWithoutPlaintextRequest from required parameters

#### `newGenerateDataKeyWithoutPlaintextRequest'`

``` purescript
newGenerateDataKeyWithoutPlaintextRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "KeySpec" :: NullOrUndefined (DataKeySpec), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "KeyId" :: KeyIdType, "EncryptionContext" :: NullOrUndefined (EncryptionContextType), "KeySpec" :: NullOrUndefined (DataKeySpec), "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> GenerateDataKeyWithoutPlaintextRequest
```

Constructs GenerateDataKeyWithoutPlaintextRequest's fields from required parameters

#### `GenerateDataKeyWithoutPlaintextResponse`

``` purescript
newtype GenerateDataKeyWithoutPlaintextResponse
  = GenerateDataKeyWithoutPlaintextResponse { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) }
```

##### Instances
``` purescript
Newtype GenerateDataKeyWithoutPlaintextResponse _
Generic GenerateDataKeyWithoutPlaintextResponse _
Show GenerateDataKeyWithoutPlaintextResponse
Decode GenerateDataKeyWithoutPlaintextResponse
Encode GenerateDataKeyWithoutPlaintextResponse
```

#### `newGenerateDataKeyWithoutPlaintextResponse`

``` purescript
newGenerateDataKeyWithoutPlaintextResponse :: GenerateDataKeyWithoutPlaintextResponse
```

Constructs GenerateDataKeyWithoutPlaintextResponse from required parameters

#### `newGenerateDataKeyWithoutPlaintextResponse'`

``` purescript
newGenerateDataKeyWithoutPlaintextResponse' :: ({ "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) } -> { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "KeyId" :: NullOrUndefined (KeyIdType) }) -> GenerateDataKeyWithoutPlaintextResponse
```

Constructs GenerateDataKeyWithoutPlaintextResponse's fields from required parameters

#### `GenerateRandomRequest`

``` purescript
newtype GenerateRandomRequest
  = GenerateRandomRequest { "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) }
```

##### Instances
``` purescript
Newtype GenerateRandomRequest _
Generic GenerateRandomRequest _
Show GenerateRandomRequest
Decode GenerateRandomRequest
Encode GenerateRandomRequest
```

#### `newGenerateRandomRequest`

``` purescript
newGenerateRandomRequest :: GenerateRandomRequest
```

Constructs GenerateRandomRequest from required parameters

#### `newGenerateRandomRequest'`

``` purescript
newGenerateRandomRequest' :: ({ "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) } -> { "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) }) -> GenerateRandomRequest
```

Constructs GenerateRandomRequest's fields from required parameters

#### `GenerateRandomResponse`

``` purescript
newtype GenerateRandomResponse
  = GenerateRandomResponse { "Plaintext" :: NullOrUndefined (PlaintextType) }
```

##### Instances
``` purescript
Newtype GenerateRandomResponse _
Generic GenerateRandomResponse _
Show GenerateRandomResponse
Decode GenerateRandomResponse
Encode GenerateRandomResponse
```

#### `newGenerateRandomResponse`

``` purescript
newGenerateRandomResponse :: GenerateRandomResponse
```

Constructs GenerateRandomResponse from required parameters

#### `newGenerateRandomResponse'`

``` purescript
newGenerateRandomResponse' :: ({ "Plaintext" :: NullOrUndefined (PlaintextType) } -> { "Plaintext" :: NullOrUndefined (PlaintextType) }) -> GenerateRandomResponse
```

Constructs GenerateRandomResponse's fields from required parameters

#### `GetKeyPolicyRequest`

``` purescript
newtype GetKeyPolicyRequest
  = GetKeyPolicyRequest { "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType }
```

##### Instances
``` purescript
Newtype GetKeyPolicyRequest _
Generic GetKeyPolicyRequest _
Show GetKeyPolicyRequest
Decode GetKeyPolicyRequest
Encode GetKeyPolicyRequest
```

#### `newGetKeyPolicyRequest`

``` purescript
newGetKeyPolicyRequest :: KeyIdType -> PolicyNameType -> GetKeyPolicyRequest
```

Constructs GetKeyPolicyRequest from required parameters

#### `newGetKeyPolicyRequest'`

``` purescript
newGetKeyPolicyRequest' :: KeyIdType -> PolicyNameType -> ({ "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType } -> { "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType }) -> GetKeyPolicyRequest
```

Constructs GetKeyPolicyRequest's fields from required parameters

#### `GetKeyPolicyResponse`

``` purescript
newtype GetKeyPolicyResponse
  = GetKeyPolicyResponse { "Policy" :: NullOrUndefined (PolicyType) }
```

##### Instances
``` purescript
Newtype GetKeyPolicyResponse _
Generic GetKeyPolicyResponse _
Show GetKeyPolicyResponse
Decode GetKeyPolicyResponse
Encode GetKeyPolicyResponse
```

#### `newGetKeyPolicyResponse`

``` purescript
newGetKeyPolicyResponse :: GetKeyPolicyResponse
```

Constructs GetKeyPolicyResponse from required parameters

#### `newGetKeyPolicyResponse'`

``` purescript
newGetKeyPolicyResponse' :: ({ "Policy" :: NullOrUndefined (PolicyType) } -> { "Policy" :: NullOrUndefined (PolicyType) }) -> GetKeyPolicyResponse
```

Constructs GetKeyPolicyResponse's fields from required parameters

#### `GetKeyRotationStatusRequest`

``` purescript
newtype GetKeyRotationStatusRequest
  = GetKeyRotationStatusRequest { "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype GetKeyRotationStatusRequest _
Generic GetKeyRotationStatusRequest _
Show GetKeyRotationStatusRequest
Decode GetKeyRotationStatusRequest
Encode GetKeyRotationStatusRequest
```

#### `newGetKeyRotationStatusRequest`

``` purescript
newGetKeyRotationStatusRequest :: KeyIdType -> GetKeyRotationStatusRequest
```

Constructs GetKeyRotationStatusRequest from required parameters

#### `newGetKeyRotationStatusRequest'`

``` purescript
newGetKeyRotationStatusRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType } -> { "KeyId" :: KeyIdType }) -> GetKeyRotationStatusRequest
```

Constructs GetKeyRotationStatusRequest's fields from required parameters

#### `GetKeyRotationStatusResponse`

``` purescript
newtype GetKeyRotationStatusResponse
  = GetKeyRotationStatusResponse { "KeyRotationEnabled" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype GetKeyRotationStatusResponse _
Generic GetKeyRotationStatusResponse _
Show GetKeyRotationStatusResponse
Decode GetKeyRotationStatusResponse
Encode GetKeyRotationStatusResponse
```

#### `newGetKeyRotationStatusResponse`

``` purescript
newGetKeyRotationStatusResponse :: GetKeyRotationStatusResponse
```

Constructs GetKeyRotationStatusResponse from required parameters

#### `newGetKeyRotationStatusResponse'`

``` purescript
newGetKeyRotationStatusResponse' :: ({ "KeyRotationEnabled" :: NullOrUndefined (BooleanType) } -> { "KeyRotationEnabled" :: NullOrUndefined (BooleanType) }) -> GetKeyRotationStatusResponse
```

Constructs GetKeyRotationStatusResponse's fields from required parameters

#### `GetParametersForImportRequest`

``` purescript
newtype GetParametersForImportRequest
  = GetParametersForImportRequest { "KeyId" :: KeyIdType, "WrappingAlgorithm" :: AlgorithmSpec, "WrappingKeySpec" :: WrappingKeySpec }
```

##### Instances
``` purescript
Newtype GetParametersForImportRequest _
Generic GetParametersForImportRequest _
Show GetParametersForImportRequest
Decode GetParametersForImportRequest
Encode GetParametersForImportRequest
```

#### `newGetParametersForImportRequest`

``` purescript
newGetParametersForImportRequest :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> GetParametersForImportRequest
```

Constructs GetParametersForImportRequest from required parameters

#### `newGetParametersForImportRequest'`

``` purescript
newGetParametersForImportRequest' :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> ({ "KeyId" :: KeyIdType, "WrappingAlgorithm" :: AlgorithmSpec, "WrappingKeySpec" :: WrappingKeySpec } -> { "KeyId" :: KeyIdType, "WrappingAlgorithm" :: AlgorithmSpec, "WrappingKeySpec" :: WrappingKeySpec }) -> GetParametersForImportRequest
```

Constructs GetParametersForImportRequest's fields from required parameters

#### `GetParametersForImportResponse`

``` purescript
newtype GetParametersForImportResponse
  = GetParametersForImportResponse { "KeyId" :: NullOrUndefined (KeyIdType), "ImportToken" :: NullOrUndefined (CiphertextType), "PublicKey" :: NullOrUndefined (PlaintextType), "ParametersValidTo" :: NullOrUndefined (DateType) }
```

##### Instances
``` purescript
Newtype GetParametersForImportResponse _
Generic GetParametersForImportResponse _
Show GetParametersForImportResponse
Decode GetParametersForImportResponse
Encode GetParametersForImportResponse
```

#### `newGetParametersForImportResponse`

``` purescript
newGetParametersForImportResponse :: GetParametersForImportResponse
```

Constructs GetParametersForImportResponse from required parameters

#### `newGetParametersForImportResponse'`

``` purescript
newGetParametersForImportResponse' :: ({ "KeyId" :: NullOrUndefined (KeyIdType), "ImportToken" :: NullOrUndefined (CiphertextType), "PublicKey" :: NullOrUndefined (PlaintextType), "ParametersValidTo" :: NullOrUndefined (DateType) } -> { "KeyId" :: NullOrUndefined (KeyIdType), "ImportToken" :: NullOrUndefined (CiphertextType), "PublicKey" :: NullOrUndefined (PlaintextType), "ParametersValidTo" :: NullOrUndefined (DateType) }) -> GetParametersForImportResponse
```

Constructs GetParametersForImportResponse's fields from required parameters

#### `GrantConstraints`

``` purescript
newtype GrantConstraints
  = GrantConstraints { "EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType), "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType) }
```

<p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In constrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>

##### Instances
``` purescript
Newtype GrantConstraints _
Generic GrantConstraints _
Show GrantConstraints
Decode GrantConstraints
Encode GrantConstraints
```

#### `newGrantConstraints`

``` purescript
newGrantConstraints :: GrantConstraints
```

Constructs GrantConstraints from required parameters

#### `newGrantConstraints'`

``` purescript
newGrantConstraints' :: ({ "EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType), "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType) } -> { "EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType), "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType) }) -> GrantConstraints
```

Constructs GrantConstraints's fields from required parameters

#### `GrantIdType`

``` purescript
newtype GrantIdType
  = GrantIdType String
```

##### Instances
``` purescript
Newtype GrantIdType _
Generic GrantIdType _
Show GrantIdType
Decode GrantIdType
Encode GrantIdType
```

#### `GrantList`

``` purescript
newtype GrantList
  = GrantList (Array GrantListEntry)
```

##### Instances
``` purescript
Newtype GrantList _
Generic GrantList _
Show GrantList
Decode GrantList
Encode GrantList
```

#### `GrantListEntry`

``` purescript
newtype GrantListEntry
  = GrantListEntry { "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType), "Name" :: NullOrUndefined (GrantNameType), "CreationDate" :: NullOrUndefined (DateType), "GranteePrincipal" :: NullOrUndefined (PrincipalIdType), "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "IssuingAccount" :: NullOrUndefined (PrincipalIdType), "Operations" :: NullOrUndefined (GrantOperationList), "Constraints" :: NullOrUndefined (GrantConstraints) }
```

<p>Contains information about an entry in a list of grants.</p>

##### Instances
``` purescript
Newtype GrantListEntry _
Generic GrantListEntry _
Show GrantListEntry
Decode GrantListEntry
Encode GrantListEntry
```

#### `newGrantListEntry`

``` purescript
newGrantListEntry :: GrantListEntry
```

Constructs GrantListEntry from required parameters

#### `newGrantListEntry'`

``` purescript
newGrantListEntry' :: ({ "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType), "Name" :: NullOrUndefined (GrantNameType), "CreationDate" :: NullOrUndefined (DateType), "GranteePrincipal" :: NullOrUndefined (PrincipalIdType), "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "IssuingAccount" :: NullOrUndefined (PrincipalIdType), "Operations" :: NullOrUndefined (GrantOperationList), "Constraints" :: NullOrUndefined (GrantConstraints) } -> { "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType), "Name" :: NullOrUndefined (GrantNameType), "CreationDate" :: NullOrUndefined (DateType), "GranteePrincipal" :: NullOrUndefined (PrincipalIdType), "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType), "IssuingAccount" :: NullOrUndefined (PrincipalIdType), "Operations" :: NullOrUndefined (GrantOperationList), "Constraints" :: NullOrUndefined (GrantConstraints) }) -> GrantListEntry
```

Constructs GrantListEntry's fields from required parameters

#### `GrantNameType`

``` purescript
newtype GrantNameType
  = GrantNameType String
```

##### Instances
``` purescript
Newtype GrantNameType _
Generic GrantNameType _
Show GrantNameType
Decode GrantNameType
Encode GrantNameType
```

#### `GrantOperation`

``` purescript
newtype GrantOperation
  = GrantOperation String
```

##### Instances
``` purescript
Newtype GrantOperation _
Generic GrantOperation _
Show GrantOperation
Decode GrantOperation
Encode GrantOperation
```

#### `GrantOperationList`

``` purescript
newtype GrantOperationList
  = GrantOperationList (Array GrantOperation)
```

##### Instances
``` purescript
Newtype GrantOperationList _
Generic GrantOperationList _
Show GrantOperationList
Decode GrantOperationList
Encode GrantOperationList
```

#### `GrantTokenList`

``` purescript
newtype GrantTokenList
  = GrantTokenList (Array GrantTokenType)
```

##### Instances
``` purescript
Newtype GrantTokenList _
Generic GrantTokenList _
Show GrantTokenList
Decode GrantTokenList
Encode GrantTokenList
```

#### `GrantTokenType`

``` purescript
newtype GrantTokenType
  = GrantTokenType String
```

##### Instances
``` purescript
Newtype GrantTokenType _
Generic GrantTokenType _
Show GrantTokenType
Decode GrantTokenType
Encode GrantTokenType
```

#### `ImportKeyMaterialRequest`

``` purescript
newtype ImportKeyMaterialRequest
  = ImportKeyMaterialRequest { "KeyId" :: KeyIdType, "ImportToken" :: CiphertextType, "EncryptedKeyMaterial" :: CiphertextType, "ValidTo" :: NullOrUndefined (DateType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType) }
```

##### Instances
``` purescript
Newtype ImportKeyMaterialRequest _
Generic ImportKeyMaterialRequest _
Show ImportKeyMaterialRequest
Decode ImportKeyMaterialRequest
Encode ImportKeyMaterialRequest
```

#### `newImportKeyMaterialRequest`

``` purescript
newImportKeyMaterialRequest :: CiphertextType -> CiphertextType -> KeyIdType -> ImportKeyMaterialRequest
```

Constructs ImportKeyMaterialRequest from required parameters

#### `newImportKeyMaterialRequest'`

``` purescript
newImportKeyMaterialRequest' :: CiphertextType -> CiphertextType -> KeyIdType -> ({ "KeyId" :: KeyIdType, "ImportToken" :: CiphertextType, "EncryptedKeyMaterial" :: CiphertextType, "ValidTo" :: NullOrUndefined (DateType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType) } -> { "KeyId" :: KeyIdType, "ImportToken" :: CiphertextType, "EncryptedKeyMaterial" :: CiphertextType, "ValidTo" :: NullOrUndefined (DateType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType) }) -> ImportKeyMaterialRequest
```

Constructs ImportKeyMaterialRequest's fields from required parameters

#### `ImportKeyMaterialResponse`

``` purescript
newtype ImportKeyMaterialResponse
  = ImportKeyMaterialResponse NoArguments
```

##### Instances
``` purescript
Newtype ImportKeyMaterialResponse _
Generic ImportKeyMaterialResponse _
Show ImportKeyMaterialResponse
Decode ImportKeyMaterialResponse
Encode ImportKeyMaterialResponse
```

#### `IncorrectKeyMaterialException`

``` purescript
newtype IncorrectKeyMaterialException
  = IncorrectKeyMaterialException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>

##### Instances
``` purescript
Newtype IncorrectKeyMaterialException _
Generic IncorrectKeyMaterialException _
Show IncorrectKeyMaterialException
Decode IncorrectKeyMaterialException
Encode IncorrectKeyMaterialException
```

#### `newIncorrectKeyMaterialException`

``` purescript
newIncorrectKeyMaterialException :: IncorrectKeyMaterialException
```

Constructs IncorrectKeyMaterialException from required parameters

#### `newIncorrectKeyMaterialException'`

``` purescript
newIncorrectKeyMaterialException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> IncorrectKeyMaterialException
```

Constructs IncorrectKeyMaterialException's fields from required parameters

#### `InvalidAliasNameException`

``` purescript
newtype InvalidAliasNameException
  = InvalidAliasNameException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified alias name is not valid.</p>

##### Instances
``` purescript
Newtype InvalidAliasNameException _
Generic InvalidAliasNameException _
Show InvalidAliasNameException
Decode InvalidAliasNameException
Encode InvalidAliasNameException
```

#### `newInvalidAliasNameException`

``` purescript
newInvalidAliasNameException :: InvalidAliasNameException
```

Constructs InvalidAliasNameException from required parameters

#### `newInvalidAliasNameException'`

``` purescript
newInvalidAliasNameException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidAliasNameException
```

Constructs InvalidAliasNameException's fields from required parameters

#### `InvalidArnException`

``` purescript
newtype InvalidArnException
  = InvalidArnException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because a specified ARN was not valid.</p>

##### Instances
``` purescript
Newtype InvalidArnException _
Generic InvalidArnException _
Show InvalidArnException
Decode InvalidArnException
Encode InvalidArnException
```

#### `newInvalidArnException`

``` purescript
newInvalidArnException :: InvalidArnException
```

Constructs InvalidArnException from required parameters

#### `newInvalidArnException'`

``` purescript
newInvalidArnException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidArnException
```

Constructs InvalidArnException's fields from required parameters

#### `InvalidCiphertextException`

``` purescript
newtype InvalidCiphertextException
  = InvalidCiphertextException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.</p>

##### Instances
``` purescript
Newtype InvalidCiphertextException _
Generic InvalidCiphertextException _
Show InvalidCiphertextException
Decode InvalidCiphertextException
Encode InvalidCiphertextException
```

#### `newInvalidCiphertextException`

``` purescript
newInvalidCiphertextException :: InvalidCiphertextException
```

Constructs InvalidCiphertextException from required parameters

#### `newInvalidCiphertextException'`

``` purescript
newInvalidCiphertextException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidCiphertextException
```

Constructs InvalidCiphertextException's fields from required parameters

#### `InvalidGrantIdException`

``` purescript
newtype InvalidGrantIdException
  = InvalidGrantIdException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>

##### Instances
``` purescript
Newtype InvalidGrantIdException _
Generic InvalidGrantIdException _
Show InvalidGrantIdException
Decode InvalidGrantIdException
Encode InvalidGrantIdException
```

#### `newInvalidGrantIdException`

``` purescript
newInvalidGrantIdException :: InvalidGrantIdException
```

Constructs InvalidGrantIdException from required parameters

#### `newInvalidGrantIdException'`

``` purescript
newInvalidGrantIdException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidGrantIdException
```

Constructs InvalidGrantIdException's fields from required parameters

#### `InvalidGrantTokenException`

``` purescript
newtype InvalidGrantTokenException
  = InvalidGrantTokenException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified grant token is not valid.</p>

##### Instances
``` purescript
Newtype InvalidGrantTokenException _
Generic InvalidGrantTokenException _
Show InvalidGrantTokenException
Decode InvalidGrantTokenException
Encode InvalidGrantTokenException
```

#### `newInvalidGrantTokenException`

``` purescript
newInvalidGrantTokenException :: InvalidGrantTokenException
```

Constructs InvalidGrantTokenException from required parameters

#### `newInvalidGrantTokenException'`

``` purescript
newInvalidGrantTokenException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidGrantTokenException
```

Constructs InvalidGrantTokenException's fields from required parameters

#### `InvalidImportTokenException`

``` purescript
newtype InvalidImportTokenException
  = InvalidImportTokenException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>

##### Instances
``` purescript
Newtype InvalidImportTokenException _
Generic InvalidImportTokenException _
Show InvalidImportTokenException
Decode InvalidImportTokenException
Encode InvalidImportTokenException
```

#### `newInvalidImportTokenException`

``` purescript
newInvalidImportTokenException :: InvalidImportTokenException
```

Constructs InvalidImportTokenException from required parameters

#### `newInvalidImportTokenException'`

``` purescript
newInvalidImportTokenException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidImportTokenException
```

Constructs InvalidImportTokenException's fields from required parameters

#### `InvalidKeyUsageException`

``` purescript
newtype InvalidKeyUsageException
  = InvalidKeyUsageException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>

##### Instances
``` purescript
Newtype InvalidKeyUsageException _
Generic InvalidKeyUsageException _
Show InvalidKeyUsageException
Decode InvalidKeyUsageException
Encode InvalidKeyUsageException
```

#### `newInvalidKeyUsageException`

``` purescript
newInvalidKeyUsageException :: InvalidKeyUsageException
```

Constructs InvalidKeyUsageException from required parameters

#### `newInvalidKeyUsageException'`

``` purescript
newInvalidKeyUsageException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidKeyUsageException
```

Constructs InvalidKeyUsageException's fields from required parameters

#### `InvalidMarkerException`

``` purescript
newtype InvalidMarkerException
  = InvalidMarkerException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>

##### Instances
``` purescript
Newtype InvalidMarkerException _
Generic InvalidMarkerException _
Show InvalidMarkerException
Decode InvalidMarkerException
Encode InvalidMarkerException
```

#### `newInvalidMarkerException`

``` purescript
newInvalidMarkerException :: InvalidMarkerException
```

Constructs InvalidMarkerException from required parameters

#### `newInvalidMarkerException'`

``` purescript
newInvalidMarkerException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> InvalidMarkerException
```

Constructs InvalidMarkerException's fields from required parameters

#### `KMSInternalException`

``` purescript
newtype KMSInternalException
  = KMSInternalException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because an internal exception occurred. The request can be retried.</p>

##### Instances
``` purescript
Newtype KMSInternalException _
Generic KMSInternalException _
Show KMSInternalException
Decode KMSInternalException
Encode KMSInternalException
```

#### `newKMSInternalException`

``` purescript
newKMSInternalException :: KMSInternalException
```

Constructs KMSInternalException from required parameters

#### `newKMSInternalException'`

``` purescript
newKMSInternalException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> KMSInternalException
```

Constructs KMSInternalException's fields from required parameters

#### `KMSInvalidStateException`

``` purescript
newtype KMSInvalidStateException
  = KMSInvalidStateException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype KMSInvalidStateException _
Generic KMSInvalidStateException _
Show KMSInvalidStateException
Decode KMSInvalidStateException
Encode KMSInvalidStateException
```

#### `newKMSInvalidStateException`

``` purescript
newKMSInvalidStateException :: KMSInvalidStateException
```

Constructs KMSInvalidStateException from required parameters

#### `newKMSInvalidStateException'`

``` purescript
newKMSInvalidStateException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> KMSInvalidStateException
```

Constructs KMSInvalidStateException's fields from required parameters

#### `KeyIdType`

``` purescript
newtype KeyIdType
  = KeyIdType String
```

##### Instances
``` purescript
Newtype KeyIdType _
Generic KeyIdType _
Show KeyIdType
Decode KeyIdType
Encode KeyIdType
```

#### `KeyList`

``` purescript
newtype KeyList
  = KeyList (Array KeyListEntry)
```

##### Instances
``` purescript
Newtype KeyList _
Generic KeyList _
Show KeyList
Decode KeyList
Encode KeyList
```

#### `KeyListEntry`

``` purescript
newtype KeyListEntry
  = KeyListEntry { "KeyId" :: NullOrUndefined (KeyIdType), "KeyArn" :: NullOrUndefined (ArnType) }
```

<p>Contains information about each entry in the key list.</p>

##### Instances
``` purescript
Newtype KeyListEntry _
Generic KeyListEntry _
Show KeyListEntry
Decode KeyListEntry
Encode KeyListEntry
```

#### `newKeyListEntry`

``` purescript
newKeyListEntry :: KeyListEntry
```

Constructs KeyListEntry from required parameters

#### `newKeyListEntry'`

``` purescript
newKeyListEntry' :: ({ "KeyId" :: NullOrUndefined (KeyIdType), "KeyArn" :: NullOrUndefined (ArnType) } -> { "KeyId" :: NullOrUndefined (KeyIdType), "KeyArn" :: NullOrUndefined (ArnType) }) -> KeyListEntry
```

Constructs KeyListEntry's fields from required parameters

#### `KeyManagerType`

``` purescript
newtype KeyManagerType
  = KeyManagerType String
```

##### Instances
``` purescript
Newtype KeyManagerType _
Generic KeyManagerType _
Show KeyManagerType
Decode KeyManagerType
Encode KeyManagerType
```

#### `KeyMetadata`

``` purescript
newtype KeyMetadata
  = KeyMetadata { "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "KeyId" :: KeyIdType, "Arn" :: NullOrUndefined (ArnType), "CreationDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "KeyState" :: NullOrUndefined (KeyState), "DeletionDate" :: NullOrUndefined (DateType), "ValidTo" :: NullOrUndefined (DateType), "Origin" :: NullOrUndefined (OriginType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType), "KeyManager" :: NullOrUndefined (KeyManagerType) }
```

<p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>

##### Instances
``` purescript
Newtype KeyMetadata _
Generic KeyMetadata _
Show KeyMetadata
Decode KeyMetadata
Encode KeyMetadata
```

#### `newKeyMetadata`

``` purescript
newKeyMetadata :: KeyIdType -> KeyMetadata
```

Constructs KeyMetadata from required parameters

#### `newKeyMetadata'`

``` purescript
newKeyMetadata' :: KeyIdType -> ({ "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "KeyId" :: KeyIdType, "Arn" :: NullOrUndefined (ArnType), "CreationDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "KeyState" :: NullOrUndefined (KeyState), "DeletionDate" :: NullOrUndefined (DateType), "ValidTo" :: NullOrUndefined (DateType), "Origin" :: NullOrUndefined (OriginType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType), "KeyManager" :: NullOrUndefined (KeyManagerType) } -> { "AWSAccountId" :: NullOrUndefined (AWSAccountIdType), "KeyId" :: KeyIdType, "Arn" :: NullOrUndefined (ArnType), "CreationDate" :: NullOrUndefined (DateType), "Enabled" :: NullOrUndefined (BooleanType), "Description" :: NullOrUndefined (DescriptionType), "KeyUsage" :: NullOrUndefined (KeyUsageType), "KeyState" :: NullOrUndefined (KeyState), "DeletionDate" :: NullOrUndefined (DateType), "ValidTo" :: NullOrUndefined (DateType), "Origin" :: NullOrUndefined (OriginType), "ExpirationModel" :: NullOrUndefined (ExpirationModelType), "KeyManager" :: NullOrUndefined (KeyManagerType) }) -> KeyMetadata
```

Constructs KeyMetadata's fields from required parameters

#### `KeyState`

``` purescript
newtype KeyState
  = KeyState String
```

##### Instances
``` purescript
Newtype KeyState _
Generic KeyState _
Show KeyState
Decode KeyState
Encode KeyState
```

#### `KeyUnavailableException`

``` purescript
newtype KeyUnavailableException
  = KeyUnavailableException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified CMK was not available. The request can be retried.</p>

##### Instances
``` purescript
Newtype KeyUnavailableException _
Generic KeyUnavailableException _
Show KeyUnavailableException
Decode KeyUnavailableException
Encode KeyUnavailableException
```

#### `newKeyUnavailableException`

``` purescript
newKeyUnavailableException :: KeyUnavailableException
```

Constructs KeyUnavailableException from required parameters

#### `newKeyUnavailableException'`

``` purescript
newKeyUnavailableException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> KeyUnavailableException
```

Constructs KeyUnavailableException's fields from required parameters

#### `KeyUsageType`

``` purescript
newtype KeyUsageType
  = KeyUsageType String
```

##### Instances
``` purescript
Newtype KeyUsageType _
Generic KeyUsageType _
Show KeyUsageType
Decode KeyUsageType
Encode KeyUsageType
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `LimitType`

``` purescript
newtype LimitType
  = LimitType Int
```

##### Instances
``` purescript
Newtype LimitType _
Generic LimitType _
Show LimitType
Decode LimitType
Encode LimitType
```

#### `ListAliasesRequest`

``` purescript
newtype ListAliasesRequest
  = ListAliasesRequest { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }
```

##### Instances
``` purescript
Newtype ListAliasesRequest _
Generic ListAliasesRequest _
Show ListAliasesRequest
Decode ListAliasesRequest
Encode ListAliasesRequest
```

#### `newListAliasesRequest`

``` purescript
newListAliasesRequest :: ListAliasesRequest
```

Constructs ListAliasesRequest from required parameters

#### `newListAliasesRequest'`

``` purescript
newListAliasesRequest' :: ({ "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) } -> { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }) -> ListAliasesRequest
```

Constructs ListAliasesRequest's fields from required parameters

#### `ListAliasesResponse`

``` purescript
newtype ListAliasesResponse
  = ListAliasesResponse { "Aliases" :: NullOrUndefined (AliasList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype ListAliasesResponse _
Generic ListAliasesResponse _
Show ListAliasesResponse
Decode ListAliasesResponse
Encode ListAliasesResponse
```

#### `newListAliasesResponse`

``` purescript
newListAliasesResponse :: ListAliasesResponse
```

Constructs ListAliasesResponse from required parameters

#### `newListAliasesResponse'`

``` purescript
newListAliasesResponse' :: ({ "Aliases" :: NullOrUndefined (AliasList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) } -> { "Aliases" :: NullOrUndefined (AliasList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }) -> ListAliasesResponse
```

Constructs ListAliasesResponse's fields from required parameters

#### `ListGrantsRequest`

``` purescript
newtype ListGrantsRequest
  = ListGrantsRequest { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "KeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype ListGrantsRequest _
Generic ListGrantsRequest _
Show ListGrantsRequest
Decode ListGrantsRequest
Encode ListGrantsRequest
```

#### `newListGrantsRequest`

``` purescript
newListGrantsRequest :: KeyIdType -> ListGrantsRequest
```

Constructs ListGrantsRequest from required parameters

#### `newListGrantsRequest'`

``` purescript
newListGrantsRequest' :: KeyIdType -> ({ "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "KeyId" :: KeyIdType } -> { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "KeyId" :: KeyIdType }) -> ListGrantsRequest
```

Constructs ListGrantsRequest's fields from required parameters

#### `ListGrantsResponse`

``` purescript
newtype ListGrantsResponse
  = ListGrantsResponse { "Grants" :: NullOrUndefined (GrantList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype ListGrantsResponse _
Generic ListGrantsResponse _
Show ListGrantsResponse
Decode ListGrantsResponse
Encode ListGrantsResponse
```

#### `newListGrantsResponse`

``` purescript
newListGrantsResponse :: ListGrantsResponse
```

Constructs ListGrantsResponse from required parameters

#### `newListGrantsResponse'`

``` purescript
newListGrantsResponse' :: ({ "Grants" :: NullOrUndefined (GrantList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) } -> { "Grants" :: NullOrUndefined (GrantList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }) -> ListGrantsResponse
```

Constructs ListGrantsResponse's fields from required parameters

#### `ListKeyPoliciesRequest`

``` purescript
newtype ListKeyPoliciesRequest
  = ListKeyPoliciesRequest { "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }
```

##### Instances
``` purescript
Newtype ListKeyPoliciesRequest _
Generic ListKeyPoliciesRequest _
Show ListKeyPoliciesRequest
Decode ListKeyPoliciesRequest
Encode ListKeyPoliciesRequest
```

#### `newListKeyPoliciesRequest`

``` purescript
newListKeyPoliciesRequest :: KeyIdType -> ListKeyPoliciesRequest
```

Constructs ListKeyPoliciesRequest from required parameters

#### `newListKeyPoliciesRequest'`

``` purescript
newListKeyPoliciesRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) } -> { "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }) -> ListKeyPoliciesRequest
```

Constructs ListKeyPoliciesRequest's fields from required parameters

#### `ListKeyPoliciesResponse`

``` purescript
newtype ListKeyPoliciesResponse
  = ListKeyPoliciesResponse { "PolicyNames" :: NullOrUndefined (PolicyNameList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype ListKeyPoliciesResponse _
Generic ListKeyPoliciesResponse _
Show ListKeyPoliciesResponse
Decode ListKeyPoliciesResponse
Encode ListKeyPoliciesResponse
```

#### `newListKeyPoliciesResponse`

``` purescript
newListKeyPoliciesResponse :: ListKeyPoliciesResponse
```

Constructs ListKeyPoliciesResponse from required parameters

#### `newListKeyPoliciesResponse'`

``` purescript
newListKeyPoliciesResponse' :: ({ "PolicyNames" :: NullOrUndefined (PolicyNameList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) } -> { "PolicyNames" :: NullOrUndefined (PolicyNameList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }) -> ListKeyPoliciesResponse
```

Constructs ListKeyPoliciesResponse's fields from required parameters

#### `ListKeysRequest`

``` purescript
newtype ListKeysRequest
  = ListKeysRequest { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }
```

##### Instances
``` purescript
Newtype ListKeysRequest _
Generic ListKeysRequest _
Show ListKeysRequest
Decode ListKeysRequest
Encode ListKeysRequest
```

#### `newListKeysRequest`

``` purescript
newListKeysRequest :: ListKeysRequest
```

Constructs ListKeysRequest from required parameters

#### `newListKeysRequest'`

``` purescript
newListKeysRequest' :: ({ "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) } -> { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }) -> ListKeysRequest
```

Constructs ListKeysRequest's fields from required parameters

#### `ListKeysResponse`

``` purescript
newtype ListKeysResponse
  = ListKeysResponse { "Keys" :: NullOrUndefined (KeyList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype ListKeysResponse _
Generic ListKeysResponse _
Show ListKeysResponse
Decode ListKeysResponse
Encode ListKeysResponse
```

#### `newListKeysResponse`

``` purescript
newListKeysResponse :: ListKeysResponse
```

Constructs ListKeysResponse from required parameters

#### `newListKeysResponse'`

``` purescript
newListKeysResponse' :: ({ "Keys" :: NullOrUndefined (KeyList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) } -> { "Keys" :: NullOrUndefined (KeyList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }) -> ListKeysResponse
```

Constructs ListKeysResponse's fields from required parameters

#### `ListResourceTagsRequest`

``` purescript
newtype ListResourceTagsRequest
  = ListResourceTagsRequest { "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }
```

##### Instances
``` purescript
Newtype ListResourceTagsRequest _
Generic ListResourceTagsRequest _
Show ListResourceTagsRequest
Decode ListResourceTagsRequest
Encode ListResourceTagsRequest
```

#### `newListResourceTagsRequest`

``` purescript
newListResourceTagsRequest :: KeyIdType -> ListResourceTagsRequest
```

Constructs ListResourceTagsRequest from required parameters

#### `newListResourceTagsRequest'`

``` purescript
newListResourceTagsRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) } -> { "KeyId" :: KeyIdType, "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType) }) -> ListResourceTagsRequest
```

Constructs ListResourceTagsRequest's fields from required parameters

#### `ListResourceTagsResponse`

``` purescript
newtype ListResourceTagsResponse
  = ListResourceTagsResponse { "Tags" :: NullOrUndefined (TagList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype ListResourceTagsResponse _
Generic ListResourceTagsResponse _
Show ListResourceTagsResponse
Decode ListResourceTagsResponse
Encode ListResourceTagsResponse
```

#### `newListResourceTagsResponse`

``` purescript
newListResourceTagsResponse :: ListResourceTagsResponse
```

Constructs ListResourceTagsResponse from required parameters

#### `newListResourceTagsResponse'`

``` purescript
newListResourceTagsResponse' :: ({ "Tags" :: NullOrUndefined (TagList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) } -> { "Tags" :: NullOrUndefined (TagList), "NextMarker" :: NullOrUndefined (MarkerType), "Truncated" :: NullOrUndefined (BooleanType) }) -> ListResourceTagsResponse
```

Constructs ListResourceTagsResponse's fields from required parameters

#### `ListRetirableGrantsRequest`

``` purescript
newtype ListRetirableGrantsRequest
  = ListRetirableGrantsRequest { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "RetiringPrincipal" :: PrincipalIdType }
```

##### Instances
``` purescript
Newtype ListRetirableGrantsRequest _
Generic ListRetirableGrantsRequest _
Show ListRetirableGrantsRequest
Decode ListRetirableGrantsRequest
Encode ListRetirableGrantsRequest
```

#### `newListRetirableGrantsRequest`

``` purescript
newListRetirableGrantsRequest :: PrincipalIdType -> ListRetirableGrantsRequest
```

Constructs ListRetirableGrantsRequest from required parameters

#### `newListRetirableGrantsRequest'`

``` purescript
newListRetirableGrantsRequest' :: PrincipalIdType -> ({ "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "RetiringPrincipal" :: PrincipalIdType } -> { "Limit" :: NullOrUndefined (LimitType), "Marker" :: NullOrUndefined (MarkerType), "RetiringPrincipal" :: PrincipalIdType }) -> ListRetirableGrantsRequest
```

Constructs ListRetirableGrantsRequest's fields from required parameters

#### `MalformedPolicyDocumentException`

``` purescript
newtype MalformedPolicyDocumentException
  = MalformedPolicyDocumentException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>

##### Instances
``` purescript
Newtype MalformedPolicyDocumentException _
Generic MalformedPolicyDocumentException _
Show MalformedPolicyDocumentException
Decode MalformedPolicyDocumentException
Encode MalformedPolicyDocumentException
```

#### `newMalformedPolicyDocumentException`

``` purescript
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException from required parameters

#### `newMalformedPolicyDocumentException'`

``` purescript
newMalformedPolicyDocumentException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException's fields from required parameters

#### `MarkerType`

``` purescript
newtype MarkerType
  = MarkerType String
```

##### Instances
``` purescript
Newtype MarkerType _
Generic MarkerType _
Show MarkerType
Decode MarkerType
Encode MarkerType
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because the specified entity or resource could not be found.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `NumberOfBytesType`

``` purescript
newtype NumberOfBytesType
  = NumberOfBytesType Int
```

##### Instances
``` purescript
Newtype NumberOfBytesType _
Generic NumberOfBytesType _
Show NumberOfBytesType
Decode NumberOfBytesType
Encode NumberOfBytesType
```

#### `OriginType`

``` purescript
newtype OriginType
  = OriginType String
```

##### Instances
``` purescript
Newtype OriginType _
Generic OriginType _
Show OriginType
Decode OriginType
Encode OriginType
```

#### `PendingWindowInDaysType`

``` purescript
newtype PendingWindowInDaysType
  = PendingWindowInDaysType Int
```

##### Instances
``` purescript
Newtype PendingWindowInDaysType _
Generic PendingWindowInDaysType _
Show PendingWindowInDaysType
Decode PendingWindowInDaysType
Encode PendingWindowInDaysType
```

#### `PlaintextType`

``` purescript
newtype PlaintextType
  = PlaintextType String
```

##### Instances
``` purescript
Newtype PlaintextType _
Generic PlaintextType _
Show PlaintextType
Decode PlaintextType
Encode PlaintextType
```

#### `PolicyNameList`

``` purescript
newtype PolicyNameList
  = PolicyNameList (Array PolicyNameType)
```

##### Instances
``` purescript
Newtype PolicyNameList _
Generic PolicyNameList _
Show PolicyNameList
Decode PolicyNameList
Encode PolicyNameList
```

#### `PolicyNameType`

``` purescript
newtype PolicyNameType
  = PolicyNameType String
```

##### Instances
``` purescript
Newtype PolicyNameType _
Generic PolicyNameType _
Show PolicyNameType
Decode PolicyNameType
Encode PolicyNameType
```

#### `PolicyType`

``` purescript
newtype PolicyType
  = PolicyType String
```

##### Instances
``` purescript
Newtype PolicyType _
Generic PolicyType _
Show PolicyType
Decode PolicyType
Encode PolicyType
```

#### `PrincipalIdType`

``` purescript
newtype PrincipalIdType
  = PrincipalIdType String
```

##### Instances
``` purescript
Newtype PrincipalIdType _
Generic PrincipalIdType _
Show PrincipalIdType
Decode PrincipalIdType
Encode PrincipalIdType
```

#### `PutKeyPolicyRequest`

``` purescript
newtype PutKeyPolicyRequest
  = PutKeyPolicyRequest { "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType, "Policy" :: PolicyType, "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) }
```

##### Instances
``` purescript
Newtype PutKeyPolicyRequest _
Generic PutKeyPolicyRequest _
Show PutKeyPolicyRequest
Decode PutKeyPolicyRequest
Encode PutKeyPolicyRequest
```

#### `newPutKeyPolicyRequest`

``` purescript
newPutKeyPolicyRequest :: KeyIdType -> PolicyType -> PolicyNameType -> PutKeyPolicyRequest
```

Constructs PutKeyPolicyRequest from required parameters

#### `newPutKeyPolicyRequest'`

``` purescript
newPutKeyPolicyRequest' :: KeyIdType -> PolicyType -> PolicyNameType -> ({ "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType, "Policy" :: PolicyType, "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) } -> { "KeyId" :: KeyIdType, "PolicyName" :: PolicyNameType, "Policy" :: PolicyType, "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) }) -> PutKeyPolicyRequest
```

Constructs PutKeyPolicyRequest's fields from required parameters

#### `ReEncryptRequest`

``` purescript
newtype ReEncryptRequest
  = ReEncryptRequest { "CiphertextBlob" :: CiphertextType, "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType), "DestinationKeyId" :: KeyIdType, "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }
```

##### Instances
``` purescript
Newtype ReEncryptRequest _
Generic ReEncryptRequest _
Show ReEncryptRequest
Decode ReEncryptRequest
Encode ReEncryptRequest
```

#### `newReEncryptRequest`

``` purescript
newReEncryptRequest :: CiphertextType -> KeyIdType -> ReEncryptRequest
```

Constructs ReEncryptRequest from required parameters

#### `newReEncryptRequest'`

``` purescript
newReEncryptRequest' :: CiphertextType -> KeyIdType -> ({ "CiphertextBlob" :: CiphertextType, "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType), "DestinationKeyId" :: KeyIdType, "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> { "CiphertextBlob" :: CiphertextType, "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType), "DestinationKeyId" :: KeyIdType, "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType), "GrantTokens" :: NullOrUndefined (GrantTokenList) }) -> ReEncryptRequest
```

Constructs ReEncryptRequest's fields from required parameters

#### `ReEncryptResponse`

``` purescript
newtype ReEncryptResponse
  = ReEncryptResponse { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "SourceKeyId" :: NullOrUndefined (KeyIdType), "KeyId" :: NullOrUndefined (KeyIdType) }
```

##### Instances
``` purescript
Newtype ReEncryptResponse _
Generic ReEncryptResponse _
Show ReEncryptResponse
Decode ReEncryptResponse
Encode ReEncryptResponse
```

#### `newReEncryptResponse`

``` purescript
newReEncryptResponse :: ReEncryptResponse
```

Constructs ReEncryptResponse from required parameters

#### `newReEncryptResponse'`

``` purescript
newReEncryptResponse' :: ({ "CiphertextBlob" :: NullOrUndefined (CiphertextType), "SourceKeyId" :: NullOrUndefined (KeyIdType), "KeyId" :: NullOrUndefined (KeyIdType) } -> { "CiphertextBlob" :: NullOrUndefined (CiphertextType), "SourceKeyId" :: NullOrUndefined (KeyIdType), "KeyId" :: NullOrUndefined (KeyIdType) }) -> ReEncryptResponse
```

Constructs ReEncryptResponse's fields from required parameters

#### `RetireGrantRequest`

``` purescript
newtype RetireGrantRequest
  = RetireGrantRequest { "GrantToken" :: NullOrUndefined (GrantTokenType), "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType) }
```

##### Instances
``` purescript
Newtype RetireGrantRequest _
Generic RetireGrantRequest _
Show RetireGrantRequest
Decode RetireGrantRequest
Encode RetireGrantRequest
```

#### `newRetireGrantRequest`

``` purescript
newRetireGrantRequest :: RetireGrantRequest
```

Constructs RetireGrantRequest from required parameters

#### `newRetireGrantRequest'`

``` purescript
newRetireGrantRequest' :: ({ "GrantToken" :: NullOrUndefined (GrantTokenType), "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType) } -> { "GrantToken" :: NullOrUndefined (GrantTokenType), "KeyId" :: NullOrUndefined (KeyIdType), "GrantId" :: NullOrUndefined (GrantIdType) }) -> RetireGrantRequest
```

Constructs RetireGrantRequest's fields from required parameters

#### `RevokeGrantRequest`

``` purescript
newtype RevokeGrantRequest
  = RevokeGrantRequest { "KeyId" :: KeyIdType, "GrantId" :: GrantIdType }
```

##### Instances
``` purescript
Newtype RevokeGrantRequest _
Generic RevokeGrantRequest _
Show RevokeGrantRequest
Decode RevokeGrantRequest
Encode RevokeGrantRequest
```

#### `newRevokeGrantRequest`

``` purescript
newRevokeGrantRequest :: GrantIdType -> KeyIdType -> RevokeGrantRequest
```

Constructs RevokeGrantRequest from required parameters

#### `newRevokeGrantRequest'`

``` purescript
newRevokeGrantRequest' :: GrantIdType -> KeyIdType -> ({ "KeyId" :: KeyIdType, "GrantId" :: GrantIdType } -> { "KeyId" :: KeyIdType, "GrantId" :: GrantIdType }) -> RevokeGrantRequest
```

Constructs RevokeGrantRequest's fields from required parameters

#### `ScheduleKeyDeletionRequest`

``` purescript
newtype ScheduleKeyDeletionRequest
  = ScheduleKeyDeletionRequest { "KeyId" :: KeyIdType, "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType) }
```

##### Instances
``` purescript
Newtype ScheduleKeyDeletionRequest _
Generic ScheduleKeyDeletionRequest _
Show ScheduleKeyDeletionRequest
Decode ScheduleKeyDeletionRequest
Encode ScheduleKeyDeletionRequest
```

#### `newScheduleKeyDeletionRequest`

``` purescript
newScheduleKeyDeletionRequest :: KeyIdType -> ScheduleKeyDeletionRequest
```

Constructs ScheduleKeyDeletionRequest from required parameters

#### `newScheduleKeyDeletionRequest'`

``` purescript
newScheduleKeyDeletionRequest' :: KeyIdType -> ({ "KeyId" :: KeyIdType, "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType) } -> { "KeyId" :: KeyIdType, "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType) }) -> ScheduleKeyDeletionRequest
```

Constructs ScheduleKeyDeletionRequest's fields from required parameters

#### `ScheduleKeyDeletionResponse`

``` purescript
newtype ScheduleKeyDeletionResponse
  = ScheduleKeyDeletionResponse { "KeyId" :: NullOrUndefined (KeyIdType), "DeletionDate" :: NullOrUndefined (DateType) }
```

##### Instances
``` purescript
Newtype ScheduleKeyDeletionResponse _
Generic ScheduleKeyDeletionResponse _
Show ScheduleKeyDeletionResponse
Decode ScheduleKeyDeletionResponse
Encode ScheduleKeyDeletionResponse
```

#### `newScheduleKeyDeletionResponse`

``` purescript
newScheduleKeyDeletionResponse :: ScheduleKeyDeletionResponse
```

Constructs ScheduleKeyDeletionResponse from required parameters

#### `newScheduleKeyDeletionResponse'`

``` purescript
newScheduleKeyDeletionResponse' :: ({ "KeyId" :: NullOrUndefined (KeyIdType), "DeletionDate" :: NullOrUndefined (DateType) } -> { "KeyId" :: NullOrUndefined (KeyIdType), "DeletionDate" :: NullOrUndefined (DateType) }) -> ScheduleKeyDeletionResponse
```

Constructs ScheduleKeyDeletionResponse's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "TagKey" :: TagKeyType, "TagValue" :: TagValueType }
```

<p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKeyType -> TagValueType -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKeyType -> TagValueType -> ({ "TagKey" :: TagKeyType, "TagValue" :: TagValueType } -> { "TagKey" :: TagKeyType, "TagValue" :: TagValueType }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagException`

``` purescript
newtype TagException
  = TagException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because one or more tags are not valid.</p>

##### Instances
``` purescript
Newtype TagException _
Generic TagException _
Show TagException
Decode TagException
Encode TagException
```

#### `newTagException`

``` purescript
newTagException :: TagException
```

Constructs TagException from required parameters

#### `newTagException'`

``` purescript
newTagException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> TagException
```

Constructs TagException's fields from required parameters

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKeyType)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagKeyType`

``` purescript
newtype TagKeyType
  = TagKeyType String
```

##### Instances
``` purescript
Newtype TagKeyType _
Generic TagKeyType _
Show TagKeyType
Decode TagKeyType
Encode TagKeyType
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagResourceRequest`

``` purescript
newtype TagResourceRequest
  = TagResourceRequest { "KeyId" :: KeyIdType, "Tags" :: TagList }
```

##### Instances
``` purescript
Newtype TagResourceRequest _
Generic TagResourceRequest _
Show TagResourceRequest
Decode TagResourceRequest
Encode TagResourceRequest
```

#### `newTagResourceRequest`

``` purescript
newTagResourceRequest :: KeyIdType -> TagList -> TagResourceRequest
```

Constructs TagResourceRequest from required parameters

#### `newTagResourceRequest'`

``` purescript
newTagResourceRequest' :: KeyIdType -> TagList -> ({ "KeyId" :: KeyIdType, "Tags" :: TagList } -> { "KeyId" :: KeyIdType, "Tags" :: TagList }) -> TagResourceRequest
```

Constructs TagResourceRequest's fields from required parameters

#### `TagValueType`

``` purescript
newtype TagValueType
  = TagValueType String
```

##### Instances
``` purescript
Newtype TagValueType _
Generic TagValueType _
Show TagValueType
Decode TagValueType
Encode TagValueType
```

#### `UnsupportedOperationException`

``` purescript
newtype UnsupportedOperationException
  = UnsupportedOperationException { message :: NullOrUndefined (ErrorMessageType) }
```

<p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>

##### Instances
``` purescript
Newtype UnsupportedOperationException _
Generic UnsupportedOperationException _
Show UnsupportedOperationException
Decode UnsupportedOperationException
Encode UnsupportedOperationException
```

#### `newUnsupportedOperationException`

``` purescript
newUnsupportedOperationException :: UnsupportedOperationException
```

Constructs UnsupportedOperationException from required parameters

#### `newUnsupportedOperationException'`

``` purescript
newUnsupportedOperationException' :: ({ message :: NullOrUndefined (ErrorMessageType) } -> { message :: NullOrUndefined (ErrorMessageType) }) -> UnsupportedOperationException
```

Constructs UnsupportedOperationException's fields from required parameters

#### `UntagResourceRequest`

``` purescript
newtype UntagResourceRequest
  = UntagResourceRequest { "KeyId" :: KeyIdType, "TagKeys" :: TagKeyList }
```

##### Instances
``` purescript
Newtype UntagResourceRequest _
Generic UntagResourceRequest _
Show UntagResourceRequest
Decode UntagResourceRequest
Encode UntagResourceRequest
```

#### `newUntagResourceRequest`

``` purescript
newUntagResourceRequest :: KeyIdType -> TagKeyList -> UntagResourceRequest
```

Constructs UntagResourceRequest from required parameters

#### `newUntagResourceRequest'`

``` purescript
newUntagResourceRequest' :: KeyIdType -> TagKeyList -> ({ "KeyId" :: KeyIdType, "TagKeys" :: TagKeyList } -> { "KeyId" :: KeyIdType, "TagKeys" :: TagKeyList }) -> UntagResourceRequest
```

Constructs UntagResourceRequest's fields from required parameters

#### `UpdateAliasRequest`

``` purescript
newtype UpdateAliasRequest
  = UpdateAliasRequest { "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType }
```

##### Instances
``` purescript
Newtype UpdateAliasRequest _
Generic UpdateAliasRequest _
Show UpdateAliasRequest
Decode UpdateAliasRequest
Encode UpdateAliasRequest
```

#### `newUpdateAliasRequest`

``` purescript
newUpdateAliasRequest :: AliasNameType -> KeyIdType -> UpdateAliasRequest
```

Constructs UpdateAliasRequest from required parameters

#### `newUpdateAliasRequest'`

``` purescript
newUpdateAliasRequest' :: AliasNameType -> KeyIdType -> ({ "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType } -> { "AliasName" :: AliasNameType, "TargetKeyId" :: KeyIdType }) -> UpdateAliasRequest
```

Constructs UpdateAliasRequest's fields from required parameters

#### `UpdateKeyDescriptionRequest`

``` purescript
newtype UpdateKeyDescriptionRequest
  = UpdateKeyDescriptionRequest { "KeyId" :: KeyIdType, "Description" :: DescriptionType }
```

##### Instances
``` purescript
Newtype UpdateKeyDescriptionRequest _
Generic UpdateKeyDescriptionRequest _
Show UpdateKeyDescriptionRequest
Decode UpdateKeyDescriptionRequest
Encode UpdateKeyDescriptionRequest
```

#### `newUpdateKeyDescriptionRequest`

``` purescript
newUpdateKeyDescriptionRequest :: DescriptionType -> KeyIdType -> UpdateKeyDescriptionRequest
```

Constructs UpdateKeyDescriptionRequest from required parameters

#### `newUpdateKeyDescriptionRequest'`

``` purescript
newUpdateKeyDescriptionRequest' :: DescriptionType -> KeyIdType -> ({ "KeyId" :: KeyIdType, "Description" :: DescriptionType } -> { "KeyId" :: KeyIdType, "Description" :: DescriptionType }) -> UpdateKeyDescriptionRequest
```

Constructs UpdateKeyDescriptionRequest's fields from required parameters

#### `WrappingKeySpec`

``` purescript
newtype WrappingKeySpec
  = WrappingKeySpec String
```

##### Instances
``` purescript
Newtype WrappingKeySpec _
Generic WrappingKeySpec _
Show WrappingKeySpec
Decode WrappingKeySpec
Encode WrappingKeySpec
```


