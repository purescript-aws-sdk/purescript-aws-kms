
module AWS.KMS.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.KMS as KMS
import AWS.KMS.Types as KMSTypes


-- | <p>Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the <code>Disabled</code> state. To enable a CMK, use <a>EnableKey</a>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about scheduling and canceling deletion of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
cancelKeyDeletion :: forall eff. KMS.Service -> KMSTypes.CancelKeyDeletionRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.CancelKeyDeletionResponse
cancelKeyDeletion (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelKeyDeletion"


-- | <p>Creates a display name for a customer master key (CMK). You can use an alias to identify a CMK in selected operations, such as <a>Encrypt</a> and <a>GenerateDataKey</a>. </p> <p>Each CMK can have multiple aliases, but each alias points to only one CMK. The alias name must be unique in the AWS account and region. To simplify code that runs in multiple regions, use the same alias name, but point it to a different CMK in each region. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation.</p> <p>An alias must start with the word <code>alias</code> followed by a forward slash (<code>alias/</code>). The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with <code>aws</code>; that alias name prefix is reserved by Amazon Web Services (AWS).</p> <p>The alias and the CMK it is mapped to must be in the same AWS account and the same region. You cannot perform this operation on an alias in a different AWS account.</p> <p>To map an existing alias to a different CMK, call <a>UpdateAlias</a>.</p>
createAlias :: forall eff. KMS.Service -> KMSTypes.CreateAliasRequest -> Aff (exception :: EXCEPTION | eff) Unit
createAlias (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAlias"


-- | <p>Adds a grant to a customer master key (CMK). The grant specifies who can use the CMK and under what conditions. When setting permissions, grants are an alternative to key policies. </p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter. For more information about grants, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
createGrant :: forall eff. KMS.Service -> KMSTypes.CreateGrantRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.CreateGrantResponse
createGrant (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createGrant"


-- | <p>Creates a customer master key (CMK) in the caller's AWS account.</p> <p>You can use a CMK to encrypt small amounts of data (4 KiB or less) directly, but CMKs are more commonly used to encrypt data encryption keys (DEKs), which are used to encrypt raw data. For more information about DEKs and the difference between CMKs and DEKs, see the following:</p> <ul> <li> <p>The <a>GenerateDataKey</a> operation</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS Key Management Service Concepts</a> in the <i>AWS Key Management Service Developer Guide</i> </p> </li> </ul> <p>You cannot use this operation to create a CMK in a different AWS account.</p>
createKey :: forall eff. KMS.Service -> KMSTypes.CreateKeyRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.CreateKeyResponse
createKey (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createKey"


-- | <p>Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following operations:</p> <ul> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> <li> <p> <a>Encrypt</a> </p> </li> </ul> <p>Note that if a caller has been granted access permissions to all keys (through, for example, IAM user policies that grant <code>Decrypt</code> permission on all resources), then ciphertext encrypted by using keys in other accounts where the key grants access to the caller can be decrypted. To remedy this, we recommend that you do not grant <code>Decrypt</code> access in an IAM user policy. Instead grant <code>Decrypt</code> access only in key policies. If you must grant <code>Decrypt</code> access in an IAM user policy, you should scope the resource to specific keys or to specific trusted accounts.</p>
decrypt :: forall eff. KMS.Service -> KMSTypes.DecryptRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.DecryptResponse
decrypt (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "decrypt"


-- | <p>Deletes the specified alias. You cannot perform this operation on an alias in a different AWS account. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation. </p> <p>Each CMK can have multiple aliases. To change the alias of a CMK, use <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to create a new alias. To associate an existing alias with a different customer master key (CMK), call <a>UpdateAlias</a>.</p>
deleteAlias :: forall eff. KMS.Service -> KMSTypes.DeleteAliasRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteAlias (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteAlias"


-- | <p>Deletes key material that you previously imported. This operation makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>When the specified CMK is in the <code>PendingDeletion</code> state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to <code>PendingImport</code>.</p> <p>After you delete key material, you can use <a>ImportKeyMaterial</a> to reimport the same key material into the CMK.</p>
deleteImportedKeyMaterial :: forall eff. KMS.Service -> KMSTypes.DeleteImportedKeyMaterialRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteImportedKeyMaterial (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteImportedKeyMaterial"


-- | <p>Provides detailed information about the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p>
describeKey :: forall eff. KMS.Service -> KMSTypes.DescribeKeyRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.DescribeKeyResponse
describeKey (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeKey"


-- | <p>Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
disableKey :: forall eff. KMS.Service -> KMSTypes.DisableKeyRequest -> Aff (exception :: EXCEPTION | eff) Unit
disableKey (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableKey"


-- | <p>Disables automatic rotation of the key material for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
disableKeyRotation :: forall eff. KMS.Service -> KMSTypes.DisableKeyRotationRequest -> Aff (exception :: EXCEPTION | eff) Unit
disableKeyRotation (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableKeyRotation"


-- | <p>Sets the state of a customer master key (CMK) to enabled, thereby permitting its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p>
enableKey :: forall eff. KMS.Service -> KMSTypes.EnableKeyRequest -> Aff (exception :: EXCEPTION | eff) Unit
enableKey (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableKey"


-- | <p>Enables automatic rotation of the key material for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
enableKeyRotation :: forall eff. KMS.Service -> KMSTypes.EnableKeyRotationRequest -> Aff (exception :: EXCEPTION | eff) Unit
enableKeyRotation (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableKeyRotation"


-- | <p>Encrypts plaintext into ciphertext by using a customer master key (CMK). The <code>Encrypt</code> operation has two primary use cases:</p> <ul> <li> <p>You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such as an RSA key, a database password, or other sensitive information.</p> </li> <li> <p>To move encrypted data from one AWS region to another, you can use this operation to encrypt in the new region the plaintext data key that was used to encrypt the data in the original region. This provides you with an encrypted copy of the data key that can be decrypted in the new region and used there to decrypt the encrypted data.</p> </li> </ul> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>Unless you are moving encrypted data from one region to another, you don't use this operation to encrypt a generated data key within a region. To get data keys that are already encrypted, call the <a>GenerateDataKey</a> or <a>GenerateDataKeyWithoutPlaintext</a> operation. Data keys don't need to be encrypted again by calling <code>Encrypt</code>.</p> <p>To encrypt data locally in your application, use the <a>GenerateDataKey</a> operation to return a plaintext data encryption key and a copy of the key encrypted under the CMK of your choosing.</p>
encrypt :: forall eff. KMS.Service -> KMSTypes.EncryptRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.EncryptResponse
encrypt (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "encrypt"


-- | <p>Returns a data encryption key that you can use in your application to encrypt data locally. </p> <p>You must specify the customer master key (CMK) under which to generate the data key. You must also specify the length of the data key using either the <code>KeySpec</code> or <code>NumberOfBytes</code> field. You must specify one field or the other, but not both. For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use <code>KeySpec</code>. To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>This operation returns a plaintext copy of the data key in the <code>Plaintext</code> field of the response, and an encrypted copy of the data key in the <code>CiphertextBlob</code> field. The data key is encrypted under the CMK specified in the <code>KeyId</code> field of the request. </p> <p>We recommend that you use the following pattern to encrypt data locally in your application:</p> <ol> <li> <p>Use this operation (<code>GenerateDataKey</code>) to get a data encryption key.</p> </li> <li> <p>Use the plaintext data encryption key (returned in the <code>Plaintext</code> field of the response) to encrypt data locally, then erase the plaintext data key from memory.</p> </li> <li> <p>Store the encrypted data key (returned in the <code>CiphertextBlob</code> field of the response) alongside the locally encrypted data.</p> </li> </ol> <p>To decrypt data locally:</p> <ol> <li> <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key into a plaintext copy of the data key.</p> </li> <li> <p>Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.</p> </li> </ol> <p>To return only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To return a random byte string that is cryptographically secure, use <a>GenerateRandom</a>.</p> <p>If you use the optional <code>EncryptionContext</code> field, you must store at least enough information to be able to reconstruct the full encryption context when you later send the ciphertext to the <a>Decrypt</a> operation. It is a good practice to choose an encryption context that you can reconstruct on the fly to better secure the ciphertext. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
generateDataKey :: forall eff. KMS.Service -> KMSTypes.GenerateDataKeyRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GenerateDataKeyResponse
generateDataKey (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "generateDataKey"


-- | <p>Returns a data encryption key encrypted under a customer master key (CMK). This operation is identical to <a>GenerateDataKey</a> but returns only the encrypted copy of the data key. </p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>This operation is useful in a system that has multiple components with different degrees of trust. For example, consider a system that stores encrypted data in containers. Each container stores the encrypted data and an encrypted copy of the data key. One component of the system, called the <i>control plane</i>, creates new containers. When it creates a new container, it uses this operation (<code>GenerateDataKeyWithoutPlaintext</code>) to get an encrypted data key and then stores it in the container. Later, a different component of the system, called the <i>data plane</i>, puts encrypted data into the containers. To do this, it passes the encrypted data key to the <a>Decrypt</a> operation, then uses the returned plaintext data key to encrypt data, and finally stores the encrypted data in the container. In this system, the control plane never sees the plaintext data key.</p>
generateDataKeyWithoutPlaintext :: forall eff. KMS.Service -> KMSTypes.GenerateDataKeyWithoutPlaintextRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GenerateDataKeyWithoutPlaintextResponse
generateDataKeyWithoutPlaintext (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "generateDataKeyWithoutPlaintext"


-- | <p>Returns a random byte string that is cryptographically secure.</p> <p>For more information about entropy and random number generation, see the <a href="https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf">AWS Key Management Service Cryptographic Details</a> whitepaper.</p>
generateRandom :: forall eff. KMS.Service -> KMSTypes.GenerateRandomRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GenerateRandomResponse
generateRandom (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "generateRandom"


-- | <p>Gets a key policy attached to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
getKeyPolicy :: forall eff. KMS.Service -> KMSTypes.GetKeyPolicyRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GetKeyPolicyResponse
getKeyPolicy (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getKeyPolicy"


-- | <p>Gets a Boolean value that indicates whether automatic rotation of the key material is enabled for the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
getKeyRotationStatus :: forall eff. KMS.Service -> KMSTypes.GetKeyRotationStatusRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GetKeyRotationStatusResponse
getKeyRotationStatus (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getKeyRotationStatus"


-- | <p>Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's <code>Origin</code> must be <code>EXTERNAL</code>. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material. You cannot perform this operation on a CMK in a different AWS account.</p> <p>This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent <a>ImportKeyMaterial</a> request. The public key and import token from the same response must be used together. These items are valid for 24 hours. When they expire, they cannot be used for a subsequent <a>ImportKeyMaterial</a> request. To get new ones, send another <code>GetParametersForImport</code> request.</p>
getParametersForImport :: forall eff. KMS.Service -> KMSTypes.GetParametersForImportRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.GetParametersForImportResponse
getParametersForImport (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getParametersForImport"


-- | <p>Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material. You cannot perform this operation on a CMK in a different AWS account. For more information about creating CMKs with no key material and then importing key material, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Before using this operation, call <a>GetParametersForImport</a>. Its response includes a public key and an import token. Use the public key to encrypt the key material. Then, submit the import token from the same <code>GetParametersForImport</code> response.</p> <p>When calling this operation, you must specify the following values:</p> <ul> <li> <p>The key ID or key ARN of a CMK with no key material. Its <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>To create a CMK with no key material, call <a>CreateKey</a> and set the value of its <code>Origin</code> parameter to <code>EXTERNAL</code>. To get the <code>Origin</code> of a CMK, call <a>DescribeKey</a>.)</p> </li> <li> <p>The encrypted key material. To get the public key to encrypt the key material, call <a>GetParametersForImport</a>.</p> </li> <li> <p>The import token that <a>GetParametersForImport</a> returned. This token and the public key used to encrypt the key material must have come from the same response.</p> </li> <li> <p>Whether the key material expires and if so, when. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date. If the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you must reimport the same key material.</p> </li> </ul> <p>When this operation is successful, the CMK's key state changes from <code>PendingImport</code> to <code>Enabled</code>, and you can use the CMK. After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.</p>
importKeyMaterial :: forall eff. KMS.Service -> KMSTypes.ImportKeyMaterialRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ImportKeyMaterialResponse
importKeyMaterial (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "importKeyMaterial"


-- | <p>Gets a list of all aliases in the caller's AWS account and region. You cannot list aliases in other accounts. For more information about aliases, see <a>CreateAlias</a>.</p> <p>The response might include several aliases that do not have a <code>TargetKeyId</code> field because they are not associated with a CMK. These are predefined aliases that are reserved for CMKs managed by AWS services. If an alias is not associated with a CMK, the alias does not count against the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit">alias limit</a> for your account.</p>
listAliases :: forall eff. KMS.Service -> KMSTypes.ListAliasesRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListAliasesResponse
listAliases (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAliases"


-- | <p>Gets a list of all grants for the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
listGrants :: forall eff. KMS.Service -> KMSTypes.ListGrantsRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListGrantsResponse
listGrants (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGrants"


-- | <p>Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a <a>GetKeyPolicy</a> operation. However, the only valid policy name is <code>default</code>. You cannot perform this operation on a CMK in a different AWS account.</p>
listKeyPolicies :: forall eff. KMS.Service -> KMSTypes.ListKeyPoliciesRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListKeyPoliciesResponse
listKeyPolicies (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listKeyPolicies"


-- | <p>Gets a list of all customer master keys (CMKs) in the caller's AWS account and region.</p>
listKeys :: forall eff. KMS.Service -> KMSTypes.ListKeysRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListKeysResponse
listKeys (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listKeys"


-- | <p>Returns a list of all tags for the specified customer master key (CMK).</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p>
listResourceTags :: forall eff. KMS.Service -> KMSTypes.ListResourceTagsRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListResourceTagsResponse
listResourceTags (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listResourceTags"


-- | <p>Returns a list of all grants for which the grant's <code>RetiringPrincipal</code> matches the one specified.</p> <p>A typical use is to list all grants that you are able to retire. To retire a grant, use <a>RetireGrant</a>.</p>
listRetirableGrants :: forall eff. KMS.Service -> KMSTypes.ListRetirableGrantsRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ListGrantsResponse
listRetirableGrants (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRetirableGrants"


-- | <p>Attaches a key policy to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about key policies, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
putKeyPolicy :: forall eff. KMS.Service -> KMSTypes.PutKeyPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
putKeyPolicy (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putKeyPolicy"


-- | <p>Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext. </p> <p>You can reencrypt data using CMKs in different AWS accounts.</p> <p>Unlike other operations, <code>ReEncrypt</code> is authorized twice, once as <code>ReEncryptFrom</code> on the source CMK and once as <code>ReEncryptTo</code> on the destination CMK. We recommend that you include the <code>"kms:ReEncrypt*"</code> permission in your <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policies</a> to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console, but you must include it manually when you create a CMK programmatically or when you set a key policy with the <a>PutKeyPolicy</a> operation.</p>
reEncrypt :: forall eff. KMS.Service -> KMSTypes.ReEncryptRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ReEncryptResponse
reEncrypt (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "reEncrypt"


-- | <p>Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:</p> <ul> <li> <p>The AWS account (root user) under which the grant was created</p> </li> <li> <p>The <code>RetiringPrincipal</code>, if present in the grant</p> </li> <li> <p>The <code>GranteePrincipal</code>, if <code>RetireGrant</code> is an operation specified in the grant</p> </li> </ul> <p>You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The <a>CreateGrant</a> operation returns both.</p>
retireGrant :: forall eff. KMS.Service -> KMSTypes.RetireGrantRequest -> Aff (exception :: EXCEPTION | eff) Unit
retireGrant (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "retireGrant"


-- | <p>Revokes the specified grant for the specified customer master key (CMK). You can revoke a grant to actively deny operations that depend on it.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
revokeGrant :: forall eff. KMS.Service -> KMSTypes.RevokeGrantRequest -> Aff (exception :: EXCEPTION | eff) Unit
revokeGrant (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "revokeGrant"


-- | <p>Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the state of the CMK changes to <code>PendingDeletion</code>. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p> <important> <p>Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is rendered unrecoverable. To restrict the use of a CMK without deleting it, use <a>DisableKey</a>.</p> </important> <p>For more information about scheduling a CMK for deletion, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
scheduleKeyDeletion :: forall eff. KMS.Service -> KMSTypes.ScheduleKeyDeletionRequest -> Aff (exception :: EXCEPTION | eff) KMSTypes.ScheduleKeyDeletionResponse
scheduleKeyDeletion (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "scheduleKeyDeletion"


-- | <p>Adds or overwrites one or more tags for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>You cannot use the same tag key more than once per CMK. For example, consider a CMK with one tag whose tag key is <code>Purpose</code> and tag value is <code>Test</code>. If you send a <code>TagResource</code> request for this CMK with a tag key of <code>Purpose</code> and a tag value of <code>Prod</code>, it does not create a second tag. Instead, the original tag is overwritten with the new tag value.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
tagResource :: forall eff. KMS.Service -> KMSTypes.TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
tagResource (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagResource"


-- | <p>Removes the specified tag or tags from the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>To remove a tag, you specify the tag key for each tag to remove. You do not specify the tag value. To overwrite the tag value for an existing tag, use <a>TagResource</a>.</p>
untagResource :: forall eff. KMS.Service -> KMSTypes.UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Unit
untagResource (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagResource"


-- | <p>Associates an existing alias with a different customer master key (CMK). Each CMK can have multiple aliases, but the aliases must be unique within the account and region. You cannot perform this operation on an alias in a different AWS account.</p> <p>This operation works only on existing aliases. To change the alias of a CMK to a new value, use <a>CreateAlias</a> to create a new alias and <a>DeleteAlias</a> to delete the old alias.</p> <p>Because an alias is not a property of a CMK, you can create, update, and delete the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs in the account, use the <a>ListAliases</a> operation. </p> <p>An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word <code>alias</code> followed by a forward slash (<code>alias/</code>). The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with <code>aws</code>; that alias name prefix is reserved by Amazon Web Services (AWS).</p>
updateAlias :: forall eff. KMS.Service -> KMSTypes.UpdateAliasRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateAlias (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateAlias"


-- | <p>Updates the description of a customer master key (CMK). To see the decription of a CMK, use <a>DescribeKey</a>. </p> <p>You cannot perform this operation on a CMK in a different AWS account.</p>
updateKeyDescription :: forall eff. KMS.Service -> KMSTypes.UpdateKeyDescriptionRequest -> Aff (exception :: EXCEPTION | eff) Unit
updateKeyDescription (KMS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateKeyDescription"
