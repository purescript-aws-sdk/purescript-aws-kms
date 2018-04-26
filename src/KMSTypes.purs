
module AWS.KMS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
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
  { "AliasName" :: Maybe (AliasNameType)
  , "AliasArn" :: Maybe (ArnType)
  , "TargetKeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeAliasListEntry :: Newtype AliasListEntry _
derive instance repGenericAliasListEntry :: Generic AliasListEntry _
instance showAliasListEntry :: Show AliasListEntry where show = genericShow
instance decodeAliasListEntry :: Decode AliasListEntry where decode = genericDecode options
instance encodeAliasListEntry :: Encode AliasListEntry where encode = genericEncode options

-- | Constructs AliasListEntry from required parameters
newAliasListEntry :: AliasListEntry
newAliasListEntry  = AliasListEntry { "AliasArn": Nothing, "AliasName": Nothing, "TargetKeyId": Nothing }

-- | Constructs AliasListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliasListEntry' :: ( { "AliasName" :: Maybe (AliasNameType) , "AliasArn" :: Maybe (ArnType) , "TargetKeyId" :: Maybe (KeyIdType) } -> {"AliasName" :: Maybe (AliasNameType) , "AliasArn" :: Maybe (ArnType) , "TargetKeyId" :: Maybe (KeyIdType) } ) -> AliasListEntry
newAliasListEntry'  customize = (AliasListEntry <<< customize) { "AliasArn": Nothing, "AliasName": Nothing, "TargetKeyId": Nothing }



newtype AliasNameType = AliasNameType String
derive instance newtypeAliasNameType :: Newtype AliasNameType _
derive instance repGenericAliasNameType :: Generic AliasNameType _
instance showAliasNameType :: Show AliasNameType where show = genericShow
instance decodeAliasNameType :: Decode AliasNameType where decode = genericDecode options
instance encodeAliasNameType :: Encode AliasNameType where encode = genericEncode options



-- | <p>The request was rejected because it attempted to create a resource that already exists.</p>
newtype AlreadyExistsException = AlreadyExistsException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeAlreadyExistsException :: Newtype AlreadyExistsException _
derive instance repGenericAlreadyExistsException :: Generic AlreadyExistsException _
instance showAlreadyExistsException :: Show AlreadyExistsException where show = genericShow
instance decodeAlreadyExistsException :: Decode AlreadyExistsException where decode = genericDecode options
instance encodeAlreadyExistsException :: Encode AlreadyExistsException where encode = genericEncode options

-- | Constructs AlreadyExistsException from required parameters
newAlreadyExistsException :: AlreadyExistsException
newAlreadyExistsException  = AlreadyExistsException { "message": Nothing }

-- | Constructs AlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyExistsException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> AlreadyExistsException
newAlreadyExistsException'  customize = (AlreadyExistsException <<< customize) { "message": Nothing }



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
  { "KeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeCancelKeyDeletionResponse :: Newtype CancelKeyDeletionResponse _
derive instance repGenericCancelKeyDeletionResponse :: Generic CancelKeyDeletionResponse _
instance showCancelKeyDeletionResponse :: Show CancelKeyDeletionResponse where show = genericShow
instance decodeCancelKeyDeletionResponse :: Decode CancelKeyDeletionResponse where decode = genericDecode options
instance encodeCancelKeyDeletionResponse :: Encode CancelKeyDeletionResponse where encode = genericEncode options

-- | Constructs CancelKeyDeletionResponse from required parameters
newCancelKeyDeletionResponse :: CancelKeyDeletionResponse
newCancelKeyDeletionResponse  = CancelKeyDeletionResponse { "KeyId": Nothing }

-- | Constructs CancelKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelKeyDeletionResponse' :: ( { "KeyId" :: Maybe (KeyIdType) } -> {"KeyId" :: Maybe (KeyIdType) } ) -> CancelKeyDeletionResponse
newCancelKeyDeletionResponse'  customize = (CancelKeyDeletionResponse <<< customize) { "KeyId": Nothing }



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
  , "RetiringPrincipal" :: Maybe (PrincipalIdType)
  , "Operations" :: (GrantOperationList)
  , "Constraints" :: Maybe (GrantConstraints)
  , "GrantTokens" :: Maybe (GrantTokenList)
  , "Name" :: Maybe (GrantNameType)
  }
derive instance newtypeCreateGrantRequest :: Newtype CreateGrantRequest _
derive instance repGenericCreateGrantRequest :: Generic CreateGrantRequest _
instance showCreateGrantRequest :: Show CreateGrantRequest where show = genericShow
instance decodeCreateGrantRequest :: Decode CreateGrantRequest where decode = genericDecode options
instance encodeCreateGrantRequest :: Encode CreateGrantRequest where encode = genericEncode options

-- | Constructs CreateGrantRequest from required parameters
newCreateGrantRequest :: PrincipalIdType -> KeyIdType -> GrantOperationList -> CreateGrantRequest
newCreateGrantRequest _GranteePrincipal _KeyId _Operations = CreateGrantRequest { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": Nothing, "GrantTokens": Nothing, "Name": Nothing, "RetiringPrincipal": Nothing }

-- | Constructs CreateGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantRequest' :: PrincipalIdType -> KeyIdType -> GrantOperationList -> ( { "KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: Maybe (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: Maybe (GrantConstraints) , "GrantTokens" :: Maybe (GrantTokenList) , "Name" :: Maybe (GrantNameType) } -> {"KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: Maybe (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: Maybe (GrantConstraints) , "GrantTokens" :: Maybe (GrantTokenList) , "Name" :: Maybe (GrantNameType) } ) -> CreateGrantRequest
newCreateGrantRequest' _GranteePrincipal _KeyId _Operations customize = (CreateGrantRequest <<< customize) { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": Nothing, "GrantTokens": Nothing, "Name": Nothing, "RetiringPrincipal": Nothing }



newtype CreateGrantResponse = CreateGrantResponse 
  { "GrantToken" :: Maybe (GrantTokenType)
  , "GrantId" :: Maybe (GrantIdType)
  }
derive instance newtypeCreateGrantResponse :: Newtype CreateGrantResponse _
derive instance repGenericCreateGrantResponse :: Generic CreateGrantResponse _
instance showCreateGrantResponse :: Show CreateGrantResponse where show = genericShow
instance decodeCreateGrantResponse :: Decode CreateGrantResponse where decode = genericDecode options
instance encodeCreateGrantResponse :: Encode CreateGrantResponse where encode = genericEncode options

-- | Constructs CreateGrantResponse from required parameters
newCreateGrantResponse :: CreateGrantResponse
newCreateGrantResponse  = CreateGrantResponse { "GrantId": Nothing, "GrantToken": Nothing }

-- | Constructs CreateGrantResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantResponse' :: ( { "GrantToken" :: Maybe (GrantTokenType) , "GrantId" :: Maybe (GrantIdType) } -> {"GrantToken" :: Maybe (GrantTokenType) , "GrantId" :: Maybe (GrantIdType) } ) -> CreateGrantResponse
newCreateGrantResponse'  customize = (CreateGrantResponse <<< customize) { "GrantId": Nothing, "GrantToken": Nothing }



newtype CreateKeyRequest = CreateKeyRequest 
  { "Policy" :: Maybe (PolicyType)
  , "Description" :: Maybe (DescriptionType)
  , "KeyUsage" :: Maybe (KeyUsageType)
  , "Origin" :: Maybe (OriginType)
  , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType)
  , "Tags" :: Maybe (TagList)
  }
derive instance newtypeCreateKeyRequest :: Newtype CreateKeyRequest _
derive instance repGenericCreateKeyRequest :: Generic CreateKeyRequest _
instance showCreateKeyRequest :: Show CreateKeyRequest where show = genericShow
instance decodeCreateKeyRequest :: Decode CreateKeyRequest where decode = genericDecode options
instance encodeCreateKeyRequest :: Encode CreateKeyRequest where encode = genericEncode options

-- | Constructs CreateKeyRequest from required parameters
newCreateKeyRequest :: CreateKeyRequest
newCreateKeyRequest  = CreateKeyRequest { "BypassPolicyLockoutSafetyCheck": Nothing, "Description": Nothing, "KeyUsage": Nothing, "Origin": Nothing, "Policy": Nothing, "Tags": Nothing }

-- | Constructs CreateKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyRequest' :: ( { "Policy" :: Maybe (PolicyType) , "Description" :: Maybe (DescriptionType) , "KeyUsage" :: Maybe (KeyUsageType) , "Origin" :: Maybe (OriginType) , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType) , "Tags" :: Maybe (TagList) } -> {"Policy" :: Maybe (PolicyType) , "Description" :: Maybe (DescriptionType) , "KeyUsage" :: Maybe (KeyUsageType) , "Origin" :: Maybe (OriginType) , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType) , "Tags" :: Maybe (TagList) } ) -> CreateKeyRequest
newCreateKeyRequest'  customize = (CreateKeyRequest <<< customize) { "BypassPolicyLockoutSafetyCheck": Nothing, "Description": Nothing, "KeyUsage": Nothing, "Origin": Nothing, "Policy": Nothing, "Tags": Nothing }



newtype CreateKeyResponse = CreateKeyResponse 
  { "KeyMetadata" :: Maybe (KeyMetadata)
  }
derive instance newtypeCreateKeyResponse :: Newtype CreateKeyResponse _
derive instance repGenericCreateKeyResponse :: Generic CreateKeyResponse _
instance showCreateKeyResponse :: Show CreateKeyResponse where show = genericShow
instance decodeCreateKeyResponse :: Decode CreateKeyResponse where decode = genericDecode options
instance encodeCreateKeyResponse :: Encode CreateKeyResponse where encode = genericEncode options

-- | Constructs CreateKeyResponse from required parameters
newCreateKeyResponse :: CreateKeyResponse
newCreateKeyResponse  = CreateKeyResponse { "KeyMetadata": Nothing }

-- | Constructs CreateKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyResponse' :: ( { "KeyMetadata" :: Maybe (KeyMetadata) } -> {"KeyMetadata" :: Maybe (KeyMetadata) } ) -> CreateKeyResponse
newCreateKeyResponse'  customize = (CreateKeyResponse <<< customize) { "KeyMetadata": Nothing }



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
  , "EncryptionContext" :: Maybe (EncryptionContextType)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeDecryptRequest :: Newtype DecryptRequest _
derive instance repGenericDecryptRequest :: Generic DecryptRequest _
instance showDecryptRequest :: Show DecryptRequest where show = genericShow
instance decodeDecryptRequest :: Decode DecryptRequest where decode = genericDecode options
instance encodeDecryptRequest :: Encode DecryptRequest where encode = genericEncode options

-- | Constructs DecryptRequest from required parameters
newDecryptRequest :: CiphertextType -> DecryptRequest
newDecryptRequest _CiphertextBlob = DecryptRequest { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": Nothing, "GrantTokens": Nothing }

-- | Constructs DecryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptRequest' :: CiphertextType -> ( { "CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> DecryptRequest
newDecryptRequest' _CiphertextBlob customize = (DecryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": Nothing, "GrantTokens": Nothing }



newtype DecryptResponse = DecryptResponse 
  { "KeyId" :: Maybe (KeyIdType)
  , "Plaintext" :: Maybe (PlaintextType)
  }
derive instance newtypeDecryptResponse :: Newtype DecryptResponse _
derive instance repGenericDecryptResponse :: Generic DecryptResponse _
instance showDecryptResponse :: Show DecryptResponse where show = genericShow
instance decodeDecryptResponse :: Decode DecryptResponse where decode = genericDecode options
instance encodeDecryptResponse :: Encode DecryptResponse where encode = genericEncode options

-- | Constructs DecryptResponse from required parameters
newDecryptResponse :: DecryptResponse
newDecryptResponse  = DecryptResponse { "KeyId": Nothing, "Plaintext": Nothing }

-- | Constructs DecryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptResponse' :: ( { "KeyId" :: Maybe (KeyIdType) , "Plaintext" :: Maybe (PlaintextType) } -> {"KeyId" :: Maybe (KeyIdType) , "Plaintext" :: Maybe (PlaintextType) } ) -> DecryptResponse
newDecryptResponse'  customize = (DecryptResponse <<< customize) { "KeyId": Nothing, "Plaintext": Nothing }



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
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeDependencyTimeoutException :: Newtype DependencyTimeoutException _
derive instance repGenericDependencyTimeoutException :: Generic DependencyTimeoutException _
instance showDependencyTimeoutException :: Show DependencyTimeoutException where show = genericShow
instance decodeDependencyTimeoutException :: Decode DependencyTimeoutException where decode = genericDecode options
instance encodeDependencyTimeoutException :: Encode DependencyTimeoutException where encode = genericEncode options

-- | Constructs DependencyTimeoutException from required parameters
newDependencyTimeoutException :: DependencyTimeoutException
newDependencyTimeoutException  = DependencyTimeoutException { "message": Nothing }

-- | Constructs DependencyTimeoutException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDependencyTimeoutException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> DependencyTimeoutException
newDependencyTimeoutException'  customize = (DependencyTimeoutException <<< customize) { "message": Nothing }



newtype DescribeKeyRequest = DescribeKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeDescribeKeyRequest :: Newtype DescribeKeyRequest _
derive instance repGenericDescribeKeyRequest :: Generic DescribeKeyRequest _
instance showDescribeKeyRequest :: Show DescribeKeyRequest where show = genericShow
instance decodeDescribeKeyRequest :: Decode DescribeKeyRequest where decode = genericDecode options
instance encodeDescribeKeyRequest :: Encode DescribeKeyRequest where encode = genericEncode options

-- | Constructs DescribeKeyRequest from required parameters
newDescribeKeyRequest :: KeyIdType -> DescribeKeyRequest
newDescribeKeyRequest _KeyId = DescribeKeyRequest { "KeyId": _KeyId, "GrantTokens": Nothing }

-- | Constructs DescribeKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> DescribeKeyRequest
newDescribeKeyRequest' _KeyId customize = (DescribeKeyRequest <<< customize) { "KeyId": _KeyId, "GrantTokens": Nothing }



newtype DescribeKeyResponse = DescribeKeyResponse 
  { "KeyMetadata" :: Maybe (KeyMetadata)
  }
derive instance newtypeDescribeKeyResponse :: Newtype DescribeKeyResponse _
derive instance repGenericDescribeKeyResponse :: Generic DescribeKeyResponse _
instance showDescribeKeyResponse :: Show DescribeKeyResponse where show = genericShow
instance decodeDescribeKeyResponse :: Decode DescribeKeyResponse where decode = genericDecode options
instance encodeDescribeKeyResponse :: Encode DescribeKeyResponse where encode = genericEncode options

-- | Constructs DescribeKeyResponse from required parameters
newDescribeKeyResponse :: DescribeKeyResponse
newDescribeKeyResponse  = DescribeKeyResponse { "KeyMetadata": Nothing }

-- | Constructs DescribeKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyResponse' :: ( { "KeyMetadata" :: Maybe (KeyMetadata) } -> {"KeyMetadata" :: Maybe (KeyMetadata) } ) -> DescribeKeyResponse
newDescribeKeyResponse'  customize = (DescribeKeyResponse <<< customize) { "KeyMetadata": Nothing }



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
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeDisabledException :: Newtype DisabledException _
derive instance repGenericDisabledException :: Generic DisabledException _
instance showDisabledException :: Show DisabledException where show = genericShow
instance decodeDisabledException :: Decode DisabledException where decode = genericDecode options
instance encodeDisabledException :: Encode DisabledException where encode = genericEncode options

-- | Constructs DisabledException from required parameters
newDisabledException :: DisabledException
newDisabledException  = DisabledException { "message": Nothing }

-- | Constructs DisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisabledException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> DisabledException
newDisabledException'  customize = (DisabledException <<< customize) { "message": Nothing }



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
  , "EncryptionContext" :: Maybe (EncryptionContextType)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeEncryptRequest :: Newtype EncryptRequest _
derive instance repGenericEncryptRequest :: Generic EncryptRequest _
instance showEncryptRequest :: Show EncryptRequest where show = genericShow
instance decodeEncryptRequest :: Decode EncryptRequest where decode = genericDecode options
instance encodeEncryptRequest :: Encode EncryptRequest where encode = genericEncode options

-- | Constructs EncryptRequest from required parameters
newEncryptRequest :: KeyIdType -> PlaintextType -> EncryptRequest
newEncryptRequest _KeyId _Plaintext = EncryptRequest { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": Nothing, "GrantTokens": Nothing }

-- | Constructs EncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptRequest' :: KeyIdType -> PlaintextType -> ( { "KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> EncryptRequest
newEncryptRequest' _KeyId _Plaintext customize = (EncryptRequest <<< customize) { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": Nothing, "GrantTokens": Nothing }



newtype EncryptResponse = EncryptResponse 
  { "CiphertextBlob" :: Maybe (CiphertextType)
  , "KeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeEncryptResponse :: Newtype EncryptResponse _
derive instance repGenericEncryptResponse :: Generic EncryptResponse _
instance showEncryptResponse :: Show EncryptResponse where show = genericShow
instance decodeEncryptResponse :: Decode EncryptResponse where decode = genericDecode options
instance encodeEncryptResponse :: Encode EncryptResponse where encode = genericEncode options

-- | Constructs EncryptResponse from required parameters
newEncryptResponse :: EncryptResponse
newEncryptResponse  = EncryptResponse { "CiphertextBlob": Nothing, "KeyId": Nothing }

-- | Constructs EncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptResponse' :: ( { "CiphertextBlob" :: Maybe (CiphertextType) , "KeyId" :: Maybe (KeyIdType) } -> {"CiphertextBlob" :: Maybe (CiphertextType) , "KeyId" :: Maybe (KeyIdType) } ) -> EncryptResponse
newEncryptResponse'  customize = (EncryptResponse <<< customize) { "CiphertextBlob": Nothing, "KeyId": Nothing }



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
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeExpiredImportTokenException :: Newtype ExpiredImportTokenException _
derive instance repGenericExpiredImportTokenException :: Generic ExpiredImportTokenException _
instance showExpiredImportTokenException :: Show ExpiredImportTokenException where show = genericShow
instance decodeExpiredImportTokenException :: Decode ExpiredImportTokenException where decode = genericDecode options
instance encodeExpiredImportTokenException :: Encode ExpiredImportTokenException where encode = genericEncode options

-- | Constructs ExpiredImportTokenException from required parameters
newExpiredImportTokenException :: ExpiredImportTokenException
newExpiredImportTokenException  = ExpiredImportTokenException { "message": Nothing }

-- | Constructs ExpiredImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredImportTokenException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> ExpiredImportTokenException
newExpiredImportTokenException'  customize = (ExpiredImportTokenException <<< customize) { "message": Nothing }



newtype GenerateDataKeyRequest = GenerateDataKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: Maybe (EncryptionContextType)
  , "NumberOfBytes" :: Maybe (NumberOfBytesType)
  , "KeySpec" :: Maybe (DataKeySpec)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyRequest :: Newtype GenerateDataKeyRequest _
derive instance repGenericGenerateDataKeyRequest :: Generic GenerateDataKeyRequest _
instance showGenerateDataKeyRequest :: Show GenerateDataKeyRequest where show = genericShow
instance decodeGenerateDataKeyRequest :: Decode GenerateDataKeyRequest where decode = genericDecode options
instance encodeGenerateDataKeyRequest :: Encode GenerateDataKeyRequest where encode = genericEncode options

-- | Constructs GenerateDataKeyRequest from required parameters
newGenerateDataKeyRequest :: KeyIdType -> GenerateDataKeyRequest
newGenerateDataKeyRequest _KeyId = GenerateDataKeyRequest { "KeyId": _KeyId, "EncryptionContext": Nothing, "GrantTokens": Nothing, "KeySpec": Nothing, "NumberOfBytes": Nothing }

-- | Constructs GenerateDataKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "NumberOfBytes" :: Maybe (NumberOfBytesType) , "KeySpec" :: Maybe (DataKeySpec) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "NumberOfBytes" :: Maybe (NumberOfBytesType) , "KeySpec" :: Maybe (DataKeySpec) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> GenerateDataKeyRequest
newGenerateDataKeyRequest' _KeyId customize = (GenerateDataKeyRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": Nothing, "GrantTokens": Nothing, "KeySpec": Nothing, "NumberOfBytes": Nothing }



newtype GenerateDataKeyResponse = GenerateDataKeyResponse 
  { "CiphertextBlob" :: Maybe (CiphertextType)
  , "Plaintext" :: Maybe (PlaintextType)
  , "KeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeGenerateDataKeyResponse :: Newtype GenerateDataKeyResponse _
derive instance repGenericGenerateDataKeyResponse :: Generic GenerateDataKeyResponse _
instance showGenerateDataKeyResponse :: Show GenerateDataKeyResponse where show = genericShow
instance decodeGenerateDataKeyResponse :: Decode GenerateDataKeyResponse where decode = genericDecode options
instance encodeGenerateDataKeyResponse :: Encode GenerateDataKeyResponse where encode = genericEncode options

-- | Constructs GenerateDataKeyResponse from required parameters
newGenerateDataKeyResponse :: GenerateDataKeyResponse
newGenerateDataKeyResponse  = GenerateDataKeyResponse { "CiphertextBlob": Nothing, "KeyId": Nothing, "Plaintext": Nothing }

-- | Constructs GenerateDataKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyResponse' :: ( { "CiphertextBlob" :: Maybe (CiphertextType) , "Plaintext" :: Maybe (PlaintextType) , "KeyId" :: Maybe (KeyIdType) } -> {"CiphertextBlob" :: Maybe (CiphertextType) , "Plaintext" :: Maybe (PlaintextType) , "KeyId" :: Maybe (KeyIdType) } ) -> GenerateDataKeyResponse
newGenerateDataKeyResponse'  customize = (GenerateDataKeyResponse <<< customize) { "CiphertextBlob": Nothing, "KeyId": Nothing, "Plaintext": Nothing }



newtype GenerateDataKeyWithoutPlaintextRequest = GenerateDataKeyWithoutPlaintextRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: Maybe (EncryptionContextType)
  , "KeySpec" :: Maybe (DataKeySpec)
  , "NumberOfBytes" :: Maybe (NumberOfBytesType)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextRequest :: Newtype GenerateDataKeyWithoutPlaintextRequest _
derive instance repGenericGenerateDataKeyWithoutPlaintextRequest :: Generic GenerateDataKeyWithoutPlaintextRequest _
instance showGenerateDataKeyWithoutPlaintextRequest :: Show GenerateDataKeyWithoutPlaintextRequest where show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextRequest :: Decode GenerateDataKeyWithoutPlaintextRequest where decode = genericDecode options
instance encodeGenerateDataKeyWithoutPlaintextRequest :: Encode GenerateDataKeyWithoutPlaintextRequest where encode = genericEncode options

-- | Constructs GenerateDataKeyWithoutPlaintextRequest from required parameters
newGenerateDataKeyWithoutPlaintextRequest :: KeyIdType -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest _KeyId = GenerateDataKeyWithoutPlaintextRequest { "KeyId": _KeyId, "EncryptionContext": Nothing, "GrantTokens": Nothing, "KeySpec": Nothing, "NumberOfBytes": Nothing }

-- | Constructs GenerateDataKeyWithoutPlaintextRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "KeySpec" :: Maybe (DataKeySpec) , "NumberOfBytes" :: Maybe (NumberOfBytesType) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: Maybe (EncryptionContextType) , "KeySpec" :: Maybe (DataKeySpec) , "NumberOfBytes" :: Maybe (NumberOfBytesType) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest' _KeyId customize = (GenerateDataKeyWithoutPlaintextRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": Nothing, "GrantTokens": Nothing, "KeySpec": Nothing, "NumberOfBytes": Nothing }



newtype GenerateDataKeyWithoutPlaintextResponse = GenerateDataKeyWithoutPlaintextResponse 
  { "CiphertextBlob" :: Maybe (CiphertextType)
  , "KeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextResponse :: Newtype GenerateDataKeyWithoutPlaintextResponse _
derive instance repGenericGenerateDataKeyWithoutPlaintextResponse :: Generic GenerateDataKeyWithoutPlaintextResponse _
instance showGenerateDataKeyWithoutPlaintextResponse :: Show GenerateDataKeyWithoutPlaintextResponse where show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextResponse :: Decode GenerateDataKeyWithoutPlaintextResponse where decode = genericDecode options
instance encodeGenerateDataKeyWithoutPlaintextResponse :: Encode GenerateDataKeyWithoutPlaintextResponse where encode = genericEncode options

-- | Constructs GenerateDataKeyWithoutPlaintextResponse from required parameters
newGenerateDataKeyWithoutPlaintextResponse :: GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse  = GenerateDataKeyWithoutPlaintextResponse { "CiphertextBlob": Nothing, "KeyId": Nothing }

-- | Constructs GenerateDataKeyWithoutPlaintextResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextResponse' :: ( { "CiphertextBlob" :: Maybe (CiphertextType) , "KeyId" :: Maybe (KeyIdType) } -> {"CiphertextBlob" :: Maybe (CiphertextType) , "KeyId" :: Maybe (KeyIdType) } ) -> GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse'  customize = (GenerateDataKeyWithoutPlaintextResponse <<< customize) { "CiphertextBlob": Nothing, "KeyId": Nothing }



newtype GenerateRandomRequest = GenerateRandomRequest 
  { "NumberOfBytes" :: Maybe (NumberOfBytesType)
  }
derive instance newtypeGenerateRandomRequest :: Newtype GenerateRandomRequest _
derive instance repGenericGenerateRandomRequest :: Generic GenerateRandomRequest _
instance showGenerateRandomRequest :: Show GenerateRandomRequest where show = genericShow
instance decodeGenerateRandomRequest :: Decode GenerateRandomRequest where decode = genericDecode options
instance encodeGenerateRandomRequest :: Encode GenerateRandomRequest where encode = genericEncode options

-- | Constructs GenerateRandomRequest from required parameters
newGenerateRandomRequest :: GenerateRandomRequest
newGenerateRandomRequest  = GenerateRandomRequest { "NumberOfBytes": Nothing }

-- | Constructs GenerateRandomRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomRequest' :: ( { "NumberOfBytes" :: Maybe (NumberOfBytesType) } -> {"NumberOfBytes" :: Maybe (NumberOfBytesType) } ) -> GenerateRandomRequest
newGenerateRandomRequest'  customize = (GenerateRandomRequest <<< customize) { "NumberOfBytes": Nothing }



newtype GenerateRandomResponse = GenerateRandomResponse 
  { "Plaintext" :: Maybe (PlaintextType)
  }
derive instance newtypeGenerateRandomResponse :: Newtype GenerateRandomResponse _
derive instance repGenericGenerateRandomResponse :: Generic GenerateRandomResponse _
instance showGenerateRandomResponse :: Show GenerateRandomResponse where show = genericShow
instance decodeGenerateRandomResponse :: Decode GenerateRandomResponse where decode = genericDecode options
instance encodeGenerateRandomResponse :: Encode GenerateRandomResponse where encode = genericEncode options

-- | Constructs GenerateRandomResponse from required parameters
newGenerateRandomResponse :: GenerateRandomResponse
newGenerateRandomResponse  = GenerateRandomResponse { "Plaintext": Nothing }

-- | Constructs GenerateRandomResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomResponse' :: ( { "Plaintext" :: Maybe (PlaintextType) } -> {"Plaintext" :: Maybe (PlaintextType) } ) -> GenerateRandomResponse
newGenerateRandomResponse'  customize = (GenerateRandomResponse <<< customize) { "Plaintext": Nothing }



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
  { "Policy" :: Maybe (PolicyType)
  }
derive instance newtypeGetKeyPolicyResponse :: Newtype GetKeyPolicyResponse _
derive instance repGenericGetKeyPolicyResponse :: Generic GetKeyPolicyResponse _
instance showGetKeyPolicyResponse :: Show GetKeyPolicyResponse where show = genericShow
instance decodeGetKeyPolicyResponse :: Decode GetKeyPolicyResponse where decode = genericDecode options
instance encodeGetKeyPolicyResponse :: Encode GetKeyPolicyResponse where encode = genericEncode options

-- | Constructs GetKeyPolicyResponse from required parameters
newGetKeyPolicyResponse :: GetKeyPolicyResponse
newGetKeyPolicyResponse  = GetKeyPolicyResponse { "Policy": Nothing }

-- | Constructs GetKeyPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyPolicyResponse' :: ( { "Policy" :: Maybe (PolicyType) } -> {"Policy" :: Maybe (PolicyType) } ) -> GetKeyPolicyResponse
newGetKeyPolicyResponse'  customize = (GetKeyPolicyResponse <<< customize) { "Policy": Nothing }



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
  { "KeyRotationEnabled" :: Maybe (BooleanType)
  }
derive instance newtypeGetKeyRotationStatusResponse :: Newtype GetKeyRotationStatusResponse _
derive instance repGenericGetKeyRotationStatusResponse :: Generic GetKeyRotationStatusResponse _
instance showGetKeyRotationStatusResponse :: Show GetKeyRotationStatusResponse where show = genericShow
instance decodeGetKeyRotationStatusResponse :: Decode GetKeyRotationStatusResponse where decode = genericDecode options
instance encodeGetKeyRotationStatusResponse :: Encode GetKeyRotationStatusResponse where encode = genericEncode options

-- | Constructs GetKeyRotationStatusResponse from required parameters
newGetKeyRotationStatusResponse :: GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse  = GetKeyRotationStatusResponse { "KeyRotationEnabled": Nothing }

-- | Constructs GetKeyRotationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyRotationStatusResponse' :: ( { "KeyRotationEnabled" :: Maybe (BooleanType) } -> {"KeyRotationEnabled" :: Maybe (BooleanType) } ) -> GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse'  customize = (GetKeyRotationStatusResponse <<< customize) { "KeyRotationEnabled": Nothing }



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
  { "KeyId" :: Maybe (KeyIdType)
  , "ImportToken" :: Maybe (CiphertextType)
  , "PublicKey" :: Maybe (PlaintextType)
  , "ParametersValidTo" :: Maybe (DateType)
  }
derive instance newtypeGetParametersForImportResponse :: Newtype GetParametersForImportResponse _
derive instance repGenericGetParametersForImportResponse :: Generic GetParametersForImportResponse _
instance showGetParametersForImportResponse :: Show GetParametersForImportResponse where show = genericShow
instance decodeGetParametersForImportResponse :: Decode GetParametersForImportResponse where decode = genericDecode options
instance encodeGetParametersForImportResponse :: Encode GetParametersForImportResponse where encode = genericEncode options

-- | Constructs GetParametersForImportResponse from required parameters
newGetParametersForImportResponse :: GetParametersForImportResponse
newGetParametersForImportResponse  = GetParametersForImportResponse { "ImportToken": Nothing, "KeyId": Nothing, "ParametersValidTo": Nothing, "PublicKey": Nothing }

-- | Constructs GetParametersForImportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetParametersForImportResponse' :: ( { "KeyId" :: Maybe (KeyIdType) , "ImportToken" :: Maybe (CiphertextType) , "PublicKey" :: Maybe (PlaintextType) , "ParametersValidTo" :: Maybe (DateType) } -> {"KeyId" :: Maybe (KeyIdType) , "ImportToken" :: Maybe (CiphertextType) , "PublicKey" :: Maybe (PlaintextType) , "ParametersValidTo" :: Maybe (DateType) } ) -> GetParametersForImportResponse
newGetParametersForImportResponse'  customize = (GetParametersForImportResponse <<< customize) { "ImportToken": Nothing, "KeyId": Nothing, "ParametersValidTo": Nothing, "PublicKey": Nothing }



-- | <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In constrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>
newtype GrantConstraints = GrantConstraints 
  { "EncryptionContextSubset" :: Maybe (EncryptionContextType)
  , "EncryptionContextEquals" :: Maybe (EncryptionContextType)
  }
derive instance newtypeGrantConstraints :: Newtype GrantConstraints _
derive instance repGenericGrantConstraints :: Generic GrantConstraints _
instance showGrantConstraints :: Show GrantConstraints where show = genericShow
instance decodeGrantConstraints :: Decode GrantConstraints where decode = genericDecode options
instance encodeGrantConstraints :: Encode GrantConstraints where encode = genericEncode options

-- | Constructs GrantConstraints from required parameters
newGrantConstraints :: GrantConstraints
newGrantConstraints  = GrantConstraints { "EncryptionContextEquals": Nothing, "EncryptionContextSubset": Nothing }

-- | Constructs GrantConstraints's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantConstraints' :: ( { "EncryptionContextSubset" :: Maybe (EncryptionContextType) , "EncryptionContextEquals" :: Maybe (EncryptionContextType) } -> {"EncryptionContextSubset" :: Maybe (EncryptionContextType) , "EncryptionContextEquals" :: Maybe (EncryptionContextType) } ) -> GrantConstraints
newGrantConstraints'  customize = (GrantConstraints <<< customize) { "EncryptionContextEquals": Nothing, "EncryptionContextSubset": Nothing }



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
  { "KeyId" :: Maybe (KeyIdType)
  , "GrantId" :: Maybe (GrantIdType)
  , "Name" :: Maybe (GrantNameType)
  , "CreationDate" :: Maybe (DateType)
  , "GranteePrincipal" :: Maybe (PrincipalIdType)
  , "RetiringPrincipal" :: Maybe (PrincipalIdType)
  , "IssuingAccount" :: Maybe (PrincipalIdType)
  , "Operations" :: Maybe (GrantOperationList)
  , "Constraints" :: Maybe (GrantConstraints)
  }
derive instance newtypeGrantListEntry :: Newtype GrantListEntry _
derive instance repGenericGrantListEntry :: Generic GrantListEntry _
instance showGrantListEntry :: Show GrantListEntry where show = genericShow
instance decodeGrantListEntry :: Decode GrantListEntry where decode = genericDecode options
instance encodeGrantListEntry :: Encode GrantListEntry where encode = genericEncode options

-- | Constructs GrantListEntry from required parameters
newGrantListEntry :: GrantListEntry
newGrantListEntry  = GrantListEntry { "Constraints": Nothing, "CreationDate": Nothing, "GrantId": Nothing, "GranteePrincipal": Nothing, "IssuingAccount": Nothing, "KeyId": Nothing, "Name": Nothing, "Operations": Nothing, "RetiringPrincipal": Nothing }

-- | Constructs GrantListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantListEntry' :: ( { "KeyId" :: Maybe (KeyIdType) , "GrantId" :: Maybe (GrantIdType) , "Name" :: Maybe (GrantNameType) , "CreationDate" :: Maybe (DateType) , "GranteePrincipal" :: Maybe (PrincipalIdType) , "RetiringPrincipal" :: Maybe (PrincipalIdType) , "IssuingAccount" :: Maybe (PrincipalIdType) , "Operations" :: Maybe (GrantOperationList) , "Constraints" :: Maybe (GrantConstraints) } -> {"KeyId" :: Maybe (KeyIdType) , "GrantId" :: Maybe (GrantIdType) , "Name" :: Maybe (GrantNameType) , "CreationDate" :: Maybe (DateType) , "GranteePrincipal" :: Maybe (PrincipalIdType) , "RetiringPrincipal" :: Maybe (PrincipalIdType) , "IssuingAccount" :: Maybe (PrincipalIdType) , "Operations" :: Maybe (GrantOperationList) , "Constraints" :: Maybe (GrantConstraints) } ) -> GrantListEntry
newGrantListEntry'  customize = (GrantListEntry <<< customize) { "Constraints": Nothing, "CreationDate": Nothing, "GrantId": Nothing, "GranteePrincipal": Nothing, "IssuingAccount": Nothing, "KeyId": Nothing, "Name": Nothing, "Operations": Nothing, "RetiringPrincipal": Nothing }



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
  , "ValidTo" :: Maybe (DateType)
  , "ExpirationModel" :: Maybe (ExpirationModelType)
  }
derive instance newtypeImportKeyMaterialRequest :: Newtype ImportKeyMaterialRequest _
derive instance repGenericImportKeyMaterialRequest :: Generic ImportKeyMaterialRequest _
instance showImportKeyMaterialRequest :: Show ImportKeyMaterialRequest where show = genericShow
instance decodeImportKeyMaterialRequest :: Decode ImportKeyMaterialRequest where decode = genericDecode options
instance encodeImportKeyMaterialRequest :: Encode ImportKeyMaterialRequest where encode = genericEncode options

-- | Constructs ImportKeyMaterialRequest from required parameters
newImportKeyMaterialRequest :: CiphertextType -> CiphertextType -> KeyIdType -> ImportKeyMaterialRequest
newImportKeyMaterialRequest _EncryptedKeyMaterial _ImportToken _KeyId = ImportKeyMaterialRequest { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": Nothing, "ValidTo": Nothing }

-- | Constructs ImportKeyMaterialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImportKeyMaterialRequest' :: CiphertextType -> CiphertextType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: Maybe (DateType) , "ExpirationModel" :: Maybe (ExpirationModelType) } -> {"KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: Maybe (DateType) , "ExpirationModel" :: Maybe (ExpirationModelType) } ) -> ImportKeyMaterialRequest
newImportKeyMaterialRequest' _EncryptedKeyMaterial _ImportToken _KeyId customize = (ImportKeyMaterialRequest <<< customize) { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": Nothing, "ValidTo": Nothing }



newtype ImportKeyMaterialResponse = ImportKeyMaterialResponse Types.NoArguments
derive instance newtypeImportKeyMaterialResponse :: Newtype ImportKeyMaterialResponse _
derive instance repGenericImportKeyMaterialResponse :: Generic ImportKeyMaterialResponse _
instance showImportKeyMaterialResponse :: Show ImportKeyMaterialResponse where show = genericShow
instance decodeImportKeyMaterialResponse :: Decode ImportKeyMaterialResponse where decode = genericDecode options
instance encodeImportKeyMaterialResponse :: Encode ImportKeyMaterialResponse where encode = genericEncode options



-- | <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
newtype IncorrectKeyMaterialException = IncorrectKeyMaterialException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeIncorrectKeyMaterialException :: Newtype IncorrectKeyMaterialException _
derive instance repGenericIncorrectKeyMaterialException :: Generic IncorrectKeyMaterialException _
instance showIncorrectKeyMaterialException :: Show IncorrectKeyMaterialException where show = genericShow
instance decodeIncorrectKeyMaterialException :: Decode IncorrectKeyMaterialException where decode = genericDecode options
instance encodeIncorrectKeyMaterialException :: Encode IncorrectKeyMaterialException where encode = genericEncode options

-- | Constructs IncorrectKeyMaterialException from required parameters
newIncorrectKeyMaterialException :: IncorrectKeyMaterialException
newIncorrectKeyMaterialException  = IncorrectKeyMaterialException { "message": Nothing }

-- | Constructs IncorrectKeyMaterialException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncorrectKeyMaterialException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> IncorrectKeyMaterialException
newIncorrectKeyMaterialException'  customize = (IncorrectKeyMaterialException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the specified alias name is not valid.</p>
newtype InvalidAliasNameException = InvalidAliasNameException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidAliasNameException :: Newtype InvalidAliasNameException _
derive instance repGenericInvalidAliasNameException :: Generic InvalidAliasNameException _
instance showInvalidAliasNameException :: Show InvalidAliasNameException where show = genericShow
instance decodeInvalidAliasNameException :: Decode InvalidAliasNameException where decode = genericDecode options
instance encodeInvalidAliasNameException :: Encode InvalidAliasNameException where encode = genericEncode options

-- | Constructs InvalidAliasNameException from required parameters
newInvalidAliasNameException :: InvalidAliasNameException
newInvalidAliasNameException  = InvalidAliasNameException { "message": Nothing }

-- | Constructs InvalidAliasNameException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAliasNameException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidAliasNameException
newInvalidAliasNameException'  customize = (InvalidAliasNameException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because a specified ARN was not valid.</p>
newtype InvalidArnException = InvalidArnException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidArnException :: Newtype InvalidArnException _
derive instance repGenericInvalidArnException :: Generic InvalidArnException _
instance showInvalidArnException :: Show InvalidArnException where show = genericShow
instance decodeInvalidArnException :: Decode InvalidArnException where decode = genericDecode options
instance encodeInvalidArnException :: Encode InvalidArnException where encode = genericEncode options

-- | Constructs InvalidArnException from required parameters
newInvalidArnException :: InvalidArnException
newInvalidArnException  = InvalidArnException { "message": Nothing }

-- | Constructs InvalidArnException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArnException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidArnException
newInvalidArnException'  customize = (InvalidArnException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.</p>
newtype InvalidCiphertextException = InvalidCiphertextException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidCiphertextException :: Newtype InvalidCiphertextException _
derive instance repGenericInvalidCiphertextException :: Generic InvalidCiphertextException _
instance showInvalidCiphertextException :: Show InvalidCiphertextException where show = genericShow
instance decodeInvalidCiphertextException :: Decode InvalidCiphertextException where decode = genericDecode options
instance encodeInvalidCiphertextException :: Encode InvalidCiphertextException where encode = genericEncode options

-- | Constructs InvalidCiphertextException from required parameters
newInvalidCiphertextException :: InvalidCiphertextException
newInvalidCiphertextException  = InvalidCiphertextException { "message": Nothing }

-- | Constructs InvalidCiphertextException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCiphertextException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidCiphertextException
newInvalidCiphertextException'  customize = (InvalidCiphertextException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
newtype InvalidGrantIdException = InvalidGrantIdException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidGrantIdException :: Newtype InvalidGrantIdException _
derive instance repGenericInvalidGrantIdException :: Generic InvalidGrantIdException _
instance showInvalidGrantIdException :: Show InvalidGrantIdException where show = genericShow
instance decodeInvalidGrantIdException :: Decode InvalidGrantIdException where decode = genericDecode options
instance encodeInvalidGrantIdException :: Encode InvalidGrantIdException where encode = genericEncode options

-- | Constructs InvalidGrantIdException from required parameters
newInvalidGrantIdException :: InvalidGrantIdException
newInvalidGrantIdException  = InvalidGrantIdException { "message": Nothing }

-- | Constructs InvalidGrantIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantIdException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidGrantIdException
newInvalidGrantIdException'  customize = (InvalidGrantIdException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the specified grant token is not valid.</p>
newtype InvalidGrantTokenException = InvalidGrantTokenException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidGrantTokenException :: Newtype InvalidGrantTokenException _
derive instance repGenericInvalidGrantTokenException :: Generic InvalidGrantTokenException _
instance showInvalidGrantTokenException :: Show InvalidGrantTokenException where show = genericShow
instance decodeInvalidGrantTokenException :: Decode InvalidGrantTokenException where decode = genericDecode options
instance encodeInvalidGrantTokenException :: Encode InvalidGrantTokenException where encode = genericEncode options

-- | Constructs InvalidGrantTokenException from required parameters
newInvalidGrantTokenException :: InvalidGrantTokenException
newInvalidGrantTokenException  = InvalidGrantTokenException { "message": Nothing }

-- | Constructs InvalidGrantTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantTokenException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidGrantTokenException
newInvalidGrantTokenException'  customize = (InvalidGrantTokenException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
newtype InvalidImportTokenException = InvalidImportTokenException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidImportTokenException :: Newtype InvalidImportTokenException _
derive instance repGenericInvalidImportTokenException :: Generic InvalidImportTokenException _
instance showInvalidImportTokenException :: Show InvalidImportTokenException where show = genericShow
instance decodeInvalidImportTokenException :: Decode InvalidImportTokenException where decode = genericDecode options
instance encodeInvalidImportTokenException :: Encode InvalidImportTokenException where encode = genericEncode options

-- | Constructs InvalidImportTokenException from required parameters
newInvalidImportTokenException :: InvalidImportTokenException
newInvalidImportTokenException  = InvalidImportTokenException { "message": Nothing }

-- | Constructs InvalidImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidImportTokenException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidImportTokenException
newInvalidImportTokenException'  customize = (InvalidImportTokenException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
newtype InvalidKeyUsageException = InvalidKeyUsageException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidKeyUsageException :: Newtype InvalidKeyUsageException _
derive instance repGenericInvalidKeyUsageException :: Generic InvalidKeyUsageException _
instance showInvalidKeyUsageException :: Show InvalidKeyUsageException where show = genericShow
instance decodeInvalidKeyUsageException :: Decode InvalidKeyUsageException where decode = genericDecode options
instance encodeInvalidKeyUsageException :: Encode InvalidKeyUsageException where encode = genericEncode options

-- | Constructs InvalidKeyUsageException from required parameters
newInvalidKeyUsageException :: InvalidKeyUsageException
newInvalidKeyUsageException  = InvalidKeyUsageException { "message": Nothing }

-- | Constructs InvalidKeyUsageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidKeyUsageException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidKeyUsageException
newInvalidKeyUsageException'  customize = (InvalidKeyUsageException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
newtype InvalidMarkerException = InvalidMarkerException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeInvalidMarkerException :: Newtype InvalidMarkerException _
derive instance repGenericInvalidMarkerException :: Generic InvalidMarkerException _
instance showInvalidMarkerException :: Show InvalidMarkerException where show = genericShow
instance decodeInvalidMarkerException :: Decode InvalidMarkerException where decode = genericDecode options
instance encodeInvalidMarkerException :: Encode InvalidMarkerException where encode = genericEncode options

-- | Constructs InvalidMarkerException from required parameters
newInvalidMarkerException :: InvalidMarkerException
newInvalidMarkerException  = InvalidMarkerException { "message": Nothing }

-- | Constructs InvalidMarkerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidMarkerException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> InvalidMarkerException
newInvalidMarkerException'  customize = (InvalidMarkerException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
newtype KMSInternalException = KMSInternalException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeKMSInternalException :: Newtype KMSInternalException _
derive instance repGenericKMSInternalException :: Generic KMSInternalException _
instance showKMSInternalException :: Show KMSInternalException where show = genericShow
instance decodeKMSInternalException :: Decode KMSInternalException where decode = genericDecode options
instance encodeKMSInternalException :: Encode KMSInternalException where encode = genericEncode options

-- | Constructs KMSInternalException from required parameters
newKMSInternalException :: KMSInternalException
newKMSInternalException  = KMSInternalException { "message": Nothing }

-- | Constructs KMSInternalException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInternalException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> KMSInternalException
newKMSInternalException'  customize = (KMSInternalException <<< customize) { "message": Nothing }



-- | <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype KMSInvalidStateException = KMSInvalidStateException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeKMSInvalidStateException :: Newtype KMSInvalidStateException _
derive instance repGenericKMSInvalidStateException :: Generic KMSInvalidStateException _
instance showKMSInvalidStateException :: Show KMSInvalidStateException where show = genericShow
instance decodeKMSInvalidStateException :: Decode KMSInvalidStateException where decode = genericDecode options
instance encodeKMSInvalidStateException :: Encode KMSInvalidStateException where encode = genericEncode options

-- | Constructs KMSInvalidStateException from required parameters
newKMSInvalidStateException :: KMSInvalidStateException
newKMSInvalidStateException  = KMSInvalidStateException { "message": Nothing }

-- | Constructs KMSInvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInvalidStateException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> KMSInvalidStateException
newKMSInvalidStateException'  customize = (KMSInvalidStateException <<< customize) { "message": Nothing }



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
  { "KeyId" :: Maybe (KeyIdType)
  , "KeyArn" :: Maybe (ArnType)
  }
derive instance newtypeKeyListEntry :: Newtype KeyListEntry _
derive instance repGenericKeyListEntry :: Generic KeyListEntry _
instance showKeyListEntry :: Show KeyListEntry where show = genericShow
instance decodeKeyListEntry :: Decode KeyListEntry where decode = genericDecode options
instance encodeKeyListEntry :: Encode KeyListEntry where encode = genericEncode options

-- | Constructs KeyListEntry from required parameters
newKeyListEntry :: KeyListEntry
newKeyListEntry  = KeyListEntry { "KeyArn": Nothing, "KeyId": Nothing }

-- | Constructs KeyListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyListEntry' :: ( { "KeyId" :: Maybe (KeyIdType) , "KeyArn" :: Maybe (ArnType) } -> {"KeyId" :: Maybe (KeyIdType) , "KeyArn" :: Maybe (ArnType) } ) -> KeyListEntry
newKeyListEntry'  customize = (KeyListEntry <<< customize) { "KeyArn": Nothing, "KeyId": Nothing }



newtype KeyManagerType = KeyManagerType String
derive instance newtypeKeyManagerType :: Newtype KeyManagerType _
derive instance repGenericKeyManagerType :: Generic KeyManagerType _
instance showKeyManagerType :: Show KeyManagerType where show = genericShow
instance decodeKeyManagerType :: Decode KeyManagerType where decode = genericDecode options
instance encodeKeyManagerType :: Encode KeyManagerType where encode = genericEncode options



-- | <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
newtype KeyMetadata = KeyMetadata 
  { "AWSAccountId" :: Maybe (AWSAccountIdType)
  , "KeyId" :: (KeyIdType)
  , "Arn" :: Maybe (ArnType)
  , "CreationDate" :: Maybe (DateType)
  , "Enabled" :: Maybe (BooleanType)
  , "Description" :: Maybe (DescriptionType)
  , "KeyUsage" :: Maybe (KeyUsageType)
  , "KeyState" :: Maybe (KeyState)
  , "DeletionDate" :: Maybe (DateType)
  , "ValidTo" :: Maybe (DateType)
  , "Origin" :: Maybe (OriginType)
  , "ExpirationModel" :: Maybe (ExpirationModelType)
  , "KeyManager" :: Maybe (KeyManagerType)
  }
derive instance newtypeKeyMetadata :: Newtype KeyMetadata _
derive instance repGenericKeyMetadata :: Generic KeyMetadata _
instance showKeyMetadata :: Show KeyMetadata where show = genericShow
instance decodeKeyMetadata :: Decode KeyMetadata where decode = genericDecode options
instance encodeKeyMetadata :: Encode KeyMetadata where encode = genericEncode options

-- | Constructs KeyMetadata from required parameters
newKeyMetadata :: KeyIdType -> KeyMetadata
newKeyMetadata _KeyId = KeyMetadata { "KeyId": _KeyId, "AWSAccountId": Nothing, "Arn": Nothing, "CreationDate": Nothing, "DeletionDate": Nothing, "Description": Nothing, "Enabled": Nothing, "ExpirationModel": Nothing, "KeyManager": Nothing, "KeyState": Nothing, "KeyUsage": Nothing, "Origin": Nothing, "ValidTo": Nothing }

-- | Constructs KeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyMetadata' :: KeyIdType -> ( { "AWSAccountId" :: Maybe (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: Maybe (ArnType) , "CreationDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "Description" :: Maybe (DescriptionType) , "KeyUsage" :: Maybe (KeyUsageType) , "KeyState" :: Maybe (KeyState) , "DeletionDate" :: Maybe (DateType) , "ValidTo" :: Maybe (DateType) , "Origin" :: Maybe (OriginType) , "ExpirationModel" :: Maybe (ExpirationModelType) , "KeyManager" :: Maybe (KeyManagerType) } -> {"AWSAccountId" :: Maybe (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: Maybe (ArnType) , "CreationDate" :: Maybe (DateType) , "Enabled" :: Maybe (BooleanType) , "Description" :: Maybe (DescriptionType) , "KeyUsage" :: Maybe (KeyUsageType) , "KeyState" :: Maybe (KeyState) , "DeletionDate" :: Maybe (DateType) , "ValidTo" :: Maybe (DateType) , "Origin" :: Maybe (OriginType) , "ExpirationModel" :: Maybe (ExpirationModelType) , "KeyManager" :: Maybe (KeyManagerType) } ) -> KeyMetadata
newKeyMetadata' _KeyId customize = (KeyMetadata <<< customize) { "KeyId": _KeyId, "AWSAccountId": Nothing, "Arn": Nothing, "CreationDate": Nothing, "DeletionDate": Nothing, "Description": Nothing, "Enabled": Nothing, "ExpirationModel": Nothing, "KeyManager": Nothing, "KeyState": Nothing, "KeyUsage": Nothing, "Origin": Nothing, "ValidTo": Nothing }



newtype KeyState = KeyState String
derive instance newtypeKeyState :: Newtype KeyState _
derive instance repGenericKeyState :: Generic KeyState _
instance showKeyState :: Show KeyState where show = genericShow
instance decodeKeyState :: Decode KeyState where decode = genericDecode options
instance encodeKeyState :: Encode KeyState where encode = genericEncode options



-- | <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
newtype KeyUnavailableException = KeyUnavailableException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeKeyUnavailableException :: Newtype KeyUnavailableException _
derive instance repGenericKeyUnavailableException :: Generic KeyUnavailableException _
instance showKeyUnavailableException :: Show KeyUnavailableException where show = genericShow
instance decodeKeyUnavailableException :: Decode KeyUnavailableException where decode = genericDecode options
instance encodeKeyUnavailableException :: Encode KeyUnavailableException where encode = genericEncode options

-- | Constructs KeyUnavailableException from required parameters
newKeyUnavailableException :: KeyUnavailableException
newKeyUnavailableException  = KeyUnavailableException { "message": Nothing }

-- | Constructs KeyUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyUnavailableException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> KeyUnavailableException
newKeyUnavailableException'  customize = (KeyUnavailableException <<< customize) { "message": Nothing }



newtype KeyUsageType = KeyUsageType String
derive instance newtypeKeyUsageType :: Newtype KeyUsageType _
derive instance repGenericKeyUsageType :: Generic KeyUsageType _
instance showKeyUsageType :: Show KeyUsageType where show = genericShow
instance decodeKeyUsageType :: Decode KeyUsageType where decode = genericDecode options
instance encodeKeyUsageType :: Encode KeyUsageType where encode = genericEncode options



-- | <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing }



newtype LimitType = LimitType Int
derive instance newtypeLimitType :: Newtype LimitType _
derive instance repGenericLimitType :: Generic LimitType _
instance showLimitType :: Show LimitType where show = genericShow
instance decodeLimitType :: Decode LimitType where decode = genericDecode options
instance encodeLimitType :: Encode LimitType where encode = genericEncode options



newtype ListAliasesRequest = ListAliasesRequest 
  { "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  }
derive instance newtypeListAliasesRequest :: Newtype ListAliasesRequest _
derive instance repGenericListAliasesRequest :: Generic ListAliasesRequest _
instance showListAliasesRequest :: Show ListAliasesRequest where show = genericShow
instance decodeListAliasesRequest :: Decode ListAliasesRequest where decode = genericDecode options
instance encodeListAliasesRequest :: Encode ListAliasesRequest where encode = genericEncode options

-- | Constructs ListAliasesRequest from required parameters
newListAliasesRequest :: ListAliasesRequest
newListAliasesRequest  = ListAliasesRequest { "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesRequest' :: ( { "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } -> {"Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } ) -> ListAliasesRequest
newListAliasesRequest'  customize = (ListAliasesRequest <<< customize) { "Limit": Nothing, "Marker": Nothing }



newtype ListAliasesResponse = ListAliasesResponse 
  { "Aliases" :: Maybe (AliasList)
  , "NextMarker" :: Maybe (MarkerType)
  , "Truncated" :: Maybe (BooleanType)
  }
derive instance newtypeListAliasesResponse :: Newtype ListAliasesResponse _
derive instance repGenericListAliasesResponse :: Generic ListAliasesResponse _
instance showListAliasesResponse :: Show ListAliasesResponse where show = genericShow
instance decodeListAliasesResponse :: Decode ListAliasesResponse where decode = genericDecode options
instance encodeListAliasesResponse :: Encode ListAliasesResponse where encode = genericEncode options

-- | Constructs ListAliasesResponse from required parameters
newListAliasesResponse :: ListAliasesResponse
newListAliasesResponse  = ListAliasesResponse { "Aliases": Nothing, "NextMarker": Nothing, "Truncated": Nothing }

-- | Constructs ListAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesResponse' :: ( { "Aliases" :: Maybe (AliasList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } -> {"Aliases" :: Maybe (AliasList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } ) -> ListAliasesResponse
newListAliasesResponse'  customize = (ListAliasesResponse <<< customize) { "Aliases": Nothing, "NextMarker": Nothing, "Truncated": Nothing }



newtype ListGrantsRequest = ListGrantsRequest 
  { "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  , "KeyId" :: (KeyIdType)
  }
derive instance newtypeListGrantsRequest :: Newtype ListGrantsRequest _
derive instance repGenericListGrantsRequest :: Generic ListGrantsRequest _
instance showListGrantsRequest :: Show ListGrantsRequest where show = genericShow
instance decodeListGrantsRequest :: Decode ListGrantsRequest where decode = genericDecode options
instance encodeListGrantsRequest :: Encode ListGrantsRequest where encode = genericEncode options

-- | Constructs ListGrantsRequest from required parameters
newListGrantsRequest :: KeyIdType -> ListGrantsRequest
newListGrantsRequest _KeyId = ListGrantsRequest { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsRequest' :: KeyIdType -> ( { "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) , "KeyId" :: (KeyIdType) } -> {"Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) , "KeyId" :: (KeyIdType) } ) -> ListGrantsRequest
newListGrantsRequest' _KeyId customize = (ListGrantsRequest <<< customize) { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }



newtype ListGrantsResponse = ListGrantsResponse 
  { "Grants" :: Maybe (GrantList)
  , "NextMarker" :: Maybe (MarkerType)
  , "Truncated" :: Maybe (BooleanType)
  }
derive instance newtypeListGrantsResponse :: Newtype ListGrantsResponse _
derive instance repGenericListGrantsResponse :: Generic ListGrantsResponse _
instance showListGrantsResponse :: Show ListGrantsResponse where show = genericShow
instance decodeListGrantsResponse :: Decode ListGrantsResponse where decode = genericDecode options
instance encodeListGrantsResponse :: Encode ListGrantsResponse where encode = genericEncode options

-- | Constructs ListGrantsResponse from required parameters
newListGrantsResponse :: ListGrantsResponse
newListGrantsResponse  = ListGrantsResponse { "Grants": Nothing, "NextMarker": Nothing, "Truncated": Nothing }

-- | Constructs ListGrantsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsResponse' :: ( { "Grants" :: Maybe (GrantList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } -> {"Grants" :: Maybe (GrantList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } ) -> ListGrantsResponse
newListGrantsResponse'  customize = (ListGrantsResponse <<< customize) { "Grants": Nothing, "NextMarker": Nothing, "Truncated": Nothing }



newtype ListKeyPoliciesRequest = ListKeyPoliciesRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  }
derive instance newtypeListKeyPoliciesRequest :: Newtype ListKeyPoliciesRequest _
derive instance repGenericListKeyPoliciesRequest :: Generic ListKeyPoliciesRequest _
instance showListKeyPoliciesRequest :: Show ListKeyPoliciesRequest where show = genericShow
instance decodeListKeyPoliciesRequest :: Decode ListKeyPoliciesRequest where decode = genericDecode options
instance encodeListKeyPoliciesRequest :: Encode ListKeyPoliciesRequest where encode = genericEncode options

-- | Constructs ListKeyPoliciesRequest from required parameters
newListKeyPoliciesRequest :: KeyIdType -> ListKeyPoliciesRequest
newListKeyPoliciesRequest _KeyId = ListKeyPoliciesRequest { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListKeyPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } ) -> ListKeyPoliciesRequest
newListKeyPoliciesRequest' _KeyId customize = (ListKeyPoliciesRequest <<< customize) { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }



newtype ListKeyPoliciesResponse = ListKeyPoliciesResponse 
  { "PolicyNames" :: Maybe (PolicyNameList)
  , "NextMarker" :: Maybe (MarkerType)
  , "Truncated" :: Maybe (BooleanType)
  }
derive instance newtypeListKeyPoliciesResponse :: Newtype ListKeyPoliciesResponse _
derive instance repGenericListKeyPoliciesResponse :: Generic ListKeyPoliciesResponse _
instance showListKeyPoliciesResponse :: Show ListKeyPoliciesResponse where show = genericShow
instance decodeListKeyPoliciesResponse :: Decode ListKeyPoliciesResponse where decode = genericDecode options
instance encodeListKeyPoliciesResponse :: Encode ListKeyPoliciesResponse where encode = genericEncode options

-- | Constructs ListKeyPoliciesResponse from required parameters
newListKeyPoliciesResponse :: ListKeyPoliciesResponse
newListKeyPoliciesResponse  = ListKeyPoliciesResponse { "NextMarker": Nothing, "PolicyNames": Nothing, "Truncated": Nothing }

-- | Constructs ListKeyPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesResponse' :: ( { "PolicyNames" :: Maybe (PolicyNameList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } -> {"PolicyNames" :: Maybe (PolicyNameList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } ) -> ListKeyPoliciesResponse
newListKeyPoliciesResponse'  customize = (ListKeyPoliciesResponse <<< customize) { "NextMarker": Nothing, "PolicyNames": Nothing, "Truncated": Nothing }



newtype ListKeysRequest = ListKeysRequest 
  { "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  }
derive instance newtypeListKeysRequest :: Newtype ListKeysRequest _
derive instance repGenericListKeysRequest :: Generic ListKeysRequest _
instance showListKeysRequest :: Show ListKeysRequest where show = genericShow
instance decodeListKeysRequest :: Decode ListKeysRequest where decode = genericDecode options
instance encodeListKeysRequest :: Encode ListKeysRequest where encode = genericEncode options

-- | Constructs ListKeysRequest from required parameters
newListKeysRequest :: ListKeysRequest
newListKeysRequest  = ListKeysRequest { "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysRequest' :: ( { "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } -> {"Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } ) -> ListKeysRequest
newListKeysRequest'  customize = (ListKeysRequest <<< customize) { "Limit": Nothing, "Marker": Nothing }



newtype ListKeysResponse = ListKeysResponse 
  { "Keys" :: Maybe (KeyList)
  , "NextMarker" :: Maybe (MarkerType)
  , "Truncated" :: Maybe (BooleanType)
  }
derive instance newtypeListKeysResponse :: Newtype ListKeysResponse _
derive instance repGenericListKeysResponse :: Generic ListKeysResponse _
instance showListKeysResponse :: Show ListKeysResponse where show = genericShow
instance decodeListKeysResponse :: Decode ListKeysResponse where decode = genericDecode options
instance encodeListKeysResponse :: Encode ListKeysResponse where encode = genericEncode options

-- | Constructs ListKeysResponse from required parameters
newListKeysResponse :: ListKeysResponse
newListKeysResponse  = ListKeysResponse { "Keys": Nothing, "NextMarker": Nothing, "Truncated": Nothing }

-- | Constructs ListKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysResponse' :: ( { "Keys" :: Maybe (KeyList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } -> {"Keys" :: Maybe (KeyList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } ) -> ListKeysResponse
newListKeysResponse'  customize = (ListKeysResponse <<< customize) { "Keys": Nothing, "NextMarker": Nothing, "Truncated": Nothing }



newtype ListResourceTagsRequest = ListResourceTagsRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  }
derive instance newtypeListResourceTagsRequest :: Newtype ListResourceTagsRequest _
derive instance repGenericListResourceTagsRequest :: Generic ListResourceTagsRequest _
instance showListResourceTagsRequest :: Show ListResourceTagsRequest where show = genericShow
instance decodeListResourceTagsRequest :: Decode ListResourceTagsRequest where decode = genericDecode options
instance encodeListResourceTagsRequest :: Encode ListResourceTagsRequest where encode = genericEncode options

-- | Constructs ListResourceTagsRequest from required parameters
newListResourceTagsRequest :: KeyIdType -> ListResourceTagsRequest
newListResourceTagsRequest _KeyId = ListResourceTagsRequest { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListResourceTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) } ) -> ListResourceTagsRequest
newListResourceTagsRequest' _KeyId customize = (ListResourceTagsRequest <<< customize) { "KeyId": _KeyId, "Limit": Nothing, "Marker": Nothing }



newtype ListResourceTagsResponse = ListResourceTagsResponse 
  { "Tags" :: Maybe (TagList)
  , "NextMarker" :: Maybe (MarkerType)
  , "Truncated" :: Maybe (BooleanType)
  }
derive instance newtypeListResourceTagsResponse :: Newtype ListResourceTagsResponse _
derive instance repGenericListResourceTagsResponse :: Generic ListResourceTagsResponse _
instance showListResourceTagsResponse :: Show ListResourceTagsResponse where show = genericShow
instance decodeListResourceTagsResponse :: Decode ListResourceTagsResponse where decode = genericDecode options
instance encodeListResourceTagsResponse :: Encode ListResourceTagsResponse where encode = genericEncode options

-- | Constructs ListResourceTagsResponse from required parameters
newListResourceTagsResponse :: ListResourceTagsResponse
newListResourceTagsResponse  = ListResourceTagsResponse { "NextMarker": Nothing, "Tags": Nothing, "Truncated": Nothing }

-- | Constructs ListResourceTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsResponse' :: ( { "Tags" :: Maybe (TagList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } -> {"Tags" :: Maybe (TagList) , "NextMarker" :: Maybe (MarkerType) , "Truncated" :: Maybe (BooleanType) } ) -> ListResourceTagsResponse
newListResourceTagsResponse'  customize = (ListResourceTagsResponse <<< customize) { "NextMarker": Nothing, "Tags": Nothing, "Truncated": Nothing }



newtype ListRetirableGrantsRequest = ListRetirableGrantsRequest 
  { "Limit" :: Maybe (LimitType)
  , "Marker" :: Maybe (MarkerType)
  , "RetiringPrincipal" :: (PrincipalIdType)
  }
derive instance newtypeListRetirableGrantsRequest :: Newtype ListRetirableGrantsRequest _
derive instance repGenericListRetirableGrantsRequest :: Generic ListRetirableGrantsRequest _
instance showListRetirableGrantsRequest :: Show ListRetirableGrantsRequest where show = genericShow
instance decodeListRetirableGrantsRequest :: Decode ListRetirableGrantsRequest where decode = genericDecode options
instance encodeListRetirableGrantsRequest :: Encode ListRetirableGrantsRequest where encode = genericEncode options

-- | Constructs ListRetirableGrantsRequest from required parameters
newListRetirableGrantsRequest :: PrincipalIdType -> ListRetirableGrantsRequest
newListRetirableGrantsRequest _RetiringPrincipal = ListRetirableGrantsRequest { "RetiringPrincipal": _RetiringPrincipal, "Limit": Nothing, "Marker": Nothing }

-- | Constructs ListRetirableGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRetirableGrantsRequest' :: PrincipalIdType -> ( { "Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } -> {"Limit" :: Maybe (LimitType) , "Marker" :: Maybe (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } ) -> ListRetirableGrantsRequest
newListRetirableGrantsRequest' _RetiringPrincipal customize = (ListRetirableGrantsRequest <<< customize) { "RetiringPrincipal": _RetiringPrincipal, "Limit": Nothing, "Marker": Nothing }



-- | <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where decode = genericDecode options
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where encode = genericEncode options

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": Nothing }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": Nothing }



newtype MarkerType = MarkerType String
derive instance newtypeMarkerType :: Newtype MarkerType _
derive instance repGenericMarkerType :: Generic MarkerType _
instance showMarkerType :: Show MarkerType where show = genericShow
instance decodeMarkerType :: Decode MarkerType where decode = genericDecode options
instance encodeMarkerType :: Encode MarkerType where encode = genericEncode options



-- | <p>The request was rejected because the specified entity or resource could not be found.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": Nothing }



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
  , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType)
  }
derive instance newtypePutKeyPolicyRequest :: Newtype PutKeyPolicyRequest _
derive instance repGenericPutKeyPolicyRequest :: Generic PutKeyPolicyRequest _
instance showPutKeyPolicyRequest :: Show PutKeyPolicyRequest where show = genericShow
instance decodePutKeyPolicyRequest :: Decode PutKeyPolicyRequest where decode = genericDecode options
instance encodePutKeyPolicyRequest :: Encode PutKeyPolicyRequest where encode = genericEncode options

-- | Constructs PutKeyPolicyRequest from required parameters
newPutKeyPolicyRequest :: KeyIdType -> PolicyType -> PolicyNameType -> PutKeyPolicyRequest
newPutKeyPolicyRequest _KeyId _Policy _PolicyName = PutKeyPolicyRequest { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": Nothing }

-- | Constructs PutKeyPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutKeyPolicyRequest' :: KeyIdType -> PolicyType -> PolicyNameType -> ( { "KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType) } -> {"KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: Maybe (BooleanType) } ) -> PutKeyPolicyRequest
newPutKeyPolicyRequest' _KeyId _Policy _PolicyName customize = (PutKeyPolicyRequest <<< customize) { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": Nothing }



newtype ReEncryptRequest = ReEncryptRequest 
  { "CiphertextBlob" :: (CiphertextType)
  , "SourceEncryptionContext" :: Maybe (EncryptionContextType)
  , "DestinationKeyId" :: (KeyIdType)
  , "DestinationEncryptionContext" :: Maybe (EncryptionContextType)
  , "GrantTokens" :: Maybe (GrantTokenList)
  }
derive instance newtypeReEncryptRequest :: Newtype ReEncryptRequest _
derive instance repGenericReEncryptRequest :: Generic ReEncryptRequest _
instance showReEncryptRequest :: Show ReEncryptRequest where show = genericShow
instance decodeReEncryptRequest :: Decode ReEncryptRequest where decode = genericDecode options
instance encodeReEncryptRequest :: Encode ReEncryptRequest where encode = genericEncode options

-- | Constructs ReEncryptRequest from required parameters
newReEncryptRequest :: CiphertextType -> KeyIdType -> ReEncryptRequest
newReEncryptRequest _CiphertextBlob _DestinationKeyId = ReEncryptRequest { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": Nothing, "GrantTokens": Nothing, "SourceEncryptionContext": Nothing }

-- | Constructs ReEncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptRequest' :: CiphertextType -> KeyIdType -> ( { "CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: Maybe (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: Maybe (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: Maybe (EncryptionContextType) , "GrantTokens" :: Maybe (GrantTokenList) } ) -> ReEncryptRequest
newReEncryptRequest' _CiphertextBlob _DestinationKeyId customize = (ReEncryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": Nothing, "GrantTokens": Nothing, "SourceEncryptionContext": Nothing }



newtype ReEncryptResponse = ReEncryptResponse 
  { "CiphertextBlob" :: Maybe (CiphertextType)
  , "SourceKeyId" :: Maybe (KeyIdType)
  , "KeyId" :: Maybe (KeyIdType)
  }
derive instance newtypeReEncryptResponse :: Newtype ReEncryptResponse _
derive instance repGenericReEncryptResponse :: Generic ReEncryptResponse _
instance showReEncryptResponse :: Show ReEncryptResponse where show = genericShow
instance decodeReEncryptResponse :: Decode ReEncryptResponse where decode = genericDecode options
instance encodeReEncryptResponse :: Encode ReEncryptResponse where encode = genericEncode options

-- | Constructs ReEncryptResponse from required parameters
newReEncryptResponse :: ReEncryptResponse
newReEncryptResponse  = ReEncryptResponse { "CiphertextBlob": Nothing, "KeyId": Nothing, "SourceKeyId": Nothing }

-- | Constructs ReEncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptResponse' :: ( { "CiphertextBlob" :: Maybe (CiphertextType) , "SourceKeyId" :: Maybe (KeyIdType) , "KeyId" :: Maybe (KeyIdType) } -> {"CiphertextBlob" :: Maybe (CiphertextType) , "SourceKeyId" :: Maybe (KeyIdType) , "KeyId" :: Maybe (KeyIdType) } ) -> ReEncryptResponse
newReEncryptResponse'  customize = (ReEncryptResponse <<< customize) { "CiphertextBlob": Nothing, "KeyId": Nothing, "SourceKeyId": Nothing }



newtype RetireGrantRequest = RetireGrantRequest 
  { "GrantToken" :: Maybe (GrantTokenType)
  , "KeyId" :: Maybe (KeyIdType)
  , "GrantId" :: Maybe (GrantIdType)
  }
derive instance newtypeRetireGrantRequest :: Newtype RetireGrantRequest _
derive instance repGenericRetireGrantRequest :: Generic RetireGrantRequest _
instance showRetireGrantRequest :: Show RetireGrantRequest where show = genericShow
instance decodeRetireGrantRequest :: Decode RetireGrantRequest where decode = genericDecode options
instance encodeRetireGrantRequest :: Encode RetireGrantRequest where encode = genericEncode options

-- | Constructs RetireGrantRequest from required parameters
newRetireGrantRequest :: RetireGrantRequest
newRetireGrantRequest  = RetireGrantRequest { "GrantId": Nothing, "GrantToken": Nothing, "KeyId": Nothing }

-- | Constructs RetireGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetireGrantRequest' :: ( { "GrantToken" :: Maybe (GrantTokenType) , "KeyId" :: Maybe (KeyIdType) , "GrantId" :: Maybe (GrantIdType) } -> {"GrantToken" :: Maybe (GrantTokenType) , "KeyId" :: Maybe (KeyIdType) , "GrantId" :: Maybe (GrantIdType) } ) -> RetireGrantRequest
newRetireGrantRequest'  customize = (RetireGrantRequest <<< customize) { "GrantId": Nothing, "GrantToken": Nothing, "KeyId": Nothing }



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
  , "PendingWindowInDays" :: Maybe (PendingWindowInDaysType)
  }
derive instance newtypeScheduleKeyDeletionRequest :: Newtype ScheduleKeyDeletionRequest _
derive instance repGenericScheduleKeyDeletionRequest :: Generic ScheduleKeyDeletionRequest _
instance showScheduleKeyDeletionRequest :: Show ScheduleKeyDeletionRequest where show = genericShow
instance decodeScheduleKeyDeletionRequest :: Decode ScheduleKeyDeletionRequest where decode = genericDecode options
instance encodeScheduleKeyDeletionRequest :: Encode ScheduleKeyDeletionRequest where encode = genericEncode options

-- | Constructs ScheduleKeyDeletionRequest from required parameters
newScheduleKeyDeletionRequest :: KeyIdType -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest _KeyId = ScheduleKeyDeletionRequest { "KeyId": _KeyId, "PendingWindowInDays": Nothing }

-- | Constructs ScheduleKeyDeletionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "PendingWindowInDays" :: Maybe (PendingWindowInDaysType) } -> {"KeyId" :: (KeyIdType) , "PendingWindowInDays" :: Maybe (PendingWindowInDaysType) } ) -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest' _KeyId customize = (ScheduleKeyDeletionRequest <<< customize) { "KeyId": _KeyId, "PendingWindowInDays": Nothing }



newtype ScheduleKeyDeletionResponse = ScheduleKeyDeletionResponse 
  { "KeyId" :: Maybe (KeyIdType)
  , "DeletionDate" :: Maybe (DateType)
  }
derive instance newtypeScheduleKeyDeletionResponse :: Newtype ScheduleKeyDeletionResponse _
derive instance repGenericScheduleKeyDeletionResponse :: Generic ScheduleKeyDeletionResponse _
instance showScheduleKeyDeletionResponse :: Show ScheduleKeyDeletionResponse where show = genericShow
instance decodeScheduleKeyDeletionResponse :: Decode ScheduleKeyDeletionResponse where decode = genericDecode options
instance encodeScheduleKeyDeletionResponse :: Encode ScheduleKeyDeletionResponse where encode = genericEncode options

-- | Constructs ScheduleKeyDeletionResponse from required parameters
newScheduleKeyDeletionResponse :: ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse  = ScheduleKeyDeletionResponse { "DeletionDate": Nothing, "KeyId": Nothing }

-- | Constructs ScheduleKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionResponse' :: ( { "KeyId" :: Maybe (KeyIdType) , "DeletionDate" :: Maybe (DateType) } -> {"KeyId" :: Maybe (KeyIdType) , "DeletionDate" :: Maybe (DateType) } ) -> ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse'  customize = (ScheduleKeyDeletionResponse <<< customize) { "DeletionDate": Nothing, "KeyId": Nothing }



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
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeTagException :: Newtype TagException _
derive instance repGenericTagException :: Generic TagException _
instance showTagException :: Show TagException where show = genericShow
instance decodeTagException :: Decode TagException where decode = genericDecode options
instance encodeTagException :: Encode TagException where encode = genericEncode options

-- | Constructs TagException from required parameters
newTagException :: TagException
newTagException  = TagException { "message": Nothing }

-- | Constructs TagException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> TagException
newTagException'  customize = (TagException <<< customize) { "message": Nothing }



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
  { "message" :: Maybe (ErrorMessageType)
  }
derive instance newtypeUnsupportedOperationException :: Newtype UnsupportedOperationException _
derive instance repGenericUnsupportedOperationException :: Generic UnsupportedOperationException _
instance showUnsupportedOperationException :: Show UnsupportedOperationException where show = genericShow
instance decodeUnsupportedOperationException :: Decode UnsupportedOperationException where decode = genericDecode options
instance encodeUnsupportedOperationException :: Encode UnsupportedOperationException where encode = genericEncode options

-- | Constructs UnsupportedOperationException from required parameters
newUnsupportedOperationException :: UnsupportedOperationException
newUnsupportedOperationException  = UnsupportedOperationException { "message": Nothing }

-- | Constructs UnsupportedOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedOperationException' :: ( { "message" :: Maybe (ErrorMessageType) } -> {"message" :: Maybe (ErrorMessageType) } ) -> UnsupportedOperationException
newUnsupportedOperationException'  customize = (UnsupportedOperationException <<< customize) { "message": Nothing }



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

