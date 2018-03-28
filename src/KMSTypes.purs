
module AWS.KMS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AWSAccountIdType = AWSAccountIdType String
derive instance newtypeAWSAccountIdType :: Newtype AWSAccountIdType _
derive instance repGenericAWSAccountIdType :: Generic AWSAccountIdType _
instance showAWSAccountIdType :: Show AWSAccountIdType where show = genericShow
instance decodeAWSAccountIdType :: Decode AWSAccountIdType where decode = genericDecode options
instance encodeAWSAccountIdType :: Encode AWSAccountIdType where encode = genericEncode options



newtype AlgorithmSpec = AlgorithmSpec String
derive instance newtypeAlgorithmSpec :: Newtype AlgorithmSpec _
derive instance repGenericAlgorithmSpec :: Generic AlgorithmSpec _
instance showAlgorithmSpec :: Show AlgorithmSpec where show = genericShow
instance decodeAlgorithmSpec :: Decode AlgorithmSpec where decode = genericDecode options
instance encodeAlgorithmSpec :: Encode AlgorithmSpec where encode = genericEncode options



newtype AliasList = AliasList (Array AliasListEntry)
derive instance newtypeAliasList :: Newtype AliasList _
derive instance repGenericAliasList :: Generic AliasList _
instance showAliasList :: Show AliasList where show = genericShow
instance decodeAliasList :: Decode AliasList where decode = genericDecode options
instance encodeAliasList :: Encode AliasList where encode = genericEncode options



-- | <p>Contains information about an alias.</p>
newtype AliasListEntry = AliasListEntry 
  { "AliasName" :: NullOrUndefined (AliasNameType)
  , "AliasArn" :: NullOrUndefined (ArnType)
  , "TargetKeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeAliasListEntry :: Newtype AliasListEntry _
derive instance repGenericAliasListEntry :: Generic AliasListEntry _
instance showAliasListEntry :: Show AliasListEntry where show = genericShow
instance decodeAliasListEntry :: Decode AliasListEntry where decode = genericDecode options
instance encodeAliasListEntry :: Encode AliasListEntry where encode = genericEncode options

-- | Constructs AliasListEntry from required parameters
newAliasListEntry :: AliasListEntry
newAliasListEntry  = AliasListEntry { "AliasArn": (NullOrUndefined Nothing), "AliasName": (NullOrUndefined Nothing), "TargetKeyId": (NullOrUndefined Nothing) }

-- | Constructs AliasListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliasListEntry' :: ( { "AliasName" :: NullOrUndefined (AliasNameType) , "AliasArn" :: NullOrUndefined (ArnType) , "TargetKeyId" :: NullOrUndefined (KeyIdType) } -> {"AliasName" :: NullOrUndefined (AliasNameType) , "AliasArn" :: NullOrUndefined (ArnType) , "TargetKeyId" :: NullOrUndefined (KeyIdType) } ) -> AliasListEntry
newAliasListEntry'  customize = (AliasListEntry <<< customize) { "AliasArn": (NullOrUndefined Nothing), "AliasName": (NullOrUndefined Nothing), "TargetKeyId": (NullOrUndefined Nothing) }



newtype AliasNameType = AliasNameType String
derive instance newtypeAliasNameType :: Newtype AliasNameType _
derive instance repGenericAliasNameType :: Generic AliasNameType _
instance showAliasNameType :: Show AliasNameType where show = genericShow
instance decodeAliasNameType :: Decode AliasNameType where decode = genericDecode options
instance encodeAliasNameType :: Encode AliasNameType where encode = genericEncode options



-- | <p>The request was rejected because it attempted to create a resource that already exists.</p>
newtype AlreadyExistsException = AlreadyExistsException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeAlreadyExistsException :: Newtype AlreadyExistsException _
derive instance repGenericAlreadyExistsException :: Generic AlreadyExistsException _
instance showAlreadyExistsException :: Show AlreadyExistsException where show = genericShow
instance decodeAlreadyExistsException :: Decode AlreadyExistsException where decode = genericDecode options
instance encodeAlreadyExistsException :: Encode AlreadyExistsException where encode = genericEncode options

-- | Constructs AlreadyExistsException from required parameters
newAlreadyExistsException :: AlreadyExistsException
newAlreadyExistsException  = AlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs AlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyExistsException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> AlreadyExistsException
newAlreadyExistsException'  customize = (AlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ArnType = ArnType String
derive instance newtypeArnType :: Newtype ArnType _
derive instance repGenericArnType :: Generic ArnType _
instance showArnType :: Show ArnType where show = genericShow
instance decodeArnType :: Decode ArnType where decode = genericDecode options
instance encodeArnType :: Encode ArnType where encode = genericEncode options



newtype BooleanType = BooleanType Boolean
derive instance newtypeBooleanType :: Newtype BooleanType _
derive instance repGenericBooleanType :: Generic BooleanType _
instance showBooleanType :: Show BooleanType where show = genericShow
instance decodeBooleanType :: Decode BooleanType where decode = genericDecode options
instance encodeBooleanType :: Encode BooleanType where encode = genericEncode options



newtype CancelKeyDeletionRequest = CancelKeyDeletionRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeCancelKeyDeletionRequest :: Newtype CancelKeyDeletionRequest _
derive instance repGenericCancelKeyDeletionRequest :: Generic CancelKeyDeletionRequest _
instance showCancelKeyDeletionRequest :: Show CancelKeyDeletionRequest where show = genericShow
instance decodeCancelKeyDeletionRequest :: Decode CancelKeyDeletionRequest where decode = genericDecode options
instance encodeCancelKeyDeletionRequest :: Encode CancelKeyDeletionRequest where encode = genericEncode options

-- | Constructs CancelKeyDeletionRequest from required parameters
newCancelKeyDeletionRequest :: KeyIdType -> CancelKeyDeletionRequest
newCancelKeyDeletionRequest _KeyId = CancelKeyDeletionRequest { "KeyId": _KeyId }

-- | Constructs CancelKeyDeletionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelKeyDeletionRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> CancelKeyDeletionRequest
newCancelKeyDeletionRequest' _KeyId customize = (CancelKeyDeletionRequest <<< customize) { "KeyId": _KeyId }



newtype CancelKeyDeletionResponse = CancelKeyDeletionResponse 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeCancelKeyDeletionResponse :: Newtype CancelKeyDeletionResponse _
derive instance repGenericCancelKeyDeletionResponse :: Generic CancelKeyDeletionResponse _
instance showCancelKeyDeletionResponse :: Show CancelKeyDeletionResponse where show = genericShow
instance decodeCancelKeyDeletionResponse :: Decode CancelKeyDeletionResponse where decode = genericDecode options
instance encodeCancelKeyDeletionResponse :: Encode CancelKeyDeletionResponse where encode = genericEncode options

-- | Constructs CancelKeyDeletionResponse from required parameters
newCancelKeyDeletionResponse :: CancelKeyDeletionResponse
newCancelKeyDeletionResponse  = CancelKeyDeletionResponse { "KeyId": (NullOrUndefined Nothing) }

-- | Constructs CancelKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelKeyDeletionResponse' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) } -> {"KeyId" :: NullOrUndefined (KeyIdType) } ) -> CancelKeyDeletionResponse
newCancelKeyDeletionResponse'  customize = (CancelKeyDeletionResponse <<< customize) { "KeyId": (NullOrUndefined Nothing) }



newtype CiphertextType = CiphertextType String
derive instance newtypeCiphertextType :: Newtype CiphertextType _
derive instance repGenericCiphertextType :: Generic CiphertextType _
instance showCiphertextType :: Show CiphertextType where show = genericShow
instance decodeCiphertextType :: Decode CiphertextType where decode = genericDecode options
instance encodeCiphertextType :: Encode CiphertextType where encode = genericEncode options



newtype CreateAliasRequest = CreateAliasRequest 
  { "AliasName" :: (AliasNameType)
  , "TargetKeyId" :: (KeyIdType)
  }
derive instance newtypeCreateAliasRequest :: Newtype CreateAliasRequest _
derive instance repGenericCreateAliasRequest :: Generic CreateAliasRequest _
instance showCreateAliasRequest :: Show CreateAliasRequest where show = genericShow
instance decodeCreateAliasRequest :: Decode CreateAliasRequest where decode = genericDecode options
instance encodeCreateAliasRequest :: Encode CreateAliasRequest where encode = genericEncode options

-- | Constructs CreateAliasRequest from required parameters
newCreateAliasRequest :: AliasNameType -> KeyIdType -> CreateAliasRequest
newCreateAliasRequest _AliasName _TargetKeyId = CreateAliasRequest { "AliasName": _AliasName, "TargetKeyId": _TargetKeyId }

-- | Constructs CreateAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAliasRequest' :: AliasNameType -> KeyIdType -> ( { "AliasName" :: (AliasNameType) , "TargetKeyId" :: (KeyIdType) } -> {"AliasName" :: (AliasNameType) , "TargetKeyId" :: (KeyIdType) } ) -> CreateAliasRequest
newCreateAliasRequest' _AliasName _TargetKeyId customize = (CreateAliasRequest <<< customize) { "AliasName": _AliasName, "TargetKeyId": _TargetKeyId }



newtype CreateGrantRequest = CreateGrantRequest 
  { "KeyId" :: (KeyIdType)
  , "GranteePrincipal" :: (PrincipalIdType)
  , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType)
  , "Operations" :: (GrantOperationList)
  , "Constraints" :: NullOrUndefined (GrantConstraints)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  , "Name" :: NullOrUndefined (GrantNameType)
  }
derive instance newtypeCreateGrantRequest :: Newtype CreateGrantRequest _
derive instance repGenericCreateGrantRequest :: Generic CreateGrantRequest _
instance showCreateGrantRequest :: Show CreateGrantRequest where show = genericShow
instance decodeCreateGrantRequest :: Decode CreateGrantRequest where decode = genericDecode options
instance encodeCreateGrantRequest :: Encode CreateGrantRequest where encode = genericEncode options

-- | Constructs CreateGrantRequest from required parameters
newCreateGrantRequest :: PrincipalIdType -> KeyIdType -> GrantOperationList -> CreateGrantRequest
newCreateGrantRequest _GranteePrincipal _KeyId _Operations = CreateGrantRequest { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }

-- | Constructs CreateGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantRequest' :: PrincipalIdType -> KeyIdType -> GrantOperationList -> ( { "KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: NullOrUndefined (GrantConstraints) , "GrantTokens" :: NullOrUndefined (GrantTokenList) , "Name" :: NullOrUndefined (GrantNameType) } -> {"KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: NullOrUndefined (GrantConstraints) , "GrantTokens" :: NullOrUndefined (GrantTokenList) , "Name" :: NullOrUndefined (GrantNameType) } ) -> CreateGrantRequest
newCreateGrantRequest' _GranteePrincipal _KeyId _Operations customize = (CreateGrantRequest <<< customize) { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }



newtype CreateGrantResponse = CreateGrantResponse 
  { "GrantToken" :: NullOrUndefined (GrantTokenType)
  , "GrantId" :: NullOrUndefined (GrantIdType)
  }
derive instance newtypeCreateGrantResponse :: Newtype CreateGrantResponse _
derive instance repGenericCreateGrantResponse :: Generic CreateGrantResponse _
instance showCreateGrantResponse :: Show CreateGrantResponse where show = genericShow
instance decodeCreateGrantResponse :: Decode CreateGrantResponse where decode = genericDecode options
instance encodeCreateGrantResponse :: Encode CreateGrantResponse where encode = genericEncode options

-- | Constructs CreateGrantResponse from required parameters
newCreateGrantResponse :: CreateGrantResponse
newCreateGrantResponse  = CreateGrantResponse { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing) }

-- | Constructs CreateGrantResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantResponse' :: ( { "GrantToken" :: NullOrUndefined (GrantTokenType) , "GrantId" :: NullOrUndefined (GrantIdType) } -> {"GrantToken" :: NullOrUndefined (GrantTokenType) , "GrantId" :: NullOrUndefined (GrantIdType) } ) -> CreateGrantResponse
newCreateGrantResponse'  customize = (CreateGrantResponse <<< customize) { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing) }



newtype CreateKeyRequest = CreateKeyRequest 
  { "Policy" :: NullOrUndefined (PolicyType)
  , "Description" :: NullOrUndefined (DescriptionType)
  , "KeyUsage" :: NullOrUndefined (KeyUsageType)
  , "Origin" :: NullOrUndefined (OriginType)
  , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType)
  , "Tags" :: NullOrUndefined (TagList)
  }
derive instance newtypeCreateKeyRequest :: Newtype CreateKeyRequest _
derive instance repGenericCreateKeyRequest :: Generic CreateKeyRequest _
instance showCreateKeyRequest :: Show CreateKeyRequest where show = genericShow
instance decodeCreateKeyRequest :: Decode CreateKeyRequest where decode = genericDecode options
instance encodeCreateKeyRequest :: Encode CreateKeyRequest where encode = genericEncode options

-- | Constructs CreateKeyRequest from required parameters
newCreateKeyRequest :: CreateKeyRequest
newCreateKeyRequest  = CreateKeyRequest { "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs CreateKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyRequest' :: ( { "Policy" :: NullOrUndefined (PolicyType) , "Description" :: NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined (KeyUsageType) , "Origin" :: NullOrUndefined (OriginType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) , "Tags" :: NullOrUndefined (TagList) } -> {"Policy" :: NullOrUndefined (PolicyType) , "Description" :: NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined (KeyUsageType) , "Origin" :: NullOrUndefined (OriginType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) , "Tags" :: NullOrUndefined (TagList) } ) -> CreateKeyRequest
newCreateKeyRequest'  customize = (CreateKeyRequest <<< customize) { "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype CreateKeyResponse = CreateKeyResponse 
  { "KeyMetadata" :: NullOrUndefined (KeyMetadata)
  }
derive instance newtypeCreateKeyResponse :: Newtype CreateKeyResponse _
derive instance repGenericCreateKeyResponse :: Generic CreateKeyResponse _
instance showCreateKeyResponse :: Show CreateKeyResponse where show = genericShow
instance decodeCreateKeyResponse :: Decode CreateKeyResponse where decode = genericDecode options
instance encodeCreateKeyResponse :: Encode CreateKeyResponse where encode = genericEncode options

-- | Constructs CreateKeyResponse from required parameters
newCreateKeyResponse :: CreateKeyResponse
newCreateKeyResponse  = CreateKeyResponse { "KeyMetadata": (NullOrUndefined Nothing) }

-- | Constructs CreateKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyResponse' :: ( { "KeyMetadata" :: NullOrUndefined (KeyMetadata) } -> {"KeyMetadata" :: NullOrUndefined (KeyMetadata) } ) -> CreateKeyResponse
newCreateKeyResponse'  customize = (CreateKeyResponse <<< customize) { "KeyMetadata": (NullOrUndefined Nothing) }



newtype DataKeySpec = DataKeySpec String
derive instance newtypeDataKeySpec :: Newtype DataKeySpec _
derive instance repGenericDataKeySpec :: Generic DataKeySpec _
instance showDataKeySpec :: Show DataKeySpec where show = genericShow
instance decodeDataKeySpec :: Decode DataKeySpec where decode = genericDecode options
instance encodeDataKeySpec :: Encode DataKeySpec where encode = genericEncode options



newtype DateType = DateType Types.Timestamp
derive instance newtypeDateType :: Newtype DateType _
derive instance repGenericDateType :: Generic DateType _
instance showDateType :: Show DateType where show = genericShow
instance decodeDateType :: Decode DateType where decode = genericDecode options
instance encodeDateType :: Encode DateType where encode = genericEncode options



newtype DecryptRequest = DecryptRequest 
  { "CiphertextBlob" :: (CiphertextType)
  , "EncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeDecryptRequest :: Newtype DecryptRequest _
derive instance repGenericDecryptRequest :: Generic DecryptRequest _
instance showDecryptRequest :: Show DecryptRequest where show = genericShow
instance decodeDecryptRequest :: Decode DecryptRequest where decode = genericDecode options
instance encodeDecryptRequest :: Encode DecryptRequest where encode = genericEncode options

-- | Constructs DecryptRequest from required parameters
newDecryptRequest :: CiphertextType -> DecryptRequest
newDecryptRequest _CiphertextBlob = DecryptRequest { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs DecryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptRequest' :: CiphertextType -> ( { "CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> DecryptRequest
newDecryptRequest' _CiphertextBlob customize = (DecryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }



newtype DecryptResponse = DecryptResponse 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  , "Plaintext" :: NullOrUndefined (PlaintextType)
  }
derive instance newtypeDecryptResponse :: Newtype DecryptResponse _
derive instance repGenericDecryptResponse :: Generic DecryptResponse _
instance showDecryptResponse :: Show DecryptResponse where show = genericShow
instance decodeDecryptResponse :: Decode DecryptResponse where decode = genericDecode options
instance encodeDecryptResponse :: Encode DecryptResponse where encode = genericEncode options

-- | Constructs DecryptResponse from required parameters
newDecryptResponse :: DecryptResponse
newDecryptResponse  = DecryptResponse { "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs DecryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptResponse' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) , "Plaintext" :: NullOrUndefined (PlaintextType) } -> {"KeyId" :: NullOrUndefined (KeyIdType) , "Plaintext" :: NullOrUndefined (PlaintextType) } ) -> DecryptResponse
newDecryptResponse'  customize = (DecryptResponse <<< customize) { "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }



newtype DeleteAliasRequest = DeleteAliasRequest 
  { "AliasName" :: (AliasNameType)
  }
derive instance newtypeDeleteAliasRequest :: Newtype DeleteAliasRequest _
derive instance repGenericDeleteAliasRequest :: Generic DeleteAliasRequest _
instance showDeleteAliasRequest :: Show DeleteAliasRequest where show = genericShow
instance decodeDeleteAliasRequest :: Decode DeleteAliasRequest where decode = genericDecode options
instance encodeDeleteAliasRequest :: Encode DeleteAliasRequest where encode = genericEncode options

-- | Constructs DeleteAliasRequest from required parameters
newDeleteAliasRequest :: AliasNameType -> DeleteAliasRequest
newDeleteAliasRequest _AliasName = DeleteAliasRequest { "AliasName": _AliasName }

-- | Constructs DeleteAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAliasRequest' :: AliasNameType -> ( { "AliasName" :: (AliasNameType) } -> {"AliasName" :: (AliasNameType) } ) -> DeleteAliasRequest
newDeleteAliasRequest' _AliasName customize = (DeleteAliasRequest <<< customize) { "AliasName": _AliasName }



newtype DeleteImportedKeyMaterialRequest = DeleteImportedKeyMaterialRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeDeleteImportedKeyMaterialRequest :: Newtype DeleteImportedKeyMaterialRequest _
derive instance repGenericDeleteImportedKeyMaterialRequest :: Generic DeleteImportedKeyMaterialRequest _
instance showDeleteImportedKeyMaterialRequest :: Show DeleteImportedKeyMaterialRequest where show = genericShow
instance decodeDeleteImportedKeyMaterialRequest :: Decode DeleteImportedKeyMaterialRequest where decode = genericDecode options
instance encodeDeleteImportedKeyMaterialRequest :: Encode DeleteImportedKeyMaterialRequest where encode = genericEncode options

-- | Constructs DeleteImportedKeyMaterialRequest from required parameters
newDeleteImportedKeyMaterialRequest :: KeyIdType -> DeleteImportedKeyMaterialRequest
newDeleteImportedKeyMaterialRequest _KeyId = DeleteImportedKeyMaterialRequest { "KeyId": _KeyId }

-- | Constructs DeleteImportedKeyMaterialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteImportedKeyMaterialRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> DeleteImportedKeyMaterialRequest
newDeleteImportedKeyMaterialRequest' _KeyId customize = (DeleteImportedKeyMaterialRequest <<< customize) { "KeyId": _KeyId }



-- | <p>The system timed out while trying to fulfill the request. The request can be retried.</p>
newtype DependencyTimeoutException = DependencyTimeoutException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeDependencyTimeoutException :: Newtype DependencyTimeoutException _
derive instance repGenericDependencyTimeoutException :: Generic DependencyTimeoutException _
instance showDependencyTimeoutException :: Show DependencyTimeoutException where show = genericShow
instance decodeDependencyTimeoutException :: Decode DependencyTimeoutException where decode = genericDecode options
instance encodeDependencyTimeoutException :: Encode DependencyTimeoutException where encode = genericEncode options

-- | Constructs DependencyTimeoutException from required parameters
newDependencyTimeoutException :: DependencyTimeoutException
newDependencyTimeoutException  = DependencyTimeoutException { "message": (NullOrUndefined Nothing) }

-- | Constructs DependencyTimeoutException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDependencyTimeoutException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> DependencyTimeoutException
newDependencyTimeoutException'  customize = (DependencyTimeoutException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DescribeKeyRequest = DescribeKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeDescribeKeyRequest :: Newtype DescribeKeyRequest _
derive instance repGenericDescribeKeyRequest :: Generic DescribeKeyRequest _
instance showDescribeKeyRequest :: Show DescribeKeyRequest where show = genericShow
instance decodeDescribeKeyRequest :: Decode DescribeKeyRequest where decode = genericDecode options
instance encodeDescribeKeyRequest :: Encode DescribeKeyRequest where encode = genericEncode options

-- | Constructs DescribeKeyRequest from required parameters
newDescribeKeyRequest :: KeyIdType -> DescribeKeyRequest
newDescribeKeyRequest _KeyId = DescribeKeyRequest { "KeyId": _KeyId, "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs DescribeKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> DescribeKeyRequest
newDescribeKeyRequest' _KeyId customize = (DescribeKeyRequest <<< customize) { "KeyId": _KeyId, "GrantTokens": (NullOrUndefined Nothing) }



newtype DescribeKeyResponse = DescribeKeyResponse 
  { "KeyMetadata" :: NullOrUndefined (KeyMetadata)
  }
derive instance newtypeDescribeKeyResponse :: Newtype DescribeKeyResponse _
derive instance repGenericDescribeKeyResponse :: Generic DescribeKeyResponse _
instance showDescribeKeyResponse :: Show DescribeKeyResponse where show = genericShow
instance decodeDescribeKeyResponse :: Decode DescribeKeyResponse where decode = genericDecode options
instance encodeDescribeKeyResponse :: Encode DescribeKeyResponse where encode = genericEncode options

-- | Constructs DescribeKeyResponse from required parameters
newDescribeKeyResponse :: DescribeKeyResponse
newDescribeKeyResponse  = DescribeKeyResponse { "KeyMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyResponse' :: ( { "KeyMetadata" :: NullOrUndefined (KeyMetadata) } -> {"KeyMetadata" :: NullOrUndefined (KeyMetadata) } ) -> DescribeKeyResponse
newDescribeKeyResponse'  customize = (DescribeKeyResponse <<< customize) { "KeyMetadata": (NullOrUndefined Nothing) }



newtype DescriptionType = DescriptionType String
derive instance newtypeDescriptionType :: Newtype DescriptionType _
derive instance repGenericDescriptionType :: Generic DescriptionType _
instance showDescriptionType :: Show DescriptionType where show = genericShow
instance decodeDescriptionType :: Decode DescriptionType where decode = genericDecode options
instance encodeDescriptionType :: Encode DescriptionType where encode = genericEncode options



newtype DisableKeyRequest = DisableKeyRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeDisableKeyRequest :: Newtype DisableKeyRequest _
derive instance repGenericDisableKeyRequest :: Generic DisableKeyRequest _
instance showDisableKeyRequest :: Show DisableKeyRequest where show = genericShow
instance decodeDisableKeyRequest :: Decode DisableKeyRequest where decode = genericDecode options
instance encodeDisableKeyRequest :: Encode DisableKeyRequest where encode = genericEncode options

-- | Constructs DisableKeyRequest from required parameters
newDisableKeyRequest :: KeyIdType -> DisableKeyRequest
newDisableKeyRequest _KeyId = DisableKeyRequest { "KeyId": _KeyId }

-- | Constructs DisableKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> DisableKeyRequest
newDisableKeyRequest' _KeyId customize = (DisableKeyRequest <<< customize) { "KeyId": _KeyId }



newtype DisableKeyRotationRequest = DisableKeyRotationRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeDisableKeyRotationRequest :: Newtype DisableKeyRotationRequest _
derive instance repGenericDisableKeyRotationRequest :: Generic DisableKeyRotationRequest _
instance showDisableKeyRotationRequest :: Show DisableKeyRotationRequest where show = genericShow
instance decodeDisableKeyRotationRequest :: Decode DisableKeyRotationRequest where decode = genericDecode options
instance encodeDisableKeyRotationRequest :: Encode DisableKeyRotationRequest where encode = genericEncode options

-- | Constructs DisableKeyRotationRequest from required parameters
newDisableKeyRotationRequest :: KeyIdType -> DisableKeyRotationRequest
newDisableKeyRotationRequest _KeyId = DisableKeyRotationRequest { "KeyId": _KeyId }

-- | Constructs DisableKeyRotationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableKeyRotationRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> DisableKeyRotationRequest
newDisableKeyRotationRequest' _KeyId customize = (DisableKeyRotationRequest <<< customize) { "KeyId": _KeyId }



-- | <p>The request was rejected because the specified CMK is not enabled.</p>
newtype DisabledException = DisabledException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeDisabledException :: Newtype DisabledException _
derive instance repGenericDisabledException :: Generic DisabledException _
instance showDisabledException :: Show DisabledException where show = genericShow
instance decodeDisabledException :: Decode DisabledException where decode = genericDecode options
instance encodeDisabledException :: Encode DisabledException where encode = genericEncode options

-- | Constructs DisabledException from required parameters
newDisabledException :: DisabledException
newDisabledException  = DisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs DisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisabledException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> DisabledException
newDisabledException'  customize = (DisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EnableKeyRequest = EnableKeyRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeEnableKeyRequest :: Newtype EnableKeyRequest _
derive instance repGenericEnableKeyRequest :: Generic EnableKeyRequest _
instance showEnableKeyRequest :: Show EnableKeyRequest where show = genericShow
instance decodeEnableKeyRequest :: Decode EnableKeyRequest where decode = genericDecode options
instance encodeEnableKeyRequest :: Encode EnableKeyRequest where encode = genericEncode options

-- | Constructs EnableKeyRequest from required parameters
newEnableKeyRequest :: KeyIdType -> EnableKeyRequest
newEnableKeyRequest _KeyId = EnableKeyRequest { "KeyId": _KeyId }

-- | Constructs EnableKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> EnableKeyRequest
newEnableKeyRequest' _KeyId customize = (EnableKeyRequest <<< customize) { "KeyId": _KeyId }



newtype EnableKeyRotationRequest = EnableKeyRotationRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeEnableKeyRotationRequest :: Newtype EnableKeyRotationRequest _
derive instance repGenericEnableKeyRotationRequest :: Generic EnableKeyRotationRequest _
instance showEnableKeyRotationRequest :: Show EnableKeyRotationRequest where show = genericShow
instance decodeEnableKeyRotationRequest :: Decode EnableKeyRotationRequest where decode = genericDecode options
instance encodeEnableKeyRotationRequest :: Encode EnableKeyRotationRequest where encode = genericEncode options

-- | Constructs EnableKeyRotationRequest from required parameters
newEnableKeyRotationRequest :: KeyIdType -> EnableKeyRotationRequest
newEnableKeyRotationRequest _KeyId = EnableKeyRotationRequest { "KeyId": _KeyId }

-- | Constructs EnableKeyRotationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableKeyRotationRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> EnableKeyRotationRequest
newEnableKeyRotationRequest' _KeyId customize = (EnableKeyRotationRequest <<< customize) { "KeyId": _KeyId }



newtype EncryptRequest = EncryptRequest 
  { "KeyId" :: (KeyIdType)
  , "Plaintext" :: (PlaintextType)
  , "EncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeEncryptRequest :: Newtype EncryptRequest _
derive instance repGenericEncryptRequest :: Generic EncryptRequest _
instance showEncryptRequest :: Show EncryptRequest where show = genericShow
instance decodeEncryptRequest :: Decode EncryptRequest where decode = genericDecode options
instance encodeEncryptRequest :: Encode EncryptRequest where encode = genericEncode options

-- | Constructs EncryptRequest from required parameters
newEncryptRequest :: KeyIdType -> PlaintextType -> EncryptRequest
newEncryptRequest _KeyId _Plaintext = EncryptRequest { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs EncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptRequest' :: KeyIdType -> PlaintextType -> ( { "KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> EncryptRequest
newEncryptRequest' _KeyId _Plaintext customize = (EncryptRequest <<< customize) { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }



newtype EncryptResponse = EncryptResponse 
  { "CiphertextBlob" :: NullOrUndefined (CiphertextType)
  , "KeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeEncryptResponse :: Newtype EncryptResponse _
derive instance repGenericEncryptResponse :: Generic EncryptResponse _
instance showEncryptResponse :: Show EncryptResponse where show = genericShow
instance decodeEncryptResponse :: Decode EncryptResponse where decode = genericDecode options
instance encodeEncryptResponse :: Encode EncryptResponse where encode = genericEncode options

-- | Constructs EncryptResponse from required parameters
newEncryptResponse :: EncryptResponse
newEncryptResponse  = EncryptResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs EncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptResponse' :: ( { "CiphertextBlob" :: NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined (KeyIdType) } ) -> EncryptResponse
newEncryptResponse'  customize = (EncryptResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype EncryptionContextKey = EncryptionContextKey String
derive instance newtypeEncryptionContextKey :: Newtype EncryptionContextKey _
derive instance repGenericEncryptionContextKey :: Generic EncryptionContextKey _
instance showEncryptionContextKey :: Show EncryptionContextKey where show = genericShow
instance decodeEncryptionContextKey :: Decode EncryptionContextKey where decode = genericDecode options
instance encodeEncryptionContextKey :: Encode EncryptionContextKey where encode = genericEncode options



newtype EncryptionContextType = EncryptionContextType (StrMap.StrMap EncryptionContextValue)
derive instance newtypeEncryptionContextType :: Newtype EncryptionContextType _
derive instance repGenericEncryptionContextType :: Generic EncryptionContextType _
instance showEncryptionContextType :: Show EncryptionContextType where show = genericShow
instance decodeEncryptionContextType :: Decode EncryptionContextType where decode = genericDecode options
instance encodeEncryptionContextType :: Encode EncryptionContextType where encode = genericEncode options



newtype EncryptionContextValue = EncryptionContextValue String
derive instance newtypeEncryptionContextValue :: Newtype EncryptionContextValue _
derive instance repGenericEncryptionContextValue :: Generic EncryptionContextValue _
instance showEncryptionContextValue :: Show EncryptionContextValue where show = genericShow
instance decodeEncryptionContextValue :: Decode EncryptionContextValue where decode = genericDecode options
instance encodeEncryptionContextValue :: Encode EncryptionContextValue where encode = genericEncode options



newtype ErrorMessageType = ErrorMessageType String
derive instance newtypeErrorMessageType :: Newtype ErrorMessageType _
derive instance repGenericErrorMessageType :: Generic ErrorMessageType _
instance showErrorMessageType :: Show ErrorMessageType where show = genericShow
instance decodeErrorMessageType :: Decode ErrorMessageType where decode = genericDecode options
instance encodeErrorMessageType :: Encode ErrorMessageType where encode = genericEncode options



newtype ExpirationModelType = ExpirationModelType String
derive instance newtypeExpirationModelType :: Newtype ExpirationModelType _
derive instance repGenericExpirationModelType :: Generic ExpirationModelType _
instance showExpirationModelType :: Show ExpirationModelType where show = genericShow
instance decodeExpirationModelType :: Decode ExpirationModelType where decode = genericDecode options
instance encodeExpirationModelType :: Encode ExpirationModelType where encode = genericEncode options



-- | <p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>
newtype ExpiredImportTokenException = ExpiredImportTokenException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeExpiredImportTokenException :: Newtype ExpiredImportTokenException _
derive instance repGenericExpiredImportTokenException :: Generic ExpiredImportTokenException _
instance showExpiredImportTokenException :: Show ExpiredImportTokenException where show = genericShow
instance decodeExpiredImportTokenException :: Decode ExpiredImportTokenException where decode = genericDecode options
instance encodeExpiredImportTokenException :: Encode ExpiredImportTokenException where encode = genericEncode options

-- | Constructs ExpiredImportTokenException from required parameters
newExpiredImportTokenException :: ExpiredImportTokenException
newExpiredImportTokenException  = ExpiredImportTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs ExpiredImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredImportTokenException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> ExpiredImportTokenException
newExpiredImportTokenException'  customize = (ExpiredImportTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype GenerateDataKeyRequest = GenerateDataKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType)
  , "KeySpec" :: NullOrUndefined (DataKeySpec)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyRequest :: Newtype GenerateDataKeyRequest _
derive instance repGenericGenerateDataKeyRequest :: Generic GenerateDataKeyRequest _
instance showGenerateDataKeyRequest :: Show GenerateDataKeyRequest where show = genericShow
instance decodeGenerateDataKeyRequest :: Decode GenerateDataKeyRequest where decode = genericDecode options
instance encodeGenerateDataKeyRequest :: Encode GenerateDataKeyRequest where encode = genericEncode options

-- | Constructs GenerateDataKeyRequest from required parameters
newGenerateDataKeyRequest :: KeyIdType -> GenerateDataKeyRequest
newGenerateDataKeyRequest _KeyId = GenerateDataKeyRequest { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) , "KeySpec" :: NullOrUndefined (DataKeySpec) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) , "KeySpec" :: NullOrUndefined (DataKeySpec) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> GenerateDataKeyRequest
newGenerateDataKeyRequest' _KeyId customize = (GenerateDataKeyRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateDataKeyResponse = GenerateDataKeyResponse 
  { "CiphertextBlob" :: NullOrUndefined (CiphertextType)
  , "Plaintext" :: NullOrUndefined (PlaintextType)
  , "KeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeGenerateDataKeyResponse :: Newtype GenerateDataKeyResponse _
derive instance repGenericGenerateDataKeyResponse :: Generic GenerateDataKeyResponse _
instance showGenerateDataKeyResponse :: Show GenerateDataKeyResponse where show = genericShow
instance decodeGenerateDataKeyResponse :: Decode GenerateDataKeyResponse where decode = genericDecode options
instance encodeGenerateDataKeyResponse :: Encode GenerateDataKeyResponse where encode = genericEncode options

-- | Constructs GenerateDataKeyResponse from required parameters
newGenerateDataKeyResponse :: GenerateDataKeyResponse
newGenerateDataKeyResponse  = GenerateDataKeyResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyResponse' :: ( { "CiphertextBlob" :: NullOrUndefined (CiphertextType) , "Plaintext" :: NullOrUndefined (PlaintextType) , "KeyId" :: NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined (CiphertextType) , "Plaintext" :: NullOrUndefined (PlaintextType) , "KeyId" :: NullOrUndefined (KeyIdType) } ) -> GenerateDataKeyResponse
newGenerateDataKeyResponse'  customize = (GenerateDataKeyResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }



newtype GenerateDataKeyWithoutPlaintextRequest = GenerateDataKeyWithoutPlaintextRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "KeySpec" :: NullOrUndefined (DataKeySpec)
  , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextRequest :: Newtype GenerateDataKeyWithoutPlaintextRequest _
derive instance repGenericGenerateDataKeyWithoutPlaintextRequest :: Generic GenerateDataKeyWithoutPlaintextRequest _
instance showGenerateDataKeyWithoutPlaintextRequest :: Show GenerateDataKeyWithoutPlaintextRequest where show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextRequest :: Decode GenerateDataKeyWithoutPlaintextRequest where decode = genericDecode options
instance encodeGenerateDataKeyWithoutPlaintextRequest :: Encode GenerateDataKeyWithoutPlaintextRequest where encode = genericEncode options

-- | Constructs GenerateDataKeyWithoutPlaintextRequest from required parameters
newGenerateDataKeyWithoutPlaintextRequest :: KeyIdType -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest _KeyId = GenerateDataKeyWithoutPlaintextRequest { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyWithoutPlaintextRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "KeySpec" :: NullOrUndefined (DataKeySpec) , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined (EncryptionContextType) , "KeySpec" :: NullOrUndefined (DataKeySpec) , "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest' _KeyId customize = (GenerateDataKeyWithoutPlaintextRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateDataKeyWithoutPlaintextResponse = GenerateDataKeyWithoutPlaintextResponse 
  { "CiphertextBlob" :: NullOrUndefined (CiphertextType)
  , "KeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextResponse :: Newtype GenerateDataKeyWithoutPlaintextResponse _
derive instance repGenericGenerateDataKeyWithoutPlaintextResponse :: Generic GenerateDataKeyWithoutPlaintextResponse _
instance showGenerateDataKeyWithoutPlaintextResponse :: Show GenerateDataKeyWithoutPlaintextResponse where show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextResponse :: Decode GenerateDataKeyWithoutPlaintextResponse where decode = genericDecode options
instance encodeGenerateDataKeyWithoutPlaintextResponse :: Encode GenerateDataKeyWithoutPlaintextResponse where encode = genericEncode options

-- | Constructs GenerateDataKeyWithoutPlaintextResponse from required parameters
newGenerateDataKeyWithoutPlaintextResponse :: GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse  = GenerateDataKeyWithoutPlaintextResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyWithoutPlaintextResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextResponse' :: ( { "CiphertextBlob" :: NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined (KeyIdType) } ) -> GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse'  customize = (GenerateDataKeyWithoutPlaintextResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype GenerateRandomRequest = GenerateRandomRequest 
  { "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType)
  }
derive instance newtypeGenerateRandomRequest :: Newtype GenerateRandomRequest _
derive instance repGenericGenerateRandomRequest :: Generic GenerateRandomRequest _
instance showGenerateRandomRequest :: Show GenerateRandomRequest where show = genericShow
instance decodeGenerateRandomRequest :: Decode GenerateRandomRequest where decode = genericDecode options
instance encodeGenerateRandomRequest :: Encode GenerateRandomRequest where encode = genericEncode options

-- | Constructs GenerateRandomRequest from required parameters
newGenerateRandomRequest :: GenerateRandomRequest
newGenerateRandomRequest  = GenerateRandomRequest { "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateRandomRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomRequest' :: ( { "NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) } -> {"NumberOfBytes" :: NullOrUndefined (NumberOfBytesType) } ) -> GenerateRandomRequest
newGenerateRandomRequest'  customize = (GenerateRandomRequest <<< customize) { "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateRandomResponse = GenerateRandomResponse 
  { "Plaintext" :: NullOrUndefined (PlaintextType)
  }
derive instance newtypeGenerateRandomResponse :: Newtype GenerateRandomResponse _
derive instance repGenericGenerateRandomResponse :: Generic GenerateRandomResponse _
instance showGenerateRandomResponse :: Show GenerateRandomResponse where show = genericShow
instance decodeGenerateRandomResponse :: Decode GenerateRandomResponse where decode = genericDecode options
instance encodeGenerateRandomResponse :: Encode GenerateRandomResponse where encode = genericEncode options

-- | Constructs GenerateRandomResponse from required parameters
newGenerateRandomResponse :: GenerateRandomResponse
newGenerateRandomResponse  = GenerateRandomResponse { "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs GenerateRandomResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomResponse' :: ( { "Plaintext" :: NullOrUndefined (PlaintextType) } -> {"Plaintext" :: NullOrUndefined (PlaintextType) } ) -> GenerateRandomResponse
newGenerateRandomResponse'  customize = (GenerateRandomResponse <<< customize) { "Plaintext": (NullOrUndefined Nothing) }



newtype GetKeyPolicyRequest = GetKeyPolicyRequest 
  { "KeyId" :: (KeyIdType)
  , "PolicyName" :: (PolicyNameType)
  }
derive instance newtypeGetKeyPolicyRequest :: Newtype GetKeyPolicyRequest _
derive instance repGenericGetKeyPolicyRequest :: Generic GetKeyPolicyRequest _
instance showGetKeyPolicyRequest :: Show GetKeyPolicyRequest where show = genericShow
instance decodeGetKeyPolicyRequest :: Decode GetKeyPolicyRequest where decode = genericDecode options
instance encodeGetKeyPolicyRequest :: Encode GetKeyPolicyRequest where encode = genericEncode options

-- | Constructs GetKeyPolicyRequest from required parameters
newGetKeyPolicyRequest :: KeyIdType -> PolicyNameType -> GetKeyPolicyRequest
newGetKeyPolicyRequest _KeyId _PolicyName = GetKeyPolicyRequest { "KeyId": _KeyId, "PolicyName": _PolicyName }

-- | Constructs GetKeyPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyPolicyRequest' :: KeyIdType -> PolicyNameType -> ( { "KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) } -> {"KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) } ) -> GetKeyPolicyRequest
newGetKeyPolicyRequest' _KeyId _PolicyName customize = (GetKeyPolicyRequest <<< customize) { "KeyId": _KeyId, "PolicyName": _PolicyName }



newtype GetKeyPolicyResponse = GetKeyPolicyResponse 
  { "Policy" :: NullOrUndefined (PolicyType)
  }
derive instance newtypeGetKeyPolicyResponse :: Newtype GetKeyPolicyResponse _
derive instance repGenericGetKeyPolicyResponse :: Generic GetKeyPolicyResponse _
instance showGetKeyPolicyResponse :: Show GetKeyPolicyResponse where show = genericShow
instance decodeGetKeyPolicyResponse :: Decode GetKeyPolicyResponse where decode = genericDecode options
instance encodeGetKeyPolicyResponse :: Encode GetKeyPolicyResponse where encode = genericEncode options

-- | Constructs GetKeyPolicyResponse from required parameters
newGetKeyPolicyResponse :: GetKeyPolicyResponse
newGetKeyPolicyResponse  = GetKeyPolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs GetKeyPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyPolicyResponse' :: ( { "Policy" :: NullOrUndefined (PolicyType) } -> {"Policy" :: NullOrUndefined (PolicyType) } ) -> GetKeyPolicyResponse
newGetKeyPolicyResponse'  customize = (GetKeyPolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype GetKeyRotationStatusRequest = GetKeyRotationStatusRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeGetKeyRotationStatusRequest :: Newtype GetKeyRotationStatusRequest _
derive instance repGenericGetKeyRotationStatusRequest :: Generic GetKeyRotationStatusRequest _
instance showGetKeyRotationStatusRequest :: Show GetKeyRotationStatusRequest where show = genericShow
instance decodeGetKeyRotationStatusRequest :: Decode GetKeyRotationStatusRequest where decode = genericDecode options
instance encodeGetKeyRotationStatusRequest :: Encode GetKeyRotationStatusRequest where encode = genericEncode options

-- | Constructs GetKeyRotationStatusRequest from required parameters
newGetKeyRotationStatusRequest :: KeyIdType -> GetKeyRotationStatusRequest
newGetKeyRotationStatusRequest _KeyId = GetKeyRotationStatusRequest { "KeyId": _KeyId }

-- | Constructs GetKeyRotationStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyRotationStatusRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> GetKeyRotationStatusRequest
newGetKeyRotationStatusRequest' _KeyId customize = (GetKeyRotationStatusRequest <<< customize) { "KeyId": _KeyId }



newtype GetKeyRotationStatusResponse = GetKeyRotationStatusResponse 
  { "KeyRotationEnabled" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeGetKeyRotationStatusResponse :: Newtype GetKeyRotationStatusResponse _
derive instance repGenericGetKeyRotationStatusResponse :: Generic GetKeyRotationStatusResponse _
instance showGetKeyRotationStatusResponse :: Show GetKeyRotationStatusResponse where show = genericShow
instance decodeGetKeyRotationStatusResponse :: Decode GetKeyRotationStatusResponse where decode = genericDecode options
instance encodeGetKeyRotationStatusResponse :: Encode GetKeyRotationStatusResponse where encode = genericEncode options

-- | Constructs GetKeyRotationStatusResponse from required parameters
newGetKeyRotationStatusResponse :: GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse  = GetKeyRotationStatusResponse { "KeyRotationEnabled": (NullOrUndefined Nothing) }

-- | Constructs GetKeyRotationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyRotationStatusResponse' :: ( { "KeyRotationEnabled" :: NullOrUndefined (BooleanType) } -> {"KeyRotationEnabled" :: NullOrUndefined (BooleanType) } ) -> GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse'  customize = (GetKeyRotationStatusResponse <<< customize) { "KeyRotationEnabled": (NullOrUndefined Nothing) }



newtype GetParametersForImportRequest = GetParametersForImportRequest 
  { "KeyId" :: (KeyIdType)
  , "WrappingAlgorithm" :: (AlgorithmSpec)
  , "WrappingKeySpec" :: (WrappingKeySpec)
  }
derive instance newtypeGetParametersForImportRequest :: Newtype GetParametersForImportRequest _
derive instance repGenericGetParametersForImportRequest :: Generic GetParametersForImportRequest _
instance showGetParametersForImportRequest :: Show GetParametersForImportRequest where show = genericShow
instance decodeGetParametersForImportRequest :: Decode GetParametersForImportRequest where decode = genericDecode options
instance encodeGetParametersForImportRequest :: Encode GetParametersForImportRequest where encode = genericEncode options

-- | Constructs GetParametersForImportRequest from required parameters
newGetParametersForImportRequest :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> GetParametersForImportRequest
newGetParametersForImportRequest _KeyId _WrappingAlgorithm _WrappingKeySpec = GetParametersForImportRequest { "KeyId": _KeyId, "WrappingAlgorithm": _WrappingAlgorithm, "WrappingKeySpec": _WrappingKeySpec }

-- | Constructs GetParametersForImportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetParametersForImportRequest' :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> ( { "KeyId" :: (KeyIdType) , "WrappingAlgorithm" :: (AlgorithmSpec) , "WrappingKeySpec" :: (WrappingKeySpec) } -> {"KeyId" :: (KeyIdType) , "WrappingAlgorithm" :: (AlgorithmSpec) , "WrappingKeySpec" :: (WrappingKeySpec) } ) -> GetParametersForImportRequest
newGetParametersForImportRequest' _KeyId _WrappingAlgorithm _WrappingKeySpec customize = (GetParametersForImportRequest <<< customize) { "KeyId": _KeyId, "WrappingAlgorithm": _WrappingAlgorithm, "WrappingKeySpec": _WrappingKeySpec }



newtype GetParametersForImportResponse = GetParametersForImportResponse 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  , "ImportToken" :: NullOrUndefined (CiphertextType)
  , "PublicKey" :: NullOrUndefined (PlaintextType)
  , "ParametersValidTo" :: NullOrUndefined (DateType)
  }
derive instance newtypeGetParametersForImportResponse :: Newtype GetParametersForImportResponse _
derive instance repGenericGetParametersForImportResponse :: Generic GetParametersForImportResponse _
instance showGetParametersForImportResponse :: Show GetParametersForImportResponse where show = genericShow
instance decodeGetParametersForImportResponse :: Decode GetParametersForImportResponse where decode = genericDecode options
instance encodeGetParametersForImportResponse :: Encode GetParametersForImportResponse where encode = genericEncode options

-- | Constructs GetParametersForImportResponse from required parameters
newGetParametersForImportResponse :: GetParametersForImportResponse
newGetParametersForImportResponse  = GetParametersForImportResponse { "ImportToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "ParametersValidTo": (NullOrUndefined Nothing), "PublicKey": (NullOrUndefined Nothing) }

-- | Constructs GetParametersForImportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetParametersForImportResponse' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) , "ImportToken" :: NullOrUndefined (CiphertextType) , "PublicKey" :: NullOrUndefined (PlaintextType) , "ParametersValidTo" :: NullOrUndefined (DateType) } -> {"KeyId" :: NullOrUndefined (KeyIdType) , "ImportToken" :: NullOrUndefined (CiphertextType) , "PublicKey" :: NullOrUndefined (PlaintextType) , "ParametersValidTo" :: NullOrUndefined (DateType) } ) -> GetParametersForImportResponse
newGetParametersForImportResponse'  customize = (GetParametersForImportResponse <<< customize) { "ImportToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "ParametersValidTo": (NullOrUndefined Nothing), "PublicKey": (NullOrUndefined Nothing) }



-- | <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In constrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>
newtype GrantConstraints = GrantConstraints 
  { "EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType)
  , "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType)
  }
derive instance newtypeGrantConstraints :: Newtype GrantConstraints _
derive instance repGenericGrantConstraints :: Generic GrantConstraints _
instance showGrantConstraints :: Show GrantConstraints where show = genericShow
instance decodeGrantConstraints :: Decode GrantConstraints where decode = genericDecode options
instance encodeGrantConstraints :: Encode GrantConstraints where encode = genericEncode options

-- | Constructs GrantConstraints from required parameters
newGrantConstraints :: GrantConstraints
newGrantConstraints  = GrantConstraints { "EncryptionContextEquals": (NullOrUndefined Nothing), "EncryptionContextSubset": (NullOrUndefined Nothing) }

-- | Constructs GrantConstraints's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantConstraints' :: ( { "EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType) , "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType) } -> {"EncryptionContextSubset" :: NullOrUndefined (EncryptionContextType) , "EncryptionContextEquals" :: NullOrUndefined (EncryptionContextType) } ) -> GrantConstraints
newGrantConstraints'  customize = (GrantConstraints <<< customize) { "EncryptionContextEquals": (NullOrUndefined Nothing), "EncryptionContextSubset": (NullOrUndefined Nothing) }



newtype GrantIdType = GrantIdType String
derive instance newtypeGrantIdType :: Newtype GrantIdType _
derive instance repGenericGrantIdType :: Generic GrantIdType _
instance showGrantIdType :: Show GrantIdType where show = genericShow
instance decodeGrantIdType :: Decode GrantIdType where decode = genericDecode options
instance encodeGrantIdType :: Encode GrantIdType where encode = genericEncode options



newtype GrantList = GrantList (Array GrantListEntry)
derive instance newtypeGrantList :: Newtype GrantList _
derive instance repGenericGrantList :: Generic GrantList _
instance showGrantList :: Show GrantList where show = genericShow
instance decodeGrantList :: Decode GrantList where decode = genericDecode options
instance encodeGrantList :: Encode GrantList where encode = genericEncode options



-- | <p>Contains information about an entry in a list of grants.</p>
newtype GrantListEntry = GrantListEntry 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  , "GrantId" :: NullOrUndefined (GrantIdType)
  , "Name" :: NullOrUndefined (GrantNameType)
  , "CreationDate" :: NullOrUndefined (DateType)
  , "GranteePrincipal" :: NullOrUndefined (PrincipalIdType)
  , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType)
  , "IssuingAccount" :: NullOrUndefined (PrincipalIdType)
  , "Operations" :: NullOrUndefined (GrantOperationList)
  , "Constraints" :: NullOrUndefined (GrantConstraints)
  }
derive instance newtypeGrantListEntry :: Newtype GrantListEntry _
derive instance repGenericGrantListEntry :: Generic GrantListEntry _
instance showGrantListEntry :: Show GrantListEntry where show = genericShow
instance decodeGrantListEntry :: Decode GrantListEntry where decode = genericDecode options
instance encodeGrantListEntry :: Encode GrantListEntry where encode = genericEncode options

-- | Constructs GrantListEntry from required parameters
newGrantListEntry :: GrantListEntry
newGrantListEntry  = GrantListEntry { "Constraints": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "GrantId": (NullOrUndefined Nothing), "GranteePrincipal": (NullOrUndefined Nothing), "IssuingAccount": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }

-- | Constructs GrantListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantListEntry' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined (GrantIdType) , "Name" :: NullOrUndefined (GrantNameType) , "CreationDate" :: NullOrUndefined (DateType) , "GranteePrincipal" :: NullOrUndefined (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType) , "IssuingAccount" :: NullOrUndefined (PrincipalIdType) , "Operations" :: NullOrUndefined (GrantOperationList) , "Constraints" :: NullOrUndefined (GrantConstraints) } -> {"KeyId" :: NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined (GrantIdType) , "Name" :: NullOrUndefined (GrantNameType) , "CreationDate" :: NullOrUndefined (DateType) , "GranteePrincipal" :: NullOrUndefined (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined (PrincipalIdType) , "IssuingAccount" :: NullOrUndefined (PrincipalIdType) , "Operations" :: NullOrUndefined (GrantOperationList) , "Constraints" :: NullOrUndefined (GrantConstraints) } ) -> GrantListEntry
newGrantListEntry'  customize = (GrantListEntry <<< customize) { "Constraints": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "GrantId": (NullOrUndefined Nothing), "GranteePrincipal": (NullOrUndefined Nothing), "IssuingAccount": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }



newtype GrantNameType = GrantNameType String
derive instance newtypeGrantNameType :: Newtype GrantNameType _
derive instance repGenericGrantNameType :: Generic GrantNameType _
instance showGrantNameType :: Show GrantNameType where show = genericShow
instance decodeGrantNameType :: Decode GrantNameType where decode = genericDecode options
instance encodeGrantNameType :: Encode GrantNameType where encode = genericEncode options



newtype GrantOperation = GrantOperation String
derive instance newtypeGrantOperation :: Newtype GrantOperation _
derive instance repGenericGrantOperation :: Generic GrantOperation _
instance showGrantOperation :: Show GrantOperation where show = genericShow
instance decodeGrantOperation :: Decode GrantOperation where decode = genericDecode options
instance encodeGrantOperation :: Encode GrantOperation where encode = genericEncode options



newtype GrantOperationList = GrantOperationList (Array GrantOperation)
derive instance newtypeGrantOperationList :: Newtype GrantOperationList _
derive instance repGenericGrantOperationList :: Generic GrantOperationList _
instance showGrantOperationList :: Show GrantOperationList where show = genericShow
instance decodeGrantOperationList :: Decode GrantOperationList where decode = genericDecode options
instance encodeGrantOperationList :: Encode GrantOperationList where encode = genericEncode options



newtype GrantTokenList = GrantTokenList (Array GrantTokenType)
derive instance newtypeGrantTokenList :: Newtype GrantTokenList _
derive instance repGenericGrantTokenList :: Generic GrantTokenList _
instance showGrantTokenList :: Show GrantTokenList where show = genericShow
instance decodeGrantTokenList :: Decode GrantTokenList where decode = genericDecode options
instance encodeGrantTokenList :: Encode GrantTokenList where encode = genericEncode options



newtype GrantTokenType = GrantTokenType String
derive instance newtypeGrantTokenType :: Newtype GrantTokenType _
derive instance repGenericGrantTokenType :: Generic GrantTokenType _
instance showGrantTokenType :: Show GrantTokenType where show = genericShow
instance decodeGrantTokenType :: Decode GrantTokenType where decode = genericDecode options
instance encodeGrantTokenType :: Encode GrantTokenType where encode = genericEncode options



newtype ImportKeyMaterialRequest = ImportKeyMaterialRequest 
  { "KeyId" :: (KeyIdType)
  , "ImportToken" :: (CiphertextType)
  , "EncryptedKeyMaterial" :: (CiphertextType)
  , "ValidTo" :: NullOrUndefined (DateType)
  , "ExpirationModel" :: NullOrUndefined (ExpirationModelType)
  }
derive instance newtypeImportKeyMaterialRequest :: Newtype ImportKeyMaterialRequest _
derive instance repGenericImportKeyMaterialRequest :: Generic ImportKeyMaterialRequest _
instance showImportKeyMaterialRequest :: Show ImportKeyMaterialRequest where show = genericShow
instance decodeImportKeyMaterialRequest :: Decode ImportKeyMaterialRequest where decode = genericDecode options
instance encodeImportKeyMaterialRequest :: Encode ImportKeyMaterialRequest where encode = genericEncode options

-- | Constructs ImportKeyMaterialRequest from required parameters
newImportKeyMaterialRequest :: CiphertextType -> CiphertextType -> KeyIdType -> ImportKeyMaterialRequest
newImportKeyMaterialRequest _EncryptedKeyMaterial _ImportToken _KeyId = ImportKeyMaterialRequest { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }

-- | Constructs ImportKeyMaterialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImportKeyMaterialRequest' :: CiphertextType -> CiphertextType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: NullOrUndefined (DateType) , "ExpirationModel" :: NullOrUndefined (ExpirationModelType) } -> {"KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: NullOrUndefined (DateType) , "ExpirationModel" :: NullOrUndefined (ExpirationModelType) } ) -> ImportKeyMaterialRequest
newImportKeyMaterialRequest' _EncryptedKeyMaterial _ImportToken _KeyId customize = (ImportKeyMaterialRequest <<< customize) { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }



newtype ImportKeyMaterialResponse = ImportKeyMaterialResponse Types.NoArguments
derive instance newtypeImportKeyMaterialResponse :: Newtype ImportKeyMaterialResponse _
derive instance repGenericImportKeyMaterialResponse :: Generic ImportKeyMaterialResponse _
instance showImportKeyMaterialResponse :: Show ImportKeyMaterialResponse where show = genericShow
instance decodeImportKeyMaterialResponse :: Decode ImportKeyMaterialResponse where decode = genericDecode options
instance encodeImportKeyMaterialResponse :: Encode ImportKeyMaterialResponse where encode = genericEncode options



-- | <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
newtype IncorrectKeyMaterialException = IncorrectKeyMaterialException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeIncorrectKeyMaterialException :: Newtype IncorrectKeyMaterialException _
derive instance repGenericIncorrectKeyMaterialException :: Generic IncorrectKeyMaterialException _
instance showIncorrectKeyMaterialException :: Show IncorrectKeyMaterialException where show = genericShow
instance decodeIncorrectKeyMaterialException :: Decode IncorrectKeyMaterialException where decode = genericDecode options
instance encodeIncorrectKeyMaterialException :: Encode IncorrectKeyMaterialException where encode = genericEncode options

-- | Constructs IncorrectKeyMaterialException from required parameters
newIncorrectKeyMaterialException :: IncorrectKeyMaterialException
newIncorrectKeyMaterialException  = IncorrectKeyMaterialException { "message": (NullOrUndefined Nothing) }

-- | Constructs IncorrectKeyMaterialException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncorrectKeyMaterialException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> IncorrectKeyMaterialException
newIncorrectKeyMaterialException'  customize = (IncorrectKeyMaterialException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified alias name is not valid.</p>
newtype InvalidAliasNameException = InvalidAliasNameException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidAliasNameException :: Newtype InvalidAliasNameException _
derive instance repGenericInvalidAliasNameException :: Generic InvalidAliasNameException _
instance showInvalidAliasNameException :: Show InvalidAliasNameException where show = genericShow
instance decodeInvalidAliasNameException :: Decode InvalidAliasNameException where decode = genericDecode options
instance encodeInvalidAliasNameException :: Encode InvalidAliasNameException where encode = genericEncode options

-- | Constructs InvalidAliasNameException from required parameters
newInvalidAliasNameException :: InvalidAliasNameException
newInvalidAliasNameException  = InvalidAliasNameException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAliasNameException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAliasNameException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidAliasNameException
newInvalidAliasNameException'  customize = (InvalidAliasNameException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because a specified ARN was not valid.</p>
newtype InvalidArnException = InvalidArnException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidArnException :: Newtype InvalidArnException _
derive instance repGenericInvalidArnException :: Generic InvalidArnException _
instance showInvalidArnException :: Show InvalidArnException where show = genericShow
instance decodeInvalidArnException :: Decode InvalidArnException where decode = genericDecode options
instance encodeInvalidArnException :: Encode InvalidArnException where encode = genericEncode options

-- | Constructs InvalidArnException from required parameters
newInvalidArnException :: InvalidArnException
newInvalidArnException  = InvalidArnException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArnException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArnException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidArnException
newInvalidArnException'  customize = (InvalidArnException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.</p>
newtype InvalidCiphertextException = InvalidCiphertextException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidCiphertextException :: Newtype InvalidCiphertextException _
derive instance repGenericInvalidCiphertextException :: Generic InvalidCiphertextException _
instance showInvalidCiphertextException :: Show InvalidCiphertextException where show = genericShow
instance decodeInvalidCiphertextException :: Decode InvalidCiphertextException where decode = genericDecode options
instance encodeInvalidCiphertextException :: Encode InvalidCiphertextException where encode = genericEncode options

-- | Constructs InvalidCiphertextException from required parameters
newInvalidCiphertextException :: InvalidCiphertextException
newInvalidCiphertextException  = InvalidCiphertextException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidCiphertextException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCiphertextException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidCiphertextException
newInvalidCiphertextException'  customize = (InvalidCiphertextException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
newtype InvalidGrantIdException = InvalidGrantIdException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidGrantIdException :: Newtype InvalidGrantIdException _
derive instance repGenericInvalidGrantIdException :: Generic InvalidGrantIdException _
instance showInvalidGrantIdException :: Show InvalidGrantIdException where show = genericShow
instance decodeInvalidGrantIdException :: Decode InvalidGrantIdException where decode = genericDecode options
instance encodeInvalidGrantIdException :: Encode InvalidGrantIdException where encode = genericEncode options

-- | Constructs InvalidGrantIdException from required parameters
newInvalidGrantIdException :: InvalidGrantIdException
newInvalidGrantIdException  = InvalidGrantIdException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidGrantIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantIdException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidGrantIdException
newInvalidGrantIdException'  customize = (InvalidGrantIdException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified grant token is not valid.</p>
newtype InvalidGrantTokenException = InvalidGrantTokenException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidGrantTokenException :: Newtype InvalidGrantTokenException _
derive instance repGenericInvalidGrantTokenException :: Generic InvalidGrantTokenException _
instance showInvalidGrantTokenException :: Show InvalidGrantTokenException where show = genericShow
instance decodeInvalidGrantTokenException :: Decode InvalidGrantTokenException where decode = genericDecode options
instance encodeInvalidGrantTokenException :: Encode InvalidGrantTokenException where encode = genericEncode options

-- | Constructs InvalidGrantTokenException from required parameters
newInvalidGrantTokenException :: InvalidGrantTokenException
newInvalidGrantTokenException  = InvalidGrantTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidGrantTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantTokenException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidGrantTokenException
newInvalidGrantTokenException'  customize = (InvalidGrantTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
newtype InvalidImportTokenException = InvalidImportTokenException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidImportTokenException :: Newtype InvalidImportTokenException _
derive instance repGenericInvalidImportTokenException :: Generic InvalidImportTokenException _
instance showInvalidImportTokenException :: Show InvalidImportTokenException where show = genericShow
instance decodeInvalidImportTokenException :: Decode InvalidImportTokenException where decode = genericDecode options
instance encodeInvalidImportTokenException :: Encode InvalidImportTokenException where encode = genericEncode options

-- | Constructs InvalidImportTokenException from required parameters
newInvalidImportTokenException :: InvalidImportTokenException
newInvalidImportTokenException  = InvalidImportTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidImportTokenException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidImportTokenException
newInvalidImportTokenException'  customize = (InvalidImportTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
newtype InvalidKeyUsageException = InvalidKeyUsageException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidKeyUsageException :: Newtype InvalidKeyUsageException _
derive instance repGenericInvalidKeyUsageException :: Generic InvalidKeyUsageException _
instance showInvalidKeyUsageException :: Show InvalidKeyUsageException where show = genericShow
instance decodeInvalidKeyUsageException :: Decode InvalidKeyUsageException where decode = genericDecode options
instance encodeInvalidKeyUsageException :: Encode InvalidKeyUsageException where encode = genericEncode options

-- | Constructs InvalidKeyUsageException from required parameters
newInvalidKeyUsageException :: InvalidKeyUsageException
newInvalidKeyUsageException  = InvalidKeyUsageException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidKeyUsageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidKeyUsageException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidKeyUsageException
newInvalidKeyUsageException'  customize = (InvalidKeyUsageException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
newtype InvalidMarkerException = InvalidMarkerException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidMarkerException :: Newtype InvalidMarkerException _
derive instance repGenericInvalidMarkerException :: Generic InvalidMarkerException _
instance showInvalidMarkerException :: Show InvalidMarkerException where show = genericShow
instance decodeInvalidMarkerException :: Decode InvalidMarkerException where decode = genericDecode options
instance encodeInvalidMarkerException :: Encode InvalidMarkerException where encode = genericEncode options

-- | Constructs InvalidMarkerException from required parameters
newInvalidMarkerException :: InvalidMarkerException
newInvalidMarkerException  = InvalidMarkerException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidMarkerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidMarkerException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> InvalidMarkerException
newInvalidMarkerException'  customize = (InvalidMarkerException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
newtype KMSInternalException = KMSInternalException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKMSInternalException :: Newtype KMSInternalException _
derive instance repGenericKMSInternalException :: Generic KMSInternalException _
instance showKMSInternalException :: Show KMSInternalException where show = genericShow
instance decodeKMSInternalException :: Decode KMSInternalException where decode = genericDecode options
instance encodeKMSInternalException :: Encode KMSInternalException where encode = genericEncode options

-- | Constructs KMSInternalException from required parameters
newKMSInternalException :: KMSInternalException
newKMSInternalException  = KMSInternalException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSInternalException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInternalException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> KMSInternalException
newKMSInternalException'  customize = (KMSInternalException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype KMSInvalidStateException = KMSInvalidStateException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKMSInvalidStateException :: Newtype KMSInvalidStateException _
derive instance repGenericKMSInvalidStateException :: Generic KMSInvalidStateException _
instance showKMSInvalidStateException :: Show KMSInvalidStateException where show = genericShow
instance decodeKMSInvalidStateException :: Decode KMSInvalidStateException where decode = genericDecode options
instance encodeKMSInvalidStateException :: Encode KMSInvalidStateException where encode = genericEncode options

-- | Constructs KMSInvalidStateException from required parameters
newKMSInvalidStateException :: KMSInvalidStateException
newKMSInvalidStateException  = KMSInvalidStateException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSInvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInvalidStateException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> KMSInvalidStateException
newKMSInvalidStateException'  customize = (KMSInvalidStateException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype KeyIdType = KeyIdType String
derive instance newtypeKeyIdType :: Newtype KeyIdType _
derive instance repGenericKeyIdType :: Generic KeyIdType _
instance showKeyIdType :: Show KeyIdType where show = genericShow
instance decodeKeyIdType :: Decode KeyIdType where decode = genericDecode options
instance encodeKeyIdType :: Encode KeyIdType where encode = genericEncode options



newtype KeyList = KeyList (Array KeyListEntry)
derive instance newtypeKeyList :: Newtype KeyList _
derive instance repGenericKeyList :: Generic KeyList _
instance showKeyList :: Show KeyList where show = genericShow
instance decodeKeyList :: Decode KeyList where decode = genericDecode options
instance encodeKeyList :: Encode KeyList where encode = genericEncode options



-- | <p>Contains information about each entry in the key list.</p>
newtype KeyListEntry = KeyListEntry 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  , "KeyArn" :: NullOrUndefined (ArnType)
  }
derive instance newtypeKeyListEntry :: Newtype KeyListEntry _
derive instance repGenericKeyListEntry :: Generic KeyListEntry _
instance showKeyListEntry :: Show KeyListEntry where show = genericShow
instance decodeKeyListEntry :: Decode KeyListEntry where decode = genericDecode options
instance encodeKeyListEntry :: Encode KeyListEntry where encode = genericEncode options

-- | Constructs KeyListEntry from required parameters
newKeyListEntry :: KeyListEntry
newKeyListEntry  = KeyListEntry { "KeyArn": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs KeyListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyListEntry' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) , "KeyArn" :: NullOrUndefined (ArnType) } -> {"KeyId" :: NullOrUndefined (KeyIdType) , "KeyArn" :: NullOrUndefined (ArnType) } ) -> KeyListEntry
newKeyListEntry'  customize = (KeyListEntry <<< customize) { "KeyArn": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype KeyManagerType = KeyManagerType String
derive instance newtypeKeyManagerType :: Newtype KeyManagerType _
derive instance repGenericKeyManagerType :: Generic KeyManagerType _
instance showKeyManagerType :: Show KeyManagerType where show = genericShow
instance decodeKeyManagerType :: Decode KeyManagerType where decode = genericDecode options
instance encodeKeyManagerType :: Encode KeyManagerType where encode = genericEncode options



-- | <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
newtype KeyMetadata = KeyMetadata 
  { "AWSAccountId" :: NullOrUndefined (AWSAccountIdType)
  , "KeyId" :: (KeyIdType)
  , "Arn" :: NullOrUndefined (ArnType)
  , "CreationDate" :: NullOrUndefined (DateType)
  , "Enabled" :: NullOrUndefined (BooleanType)
  , "Description" :: NullOrUndefined (DescriptionType)
  , "KeyUsage" :: NullOrUndefined (KeyUsageType)
  , "KeyState" :: NullOrUndefined (KeyState)
  , "DeletionDate" :: NullOrUndefined (DateType)
  , "ValidTo" :: NullOrUndefined (DateType)
  , "Origin" :: NullOrUndefined (OriginType)
  , "ExpirationModel" :: NullOrUndefined (ExpirationModelType)
  , "KeyManager" :: NullOrUndefined (KeyManagerType)
  }
derive instance newtypeKeyMetadata :: Newtype KeyMetadata _
derive instance repGenericKeyMetadata :: Generic KeyMetadata _
instance showKeyMetadata :: Show KeyMetadata where show = genericShow
instance decodeKeyMetadata :: Decode KeyMetadata where decode = genericDecode options
instance encodeKeyMetadata :: Encode KeyMetadata where encode = genericEncode options

-- | Constructs KeyMetadata from required parameters
newKeyMetadata :: KeyIdType -> KeyMetadata
newKeyMetadata _KeyId = KeyMetadata { "KeyId": _KeyId, "AWSAccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DeletionDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Enabled": (NullOrUndefined Nothing), "ExpirationModel": (NullOrUndefined Nothing), "KeyManager": (NullOrUndefined Nothing), "KeyState": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }

-- | Constructs KeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyMetadata' :: KeyIdType -> ( { "AWSAccountId" :: NullOrUndefined (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: NullOrUndefined (ArnType) , "CreationDate" :: NullOrUndefined (DateType) , "Enabled" :: NullOrUndefined (BooleanType) , "Description" :: NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined (KeyUsageType) , "KeyState" :: NullOrUndefined (KeyState) , "DeletionDate" :: NullOrUndefined (DateType) , "ValidTo" :: NullOrUndefined (DateType) , "Origin" :: NullOrUndefined (OriginType) , "ExpirationModel" :: NullOrUndefined (ExpirationModelType) , "KeyManager" :: NullOrUndefined (KeyManagerType) } -> {"AWSAccountId" :: NullOrUndefined (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: NullOrUndefined (ArnType) , "CreationDate" :: NullOrUndefined (DateType) , "Enabled" :: NullOrUndefined (BooleanType) , "Description" :: NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined (KeyUsageType) , "KeyState" :: NullOrUndefined (KeyState) , "DeletionDate" :: NullOrUndefined (DateType) , "ValidTo" :: NullOrUndefined (DateType) , "Origin" :: NullOrUndefined (OriginType) , "ExpirationModel" :: NullOrUndefined (ExpirationModelType) , "KeyManager" :: NullOrUndefined (KeyManagerType) } ) -> KeyMetadata
newKeyMetadata' _KeyId customize = (KeyMetadata <<< customize) { "KeyId": _KeyId, "AWSAccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DeletionDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Enabled": (NullOrUndefined Nothing), "ExpirationModel": (NullOrUndefined Nothing), "KeyManager": (NullOrUndefined Nothing), "KeyState": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }



newtype KeyState = KeyState String
derive instance newtypeKeyState :: Newtype KeyState _
derive instance repGenericKeyState :: Generic KeyState _
instance showKeyState :: Show KeyState where show = genericShow
instance decodeKeyState :: Decode KeyState where decode = genericDecode options
instance encodeKeyState :: Encode KeyState where encode = genericEncode options



-- | <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
newtype KeyUnavailableException = KeyUnavailableException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKeyUnavailableException :: Newtype KeyUnavailableException _
derive instance repGenericKeyUnavailableException :: Generic KeyUnavailableException _
instance showKeyUnavailableException :: Show KeyUnavailableException where show = genericShow
instance decodeKeyUnavailableException :: Decode KeyUnavailableException where decode = genericDecode options
instance encodeKeyUnavailableException :: Encode KeyUnavailableException where encode = genericEncode options

-- | Constructs KeyUnavailableException from required parameters
newKeyUnavailableException :: KeyUnavailableException
newKeyUnavailableException  = KeyUnavailableException { "message": (NullOrUndefined Nothing) }

-- | Constructs KeyUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyUnavailableException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> KeyUnavailableException
newKeyUnavailableException'  customize = (KeyUnavailableException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype KeyUsageType = KeyUsageType String
derive instance newtypeKeyUsageType :: Newtype KeyUsageType _
derive instance repGenericKeyUsageType :: Generic KeyUsageType _
instance showKeyUsageType :: Show KeyUsageType where show = genericShow
instance decodeKeyUsageType :: Decode KeyUsageType where decode = genericDecode options
instance encodeKeyUsageType :: Encode KeyUsageType where encode = genericEncode options



-- | <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LimitType = LimitType Int
derive instance newtypeLimitType :: Newtype LimitType _
derive instance repGenericLimitType :: Generic LimitType _
instance showLimitType :: Show LimitType where show = genericShow
instance decodeLimitType :: Decode LimitType where decode = genericDecode options
instance encodeLimitType :: Encode LimitType where encode = genericEncode options



newtype ListAliasesRequest = ListAliasesRequest 
  { "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  }
derive instance newtypeListAliasesRequest :: Newtype ListAliasesRequest _
derive instance repGenericListAliasesRequest :: Generic ListAliasesRequest _
instance showListAliasesRequest :: Show ListAliasesRequest where show = genericShow
instance decodeListAliasesRequest :: Decode ListAliasesRequest where decode = genericDecode options
instance encodeListAliasesRequest :: Encode ListAliasesRequest where encode = genericEncode options

-- | Constructs ListAliasesRequest from required parameters
newListAliasesRequest :: ListAliasesRequest
newListAliasesRequest  = ListAliasesRequest { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesRequest' :: ( { "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } -> {"Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } ) -> ListAliasesRequest
newListAliasesRequest'  customize = (ListAliasesRequest <<< customize) { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAliasesResponse = ListAliasesResponse 
  { "Aliases" :: NullOrUndefined (AliasList)
  , "NextMarker" :: NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeListAliasesResponse :: Newtype ListAliasesResponse _
derive instance repGenericListAliasesResponse :: Generic ListAliasesResponse _
instance showListAliasesResponse :: Show ListAliasesResponse where show = genericShow
instance decodeListAliasesResponse :: Decode ListAliasesResponse where decode = genericDecode options
instance encodeListAliasesResponse :: Encode ListAliasesResponse where encode = genericEncode options

-- | Constructs ListAliasesResponse from required parameters
newListAliasesResponse :: ListAliasesResponse
newListAliasesResponse  = ListAliasesResponse { "Aliases": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesResponse' :: ( { "Aliases" :: NullOrUndefined (AliasList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } -> {"Aliases" :: NullOrUndefined (AliasList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } ) -> ListAliasesResponse
newListAliasesResponse'  customize = (ListAliasesResponse <<< customize) { "Aliases": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListGrantsRequest = ListGrantsRequest 
  { "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  , "KeyId" :: (KeyIdType)
  }
derive instance newtypeListGrantsRequest :: Newtype ListGrantsRequest _
derive instance repGenericListGrantsRequest :: Generic ListGrantsRequest _
instance showListGrantsRequest :: Show ListGrantsRequest where show = genericShow
instance decodeListGrantsRequest :: Decode ListGrantsRequest where decode = genericDecode options
instance encodeListGrantsRequest :: Encode ListGrantsRequest where encode = genericEncode options

-- | Constructs ListGrantsRequest from required parameters
newListGrantsRequest :: KeyIdType -> ListGrantsRequest
newListGrantsRequest _KeyId = ListGrantsRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsRequest' :: KeyIdType -> ( { "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) , "KeyId" :: (KeyIdType) } -> {"Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) , "KeyId" :: (KeyIdType) } ) -> ListGrantsRequest
newListGrantsRequest' _KeyId customize = (ListGrantsRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListGrantsResponse = ListGrantsResponse 
  { "Grants" :: NullOrUndefined (GrantList)
  , "NextMarker" :: NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeListGrantsResponse :: Newtype ListGrantsResponse _
derive instance repGenericListGrantsResponse :: Generic ListGrantsResponse _
instance showListGrantsResponse :: Show ListGrantsResponse where show = genericShow
instance decodeListGrantsResponse :: Decode ListGrantsResponse where decode = genericDecode options
instance encodeListGrantsResponse :: Encode ListGrantsResponse where encode = genericEncode options

-- | Constructs ListGrantsResponse from required parameters
newListGrantsResponse :: ListGrantsResponse
newListGrantsResponse  = ListGrantsResponse { "Grants": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListGrantsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsResponse' :: ( { "Grants" :: NullOrUndefined (GrantList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } -> {"Grants" :: NullOrUndefined (GrantList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } ) -> ListGrantsResponse
newListGrantsResponse'  customize = (ListGrantsResponse <<< customize) { "Grants": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListKeyPoliciesRequest = ListKeyPoliciesRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  }
derive instance newtypeListKeyPoliciesRequest :: Newtype ListKeyPoliciesRequest _
derive instance repGenericListKeyPoliciesRequest :: Generic ListKeyPoliciesRequest _
instance showListKeyPoliciesRequest :: Show ListKeyPoliciesRequest where show = genericShow
instance decodeListKeyPoliciesRequest :: Decode ListKeyPoliciesRequest where decode = genericDecode options
instance encodeListKeyPoliciesRequest :: Encode ListKeyPoliciesRequest where encode = genericEncode options

-- | Constructs ListKeyPoliciesRequest from required parameters
newListKeyPoliciesRequest :: KeyIdType -> ListKeyPoliciesRequest
newListKeyPoliciesRequest _KeyId = ListKeyPoliciesRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListKeyPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } ) -> ListKeyPoliciesRequest
newListKeyPoliciesRequest' _KeyId customize = (ListKeyPoliciesRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListKeyPoliciesResponse = ListKeyPoliciesResponse 
  { "PolicyNames" :: NullOrUndefined (PolicyNameList)
  , "NextMarker" :: NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeListKeyPoliciesResponse :: Newtype ListKeyPoliciesResponse _
derive instance repGenericListKeyPoliciesResponse :: Generic ListKeyPoliciesResponse _
instance showListKeyPoliciesResponse :: Show ListKeyPoliciesResponse where show = genericShow
instance decodeListKeyPoliciesResponse :: Decode ListKeyPoliciesResponse where decode = genericDecode options
instance encodeListKeyPoliciesResponse :: Encode ListKeyPoliciesResponse where encode = genericEncode options

-- | Constructs ListKeyPoliciesResponse from required parameters
newListKeyPoliciesResponse :: ListKeyPoliciesResponse
newListKeyPoliciesResponse  = ListKeyPoliciesResponse { "NextMarker": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListKeyPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesResponse' :: ( { "PolicyNames" :: NullOrUndefined (PolicyNameList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } -> {"PolicyNames" :: NullOrUndefined (PolicyNameList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } ) -> ListKeyPoliciesResponse
newListKeyPoliciesResponse'  customize = (ListKeyPoliciesResponse <<< customize) { "NextMarker": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListKeysRequest = ListKeysRequest 
  { "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  }
derive instance newtypeListKeysRequest :: Newtype ListKeysRequest _
derive instance repGenericListKeysRequest :: Generic ListKeysRequest _
instance showListKeysRequest :: Show ListKeysRequest where show = genericShow
instance decodeListKeysRequest :: Decode ListKeysRequest where decode = genericDecode options
instance encodeListKeysRequest :: Encode ListKeysRequest where encode = genericEncode options

-- | Constructs ListKeysRequest from required parameters
newListKeysRequest :: ListKeysRequest
newListKeysRequest  = ListKeysRequest { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysRequest' :: ( { "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } -> {"Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } ) -> ListKeysRequest
newListKeysRequest'  customize = (ListKeysRequest <<< customize) { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListKeysResponse = ListKeysResponse 
  { "Keys" :: NullOrUndefined (KeyList)
  , "NextMarker" :: NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeListKeysResponse :: Newtype ListKeysResponse _
derive instance repGenericListKeysResponse :: Generic ListKeysResponse _
instance showListKeysResponse :: Show ListKeysResponse where show = genericShow
instance decodeListKeysResponse :: Decode ListKeysResponse where decode = genericDecode options
instance encodeListKeysResponse :: Encode ListKeysResponse where encode = genericEncode options

-- | Constructs ListKeysResponse from required parameters
newListKeysResponse :: ListKeysResponse
newListKeysResponse  = ListKeysResponse { "Keys": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysResponse' :: ( { "Keys" :: NullOrUndefined (KeyList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } -> {"Keys" :: NullOrUndefined (KeyList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } ) -> ListKeysResponse
newListKeysResponse'  customize = (ListKeysResponse <<< customize) { "Keys": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListResourceTagsRequest = ListResourceTagsRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  }
derive instance newtypeListResourceTagsRequest :: Newtype ListResourceTagsRequest _
derive instance repGenericListResourceTagsRequest :: Generic ListResourceTagsRequest _
instance showListResourceTagsRequest :: Show ListResourceTagsRequest where show = genericShow
instance decodeListResourceTagsRequest :: Decode ListResourceTagsRequest where decode = genericDecode options
instance encodeListResourceTagsRequest :: Encode ListResourceTagsRequest where encode = genericEncode options

-- | Constructs ListResourceTagsRequest from required parameters
newListResourceTagsRequest :: KeyIdType -> ListResourceTagsRequest
newListResourceTagsRequest _KeyId = ListResourceTagsRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListResourceTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) } ) -> ListResourceTagsRequest
newListResourceTagsRequest' _KeyId customize = (ListResourceTagsRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListResourceTagsResponse = ListResourceTagsResponse 
  { "Tags" :: NullOrUndefined (TagList)
  , "NextMarker" :: NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined (BooleanType)
  }
derive instance newtypeListResourceTagsResponse :: Newtype ListResourceTagsResponse _
derive instance repGenericListResourceTagsResponse :: Generic ListResourceTagsResponse _
instance showListResourceTagsResponse :: Show ListResourceTagsResponse where show = genericShow
instance decodeListResourceTagsResponse :: Decode ListResourceTagsResponse where decode = genericDecode options
instance encodeListResourceTagsResponse :: Encode ListResourceTagsResponse where encode = genericEncode options

-- | Constructs ListResourceTagsResponse from required parameters
newListResourceTagsResponse :: ListResourceTagsResponse
newListResourceTagsResponse  = ListResourceTagsResponse { "NextMarker": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListResourceTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsResponse' :: ( { "Tags" :: NullOrUndefined (TagList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } -> {"Tags" :: NullOrUndefined (TagList) , "NextMarker" :: NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined (BooleanType) } ) -> ListResourceTagsResponse
newListResourceTagsResponse'  customize = (ListResourceTagsResponse <<< customize) { "NextMarker": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListRetirableGrantsRequest = ListRetirableGrantsRequest 
  { "Limit" :: NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined (MarkerType)
  , "RetiringPrincipal" :: (PrincipalIdType)
  }
derive instance newtypeListRetirableGrantsRequest :: Newtype ListRetirableGrantsRequest _
derive instance repGenericListRetirableGrantsRequest :: Generic ListRetirableGrantsRequest _
instance showListRetirableGrantsRequest :: Show ListRetirableGrantsRequest where show = genericShow
instance decodeListRetirableGrantsRequest :: Decode ListRetirableGrantsRequest where decode = genericDecode options
instance encodeListRetirableGrantsRequest :: Encode ListRetirableGrantsRequest where encode = genericEncode options

-- | Constructs ListRetirableGrantsRequest from required parameters
newListRetirableGrantsRequest :: PrincipalIdType -> ListRetirableGrantsRequest
newListRetirableGrantsRequest _RetiringPrincipal = ListRetirableGrantsRequest { "RetiringPrincipal": _RetiringPrincipal, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListRetirableGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRetirableGrantsRequest' :: PrincipalIdType -> ( { "Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } -> {"Limit" :: NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } ) -> ListRetirableGrantsRequest
newListRetirableGrantsRequest' _RetiringPrincipal customize = (ListRetirableGrantsRequest <<< customize) { "RetiringPrincipal": _RetiringPrincipal, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where decode = genericDecode options
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where encode = genericEncode options

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": (NullOrUndefined Nothing) }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype MarkerType = MarkerType String
derive instance newtypeMarkerType :: Newtype MarkerType _
derive instance repGenericMarkerType :: Generic MarkerType _
instance showMarkerType :: Show MarkerType where show = genericShow
instance decodeMarkerType :: Decode MarkerType where decode = genericDecode options
instance encodeMarkerType :: Encode MarkerType where encode = genericEncode options



-- | <p>The request was rejected because the specified entity or resource could not be found.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype NumberOfBytesType = NumberOfBytesType Int
derive instance newtypeNumberOfBytesType :: Newtype NumberOfBytesType _
derive instance repGenericNumberOfBytesType :: Generic NumberOfBytesType _
instance showNumberOfBytesType :: Show NumberOfBytesType where show = genericShow
instance decodeNumberOfBytesType :: Decode NumberOfBytesType where decode = genericDecode options
instance encodeNumberOfBytesType :: Encode NumberOfBytesType where encode = genericEncode options



newtype OriginType = OriginType String
derive instance newtypeOriginType :: Newtype OriginType _
derive instance repGenericOriginType :: Generic OriginType _
instance showOriginType :: Show OriginType where show = genericShow
instance decodeOriginType :: Decode OriginType where decode = genericDecode options
instance encodeOriginType :: Encode OriginType where encode = genericEncode options



newtype PendingWindowInDaysType = PendingWindowInDaysType Int
derive instance newtypePendingWindowInDaysType :: Newtype PendingWindowInDaysType _
derive instance repGenericPendingWindowInDaysType :: Generic PendingWindowInDaysType _
instance showPendingWindowInDaysType :: Show PendingWindowInDaysType where show = genericShow
instance decodePendingWindowInDaysType :: Decode PendingWindowInDaysType where decode = genericDecode options
instance encodePendingWindowInDaysType :: Encode PendingWindowInDaysType where encode = genericEncode options



newtype PlaintextType = PlaintextType String
derive instance newtypePlaintextType :: Newtype PlaintextType _
derive instance repGenericPlaintextType :: Generic PlaintextType _
instance showPlaintextType :: Show PlaintextType where show = genericShow
instance decodePlaintextType :: Decode PlaintextType where decode = genericDecode options
instance encodePlaintextType :: Encode PlaintextType where encode = genericEncode options



newtype PolicyNameList = PolicyNameList (Array PolicyNameType)
derive instance newtypePolicyNameList :: Newtype PolicyNameList _
derive instance repGenericPolicyNameList :: Generic PolicyNameList _
instance showPolicyNameList :: Show PolicyNameList where show = genericShow
instance decodePolicyNameList :: Decode PolicyNameList where decode = genericDecode options
instance encodePolicyNameList :: Encode PolicyNameList where encode = genericEncode options



newtype PolicyNameType = PolicyNameType String
derive instance newtypePolicyNameType :: Newtype PolicyNameType _
derive instance repGenericPolicyNameType :: Generic PolicyNameType _
instance showPolicyNameType :: Show PolicyNameType where show = genericShow
instance decodePolicyNameType :: Decode PolicyNameType where decode = genericDecode options
instance encodePolicyNameType :: Encode PolicyNameType where encode = genericEncode options



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where show = genericShow
instance decodePolicyType :: Decode PolicyType where decode = genericDecode options
instance encodePolicyType :: Encode PolicyType where encode = genericEncode options



newtype PrincipalIdType = PrincipalIdType String
derive instance newtypePrincipalIdType :: Newtype PrincipalIdType _
derive instance repGenericPrincipalIdType :: Generic PrincipalIdType _
instance showPrincipalIdType :: Show PrincipalIdType where show = genericShow
instance decodePrincipalIdType :: Decode PrincipalIdType where decode = genericDecode options
instance encodePrincipalIdType :: Encode PrincipalIdType where encode = genericEncode options



newtype PutKeyPolicyRequest = PutKeyPolicyRequest 
  { "KeyId" :: (KeyIdType)
  , "PolicyName" :: (PolicyNameType)
  , "Policy" :: (PolicyType)
  , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType)
  }
derive instance newtypePutKeyPolicyRequest :: Newtype PutKeyPolicyRequest _
derive instance repGenericPutKeyPolicyRequest :: Generic PutKeyPolicyRequest _
instance showPutKeyPolicyRequest :: Show PutKeyPolicyRequest where show = genericShow
instance decodePutKeyPolicyRequest :: Decode PutKeyPolicyRequest where decode = genericDecode options
instance encodePutKeyPolicyRequest :: Encode PutKeyPolicyRequest where encode = genericEncode options

-- | Constructs PutKeyPolicyRequest from required parameters
newPutKeyPolicyRequest :: KeyIdType -> PolicyType -> PolicyNameType -> PutKeyPolicyRequest
newPutKeyPolicyRequest _KeyId _Policy _PolicyName = PutKeyPolicyRequest { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing) }

-- | Constructs PutKeyPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutKeyPolicyRequest' :: KeyIdType -> PolicyType -> PolicyNameType -> ( { "KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) } -> {"KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined (BooleanType) } ) -> PutKeyPolicyRequest
newPutKeyPolicyRequest' _KeyId _Policy _PolicyName customize = (PutKeyPolicyRequest <<< customize) { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing) }



newtype ReEncryptRequest = ReEncryptRequest 
  { "CiphertextBlob" :: (CiphertextType)
  , "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "DestinationKeyId" :: (KeyIdType)
  , "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined (GrantTokenList)
  }
derive instance newtypeReEncryptRequest :: Newtype ReEncryptRequest _
derive instance repGenericReEncryptRequest :: Generic ReEncryptRequest _
instance showReEncryptRequest :: Show ReEncryptRequest where show = genericShow
instance decodeReEncryptRequest :: Decode ReEncryptRequest where decode = genericDecode options
instance encodeReEncryptRequest :: Encode ReEncryptRequest where encode = genericEncode options

-- | Constructs ReEncryptRequest from required parameters
newReEncryptRequest :: CiphertextType -> KeyIdType -> ReEncryptRequest
newReEncryptRequest _CiphertextBlob _DestinationKeyId = ReEncryptRequest { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "SourceEncryptionContext": (NullOrUndefined Nothing) }

-- | Constructs ReEncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptRequest' :: CiphertextType -> KeyIdType -> ( { "CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: NullOrUndefined (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined (GrantTokenList) } ) -> ReEncryptRequest
newReEncryptRequest' _CiphertextBlob _DestinationKeyId customize = (ReEncryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "SourceEncryptionContext": (NullOrUndefined Nothing) }



newtype ReEncryptResponse = ReEncryptResponse 
  { "CiphertextBlob" :: NullOrUndefined (CiphertextType)
  , "SourceKeyId" :: NullOrUndefined (KeyIdType)
  , "KeyId" :: NullOrUndefined (KeyIdType)
  }
derive instance newtypeReEncryptResponse :: Newtype ReEncryptResponse _
derive instance repGenericReEncryptResponse :: Generic ReEncryptResponse _
instance showReEncryptResponse :: Show ReEncryptResponse where show = genericShow
instance decodeReEncryptResponse :: Decode ReEncryptResponse where decode = genericDecode options
instance encodeReEncryptResponse :: Encode ReEncryptResponse where encode = genericEncode options

-- | Constructs ReEncryptResponse from required parameters
newReEncryptResponse :: ReEncryptResponse
newReEncryptResponse  = ReEncryptResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "SourceKeyId": (NullOrUndefined Nothing) }

-- | Constructs ReEncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptResponse' :: ( { "CiphertextBlob" :: NullOrUndefined (CiphertextType) , "SourceKeyId" :: NullOrUndefined (KeyIdType) , "KeyId" :: NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined (CiphertextType) , "SourceKeyId" :: NullOrUndefined (KeyIdType) , "KeyId" :: NullOrUndefined (KeyIdType) } ) -> ReEncryptResponse
newReEncryptResponse'  customize = (ReEncryptResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "SourceKeyId": (NullOrUndefined Nothing) }



newtype RetireGrantRequest = RetireGrantRequest 
  { "GrantToken" :: NullOrUndefined (GrantTokenType)
  , "KeyId" :: NullOrUndefined (KeyIdType)
  , "GrantId" :: NullOrUndefined (GrantIdType)
  }
derive instance newtypeRetireGrantRequest :: Newtype RetireGrantRequest _
derive instance repGenericRetireGrantRequest :: Generic RetireGrantRequest _
instance showRetireGrantRequest :: Show RetireGrantRequest where show = genericShow
instance decodeRetireGrantRequest :: Decode RetireGrantRequest where decode = genericDecode options
instance encodeRetireGrantRequest :: Encode RetireGrantRequest where encode = genericEncode options

-- | Constructs RetireGrantRequest from required parameters
newRetireGrantRequest :: RetireGrantRequest
newRetireGrantRequest  = RetireGrantRequest { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs RetireGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetireGrantRequest' :: ( { "GrantToken" :: NullOrUndefined (GrantTokenType) , "KeyId" :: NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined (GrantIdType) } -> {"GrantToken" :: NullOrUndefined (GrantTokenType) , "KeyId" :: NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined (GrantIdType) } ) -> RetireGrantRequest
newRetireGrantRequest'  customize = (RetireGrantRequest <<< customize) { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype RevokeGrantRequest = RevokeGrantRequest 
  { "KeyId" :: (KeyIdType)
  , "GrantId" :: (GrantIdType)
  }
derive instance newtypeRevokeGrantRequest :: Newtype RevokeGrantRequest _
derive instance repGenericRevokeGrantRequest :: Generic RevokeGrantRequest _
instance showRevokeGrantRequest :: Show RevokeGrantRequest where show = genericShow
instance decodeRevokeGrantRequest :: Decode RevokeGrantRequest where decode = genericDecode options
instance encodeRevokeGrantRequest :: Encode RevokeGrantRequest where encode = genericEncode options

-- | Constructs RevokeGrantRequest from required parameters
newRevokeGrantRequest :: GrantIdType -> KeyIdType -> RevokeGrantRequest
newRevokeGrantRequest _GrantId _KeyId = RevokeGrantRequest { "GrantId": _GrantId, "KeyId": _KeyId }

-- | Constructs RevokeGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRevokeGrantRequest' :: GrantIdType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "GrantId" :: (GrantIdType) } -> {"KeyId" :: (KeyIdType) , "GrantId" :: (GrantIdType) } ) -> RevokeGrantRequest
newRevokeGrantRequest' _GrantId _KeyId customize = (RevokeGrantRequest <<< customize) { "GrantId": _GrantId, "KeyId": _KeyId }



newtype ScheduleKeyDeletionRequest = ScheduleKeyDeletionRequest 
  { "KeyId" :: (KeyIdType)
  , "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType)
  }
derive instance newtypeScheduleKeyDeletionRequest :: Newtype ScheduleKeyDeletionRequest _
derive instance repGenericScheduleKeyDeletionRequest :: Generic ScheduleKeyDeletionRequest _
instance showScheduleKeyDeletionRequest :: Show ScheduleKeyDeletionRequest where show = genericShow
instance decodeScheduleKeyDeletionRequest :: Decode ScheduleKeyDeletionRequest where decode = genericDecode options
instance encodeScheduleKeyDeletionRequest :: Encode ScheduleKeyDeletionRequest where encode = genericEncode options

-- | Constructs ScheduleKeyDeletionRequest from required parameters
newScheduleKeyDeletionRequest :: KeyIdType -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest _KeyId = ScheduleKeyDeletionRequest { "KeyId": _KeyId, "PendingWindowInDays": (NullOrUndefined Nothing) }

-- | Constructs ScheduleKeyDeletionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType) } -> {"KeyId" :: (KeyIdType) , "PendingWindowInDays" :: NullOrUndefined (PendingWindowInDaysType) } ) -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest' _KeyId customize = (ScheduleKeyDeletionRequest <<< customize) { "KeyId": _KeyId, "PendingWindowInDays": (NullOrUndefined Nothing) }



newtype ScheduleKeyDeletionResponse = ScheduleKeyDeletionResponse 
  { "KeyId" :: NullOrUndefined (KeyIdType)
  , "DeletionDate" :: NullOrUndefined (DateType)
  }
derive instance newtypeScheduleKeyDeletionResponse :: Newtype ScheduleKeyDeletionResponse _
derive instance repGenericScheduleKeyDeletionResponse :: Generic ScheduleKeyDeletionResponse _
instance showScheduleKeyDeletionResponse :: Show ScheduleKeyDeletionResponse where show = genericShow
instance decodeScheduleKeyDeletionResponse :: Decode ScheduleKeyDeletionResponse where decode = genericDecode options
instance encodeScheduleKeyDeletionResponse :: Encode ScheduleKeyDeletionResponse where encode = genericEncode options

-- | Constructs ScheduleKeyDeletionResponse from required parameters
newScheduleKeyDeletionResponse :: ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse  = ScheduleKeyDeletionResponse { "DeletionDate": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs ScheduleKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionResponse' :: ( { "KeyId" :: NullOrUndefined (KeyIdType) , "DeletionDate" :: NullOrUndefined (DateType) } -> {"KeyId" :: NullOrUndefined (KeyIdType) , "DeletionDate" :: NullOrUndefined (DateType) } ) -> ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse'  customize = (ScheduleKeyDeletionResponse <<< customize) { "DeletionDate": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



-- | <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
newtype Tag = Tag 
  { "TagKey" :: (TagKeyType)
  , "TagValue" :: (TagValueType)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKeyType -> TagValueType -> Tag
newTag _TagKey _TagValue = Tag { "TagKey": _TagKey, "TagValue": _TagValue }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKeyType -> TagValueType -> ( { "TagKey" :: (TagKeyType) , "TagValue" :: (TagValueType) } -> {"TagKey" :: (TagKeyType) , "TagValue" :: (TagValueType) } ) -> Tag
newTag' _TagKey _TagValue customize = (Tag <<< customize) { "TagKey": _TagKey, "TagValue": _TagValue }



-- | <p>The request was rejected because one or more tags are not valid.</p>
newtype TagException = TagException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeTagException :: Newtype TagException _
derive instance repGenericTagException :: Generic TagException _
instance showTagException :: Show TagException where show = genericShow
instance decodeTagException :: Decode TagException where decode = genericDecode options
instance encodeTagException :: Encode TagException where encode = genericEncode options

-- | Constructs TagException from required parameters
newTagException :: TagException
newTagException  = TagException { "message": (NullOrUndefined Nothing) }

-- | Constructs TagException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> TagException
newTagException'  customize = (TagException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TagKeyList = TagKeyList (Array TagKeyType)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagKeyType = TagKeyType String
derive instance newtypeTagKeyType :: Newtype TagKeyType _
derive instance repGenericTagKeyType :: Generic TagKeyType _
instance showTagKeyType :: Show TagKeyType where show = genericShow
instance decodeTagKeyType :: Decode TagKeyType where decode = genericDecode options
instance encodeTagKeyType :: Encode TagKeyType where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagResourceRequest = TagResourceRequest 
  { "KeyId" :: (KeyIdType)
  , "Tags" :: (TagList)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where decode = genericDecode options
instance encodeTagResourceRequest :: Encode TagResourceRequest where encode = genericEncode options

-- | Constructs TagResourceRequest from required parameters
newTagResourceRequest :: KeyIdType -> TagList -> TagResourceRequest
newTagResourceRequest _KeyId _Tags = TagResourceRequest { "KeyId": _KeyId, "Tags": _Tags }

-- | Constructs TagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceRequest' :: KeyIdType -> TagList -> ( { "KeyId" :: (KeyIdType) , "Tags" :: (TagList) } -> {"KeyId" :: (KeyIdType) , "Tags" :: (TagList) } ) -> TagResourceRequest
newTagResourceRequest' _KeyId _Tags customize = (TagResourceRequest <<< customize) { "KeyId": _KeyId, "Tags": _Tags }



newtype TagValueType = TagValueType String
derive instance newtypeTagValueType :: Newtype TagValueType _
derive instance repGenericTagValueType :: Generic TagValueType _
instance showTagValueType :: Show TagValueType where show = genericShow
instance decodeTagValueType :: Decode TagValueType where decode = genericDecode options
instance encodeTagValueType :: Encode TagValueType where encode = genericEncode options



-- | <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>
newtype UnsupportedOperationException = UnsupportedOperationException 
  { "message" :: NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeUnsupportedOperationException :: Newtype UnsupportedOperationException _
derive instance repGenericUnsupportedOperationException :: Generic UnsupportedOperationException _
instance showUnsupportedOperationException :: Show UnsupportedOperationException where show = genericShow
instance decodeUnsupportedOperationException :: Decode UnsupportedOperationException where decode = genericDecode options
instance encodeUnsupportedOperationException :: Encode UnsupportedOperationException where encode = genericEncode options

-- | Constructs UnsupportedOperationException from required parameters
newUnsupportedOperationException :: UnsupportedOperationException
newUnsupportedOperationException  = UnsupportedOperationException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedOperationException' :: ( { "message" :: NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined (ErrorMessageType) } ) -> UnsupportedOperationException
newUnsupportedOperationException'  customize = (UnsupportedOperationException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype UntagResourceRequest = UntagResourceRequest 
  { "KeyId" :: (KeyIdType)
  , "TagKeys" :: (TagKeyList)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where decode = genericDecode options
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where encode = genericEncode options

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: KeyIdType -> TagKeyList -> UntagResourceRequest
newUntagResourceRequest _KeyId _TagKeys = UntagResourceRequest { "KeyId": _KeyId, "TagKeys": _TagKeys }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: KeyIdType -> TagKeyList -> ( { "KeyId" :: (KeyIdType) , "TagKeys" :: (TagKeyList) } -> {"KeyId" :: (KeyIdType) , "TagKeys" :: (TagKeyList) } ) -> UntagResourceRequest
newUntagResourceRequest' _KeyId _TagKeys customize = (UntagResourceRequest <<< customize) { "KeyId": _KeyId, "TagKeys": _TagKeys }



newtype UpdateAliasRequest = UpdateAliasRequest 
  { "AliasName" :: (AliasNameType)
  , "TargetKeyId" :: (KeyIdType)
  }
derive instance newtypeUpdateAliasRequest :: Newtype UpdateAliasRequest _
derive instance repGenericUpdateAliasRequest :: Generic UpdateAliasRequest _
instance showUpdateAliasRequest :: Show UpdateAliasRequest where show = genericShow
instance decodeUpdateAliasRequest :: Decode UpdateAliasRequest where decode = genericDecode options
instance encodeUpdateAliasRequest :: Encode UpdateAliasRequest where encode = genericEncode options

-- | Constructs UpdateAliasRequest from required parameters
newUpdateAliasRequest :: AliasNameType -> KeyIdType -> UpdateAliasRequest
newUpdateAliasRequest _AliasName _TargetKeyId = UpdateAliasRequest { "AliasName": _AliasName, "TargetKeyId": _TargetKeyId }

-- | Constructs UpdateAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAliasRequest' :: AliasNameType -> KeyIdType -> ( { "AliasName" :: (AliasNameType) , "TargetKeyId" :: (KeyIdType) } -> {"AliasName" :: (AliasNameType) , "TargetKeyId" :: (KeyIdType) } ) -> UpdateAliasRequest
newUpdateAliasRequest' _AliasName _TargetKeyId customize = (UpdateAliasRequest <<< customize) { "AliasName": _AliasName, "TargetKeyId": _TargetKeyId }



newtype UpdateKeyDescriptionRequest = UpdateKeyDescriptionRequest 
  { "KeyId" :: (KeyIdType)
  , "Description" :: (DescriptionType)
  }
derive instance newtypeUpdateKeyDescriptionRequest :: Newtype UpdateKeyDescriptionRequest _
derive instance repGenericUpdateKeyDescriptionRequest :: Generic UpdateKeyDescriptionRequest _
instance showUpdateKeyDescriptionRequest :: Show UpdateKeyDescriptionRequest where show = genericShow
instance decodeUpdateKeyDescriptionRequest :: Decode UpdateKeyDescriptionRequest where decode = genericDecode options
instance encodeUpdateKeyDescriptionRequest :: Encode UpdateKeyDescriptionRequest where encode = genericEncode options

-- | Constructs UpdateKeyDescriptionRequest from required parameters
newUpdateKeyDescriptionRequest :: DescriptionType -> KeyIdType -> UpdateKeyDescriptionRequest
newUpdateKeyDescriptionRequest _Description _KeyId = UpdateKeyDescriptionRequest { "Description": _Description, "KeyId": _KeyId }

-- | Constructs UpdateKeyDescriptionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateKeyDescriptionRequest' :: DescriptionType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Description" :: (DescriptionType) } -> {"KeyId" :: (KeyIdType) , "Description" :: (DescriptionType) } ) -> UpdateKeyDescriptionRequest
newUpdateKeyDescriptionRequest' _Description _KeyId customize = (UpdateKeyDescriptionRequest <<< customize) { "Description": _Description, "KeyId": _KeyId }



newtype WrappingKeySpec = WrappingKeySpec String
derive instance newtypeWrappingKeySpec :: Newtype WrappingKeySpec _
derive instance repGenericWrappingKeySpec :: Generic WrappingKeySpec _
instance showWrappingKeySpec :: Show WrappingKeySpec where show = genericShow
instance decodeWrappingKeySpec :: Decode WrappingKeySpec where decode = genericDecode options
instance encodeWrappingKeySpec :: Encode WrappingKeySpec where encode = genericEncode options

