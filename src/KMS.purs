

-- | <fullname>AWS Key Management Service</fullname> <p>AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes the AWS KMS operations that you can call programmatically. For general information about AWS KMS, see the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/">AWS Key Management Service Developer Guide</a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS KMS and other AWS services. For example, the SDKs take care of tasks such as signing requests (see below), managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS.</p> <p>Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later support these modes.</p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed by using an access key ID and a secret access key. We strongly recommend that you <i>do not</i> use your AWS account (root) access key ID and secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key for an IAM user, or you can use the AWS Security Token Service to generate temporary security credentials that you can use to sign requests.</p> <p>All AWS KMS operations require <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> <p> <b>Logging API Requests</b> </p> <p>AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/">AWS CloudTrail User Guide</a>.</p> <p> <b>Additional Resources</b> </p> <p>For more information about credentials and request signing, see the following:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a> - This topic provides general information about the types of credentials used for accessing AWS.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a> - This section of the <i>IAM User Guide</i> describes how to create and use temporary security credentials.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a> - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.</p> </li> </ul> <p> <b>Commonly Used APIs</b> </p> <p>Of the APIs discussed in this guide, the following will prove the most useful for most applications. You will likely perform actions other than these, such as creating keys and assigning policies, by using the console.</p> <ul> <li> <p> <a>Encrypt</a> </p> </li> <li> <p> <a>Decrypt</a> </p> </li> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> </ul>
module AWS.KMS where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the <code>Disabled</code> state. To enable a CMK, use <a>EnableKey</a>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about scheduling and canceling deletion of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
cancelKeyDeletion :: forall eff. CancelKeyDeletionRequest -> Aff (exception :: EXCEPTION | eff) CancelKeyDeletionResponse
cancelKeyDeletion = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "cancelKeyDeletion"


-- | <p>Creates a display name for a customer master key (CMK). You can use an alias to identify a CMK in selected operations, such as <a>Encrypt</a> and <a>GenerateDataKey</a>. </p> <p>Each CMK can have multiple aliases, but each alias points to only one CMK. The alias name must be unique in the AWS account and region. To simplify code that runs in multiple regions, use the same alias name, but point it to a different CMK in each region. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation.</p> <p>An alias must start with the word <code>alias</code> followed by a forward slash (<code>alias/</code>). The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with <code>aws</code>; that alias name prefix is reserved by Amazon Web Services (AWS).</p> <p>The alias and the CMK it is mapped to must be in the same AWS account and the same region. You cannot perform this operation on an alias in a different AWS account.</p> <p>To map an existing alias to a different CMK, call <a>UpdateAlias</a>.</p>
createAlias :: forall eff. CreateAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
createAlias = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "createAlias"


-- | <p>Adds a grant to a customer master key (CMK). The grant specifies who can use the CMK and under what conditions. When setting permissions, grants are an alternative to key policies. </p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter. For more information about grants, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
createGrant :: forall eff. CreateGrantRequest -> Aff (exception :: EXCEPTION | eff) CreateGrantResponse
createGrant = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "createGrant"


-- | <p>Creates a customer master key (CMK) in the caller's AWS account.</p> <p>You can use a CMK to encrypt small amounts of data (4 KiB or less) directly, but CMKs are more commonly used to encrypt data encryption keys (DEKs), which are used to encrypt raw data. For more information about DEKs and the difference between CMKs and DEKs, see the following:</p> <ul> <li> <p>The <a>GenerateDataKey</a> operation</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS Key Management Service Concepts</a> in the <i>AWS Key Management Service Developer Guide</i> </p> </li> </ul> <p>You cannot use this operation to create a CMK in a different AWS account.</p>
createKey :: forall eff. CreateKeyRequest -> Aff (exception :: EXCEPTION | eff) CreateKeyResponse
createKey = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "createKey"


-- | <p>Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following operations:</p> <ul> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> <li> <p> <a>Encrypt</a> </p> </li> </ul> <p>Note that if a caller has been granted access permissions to all keys (through, for example, IAM user policies that grant <code>Decrypt</code> permission on all resources), then ciphertext encrypted by using keys in other accounts where the key grants access to the caller can be decrypted. To remedy this, we recommend that you do not grant <code>Decrypt</code> access in an IAM user policy. Instead grant <code>Decrypt</code> access only in key policies. If you must grant <code>Decrypt</code> access in an IAM user policy, you should scope the resource to specific keys or to specific trusted accounts.</p>
decrypt :: forall eff. DecryptRequest -> Aff (exception :: EXCEPTION | eff) DecryptResponse
decrypt = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "decrypt"


-- | <p>Deletes the specified alias. You cannot perform this operation on an alias in a different AWS account. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation. </p> <p>Each CMK can have multiple aliases. To change the alias of a CMK, use <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to create a new alias. To associate an existing alias with a different customer master key (CMK), call <a>UpdateAlias</a>.</p>
deleteAlias :: forall eff. DeleteAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteAlias = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "deleteAlias"


-- | <p>Deletes key material that you previously imported. This operation makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>When the specified CMK is in the <code>PendingDeletion</code> state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to <code>PendingImport</code>.</p> <p>After you delete key material, you can use <a>ImportKeyMaterial</a> to reimport the same key material into the CMK.</p>
deleteImportedKeyMaterial :: forall eff. DeleteImportedKeyMaterialRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteImportedKeyMaterial = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "deleteImportedKeyMaterial"


-- | <p>Provides detailed information about the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p>
describeKey :: forall eff. DescribeKeyRequest -> Aff (exception :: EXCEPTION | eff) DescribeKeyResponse
describeKey = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "describeKey"


-- | <p>Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
disableKey :: forall eff. DisableKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
disableKey = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "disableKey"


-- | <p>Disables automatic rotation of the key material for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
disableKeyRotation :: forall eff. DisableKeyRotationRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
disableKeyRotation = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "disableKeyRotation"


-- | <p>Sets the state of a customer master key (CMK) to enabled, thereby permitting its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p>
enableKey :: forall eff. EnableKeyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
enableKey = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "enableKey"


-- | <p>Enables automatic rotation of the key material for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
enableKeyRotation :: forall eff. EnableKeyRotationRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
enableKeyRotation = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "enableKeyRotation"


-- | <p>Encrypts plaintext into ciphertext by using a customer master key (CMK). The <code>Encrypt</code> operation has two primary use cases:</p> <ul> <li> <p>You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such as an RSA key, a database password, or other sensitive information.</p> </li> <li> <p>To move encrypted data from one AWS region to another, you can use this operation to encrypt in the new region the plaintext data key that was used to encrypt the data in the original region. This provides you with an encrypted copy of the data key that can be decrypted in the new region and used there to decrypt the encrypted data.</p> </li> </ul> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>Unless you are moving encrypted data from one region to another, you don't use this operation to encrypt a generated data key within a region. To get data keys that are already encrypted, call the <a>GenerateDataKey</a> or <a>GenerateDataKeyWithoutPlaintext</a> operation. Data keys don't need to be encrypted again by calling <code>Encrypt</code>.</p> <p>To encrypt data locally in your application, use the <a>GenerateDataKey</a> operation to return a plaintext data encryption key and a copy of the key encrypted under the CMK of your choosing.</p>
encrypt :: forall eff. EncryptRequest -> Aff (exception :: EXCEPTION | eff) EncryptResponse
encrypt = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "encrypt"


-- | <p>Returns a data encryption key that you can use in your application to encrypt data locally. </p> <p>You must specify the customer master key (CMK) under which to generate the data key. You must also specify the length of the data key using either the <code>KeySpec</code> or <code>NumberOfBytes</code> field. You must specify one field or the other, but not both. For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use <code>KeySpec</code>. To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>This operation returns a plaintext copy of the data key in the <code>Plaintext</code> field of the response, and an encrypted copy of the data key in the <code>CiphertextBlob</code> field. The data key is encrypted under the CMK specified in the <code>KeyId</code> field of the request. </p> <p>We recommend that you use the following pattern to encrypt data locally in your application:</p> <ol> <li> <p>Use this operation (<code>GenerateDataKey</code>) to get a data encryption key.</p> </li> <li> <p>Use the plaintext data encryption key (returned in the <code>Plaintext</code> field of the response) to encrypt data locally, then erase the plaintext data key from memory.</p> </li> <li> <p>Store the encrypted data key (returned in the <code>CiphertextBlob</code> field of the response) alongside the locally encrypted data.</p> </li> </ol> <p>To decrypt data locally:</p> <ol> <li> <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key into a plaintext copy of the data key.</p> </li> <li> <p>Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.</p> </li> </ol> <p>To return only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To return a random byte string that is cryptographically secure, use <a>GenerateRandom</a>.</p> <p>If you use the optional <code>EncryptionContext</code> field, you must store at least enough information to be able to reconstruct the full encryption context when you later send the ciphertext to the <a>Decrypt</a> operation. It is a good practice to choose an encryption context that you can reconstruct on the fly to better secure the ciphertext. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
generateDataKey :: forall eff. GenerateDataKeyRequest -> Aff (exception :: EXCEPTION | eff) GenerateDataKeyResponse
generateDataKey = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "generateDataKey"


-- | <p>Returns a data encryption key encrypted under a customer master key (CMK). This operation is identical to <a>GenerateDataKey</a> but returns only the encrypted copy of the data key. </p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>This operation is useful in a system that has multiple components with different degrees of trust. For example, consider a system that stores encrypted data in containers. Each container stores the encrypted data and an encrypted copy of the data key. One component of the system, called the <i>control plane</i>, creates new containers. When it creates a new container, it uses this operation (<code>GenerateDataKeyWithoutPlaintext</code>) to get an encrypted data key and then stores it in the container. Later, a different component of the system, called the <i>data plane</i>, puts encrypted data into the containers. To do this, it passes the encrypted data key to the <a>Decrypt</a> operation, then uses the returned plaintext data key to encrypt data, and finally stores the encrypted data in the container. In this system, the control plane never sees the plaintext data key.</p>
generateDataKeyWithoutPlaintext :: forall eff. GenerateDataKeyWithoutPlaintextRequest -> Aff (exception :: EXCEPTION | eff) GenerateDataKeyWithoutPlaintextResponse
generateDataKeyWithoutPlaintext = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "generateDataKeyWithoutPlaintext"


-- | <p>Returns a random byte string that is cryptographically secure.</p> <p>For more information about entropy and random number generation, see the <a href="https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf">AWS Key Management Service Cryptographic Details</a> whitepaper.</p>
generateRandom :: forall eff. GenerateRandomRequest -> Aff (exception :: EXCEPTION | eff) GenerateRandomResponse
generateRandom = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "generateRandom"


-- | <p>Gets a key policy attached to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>
getKeyPolicy :: forall eff. GetKeyPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetKeyPolicyResponse
getKeyPolicy = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "getKeyPolicy"


-- | <p>Gets a Boolean value that indicates whether automatic rotation of the key material is enabled for the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
getKeyRotationStatus :: forall eff. GetKeyRotationStatusRequest -> Aff (exception :: EXCEPTION | eff) GetKeyRotationStatusResponse
getKeyRotationStatus = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "getKeyRotationStatus"


-- | <p>Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's <code>Origin</code> must be <code>EXTERNAL</code>. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material. You cannot perform this operation on a CMK in a different AWS account.</p> <p>This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent <a>ImportKeyMaterial</a> request. The public key and import token from the same response must be used together. These items are valid for 24 hours. When they expire, they cannot be used for a subsequent <a>ImportKeyMaterial</a> request. To get new ones, send another <code>GetParametersForImport</code> request.</p>
getParametersForImport :: forall eff. GetParametersForImportRequest -> Aff (exception :: EXCEPTION | eff) GetParametersForImportResponse
getParametersForImport = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "getParametersForImport"


-- | <p>Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material. You cannot perform this operation on a CMK in a different AWS account. For more information about creating CMKs with no key material and then importing key material, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Before using this operation, call <a>GetParametersForImport</a>. Its response includes a public key and an import token. Use the public key to encrypt the key material. Then, submit the import token from the same <code>GetParametersForImport</code> response.</p> <p>When calling this operation, you must specify the following values:</p> <ul> <li> <p>The key ID or key ARN of a CMK with no key material. Its <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>To create a CMK with no key material, call <a>CreateKey</a> and set the value of its <code>Origin</code> parameter to <code>EXTERNAL</code>. To get the <code>Origin</code> of a CMK, call <a>DescribeKey</a>.)</p> </li> <li> <p>The encrypted key material. To get the public key to encrypt the key material, call <a>GetParametersForImport</a>.</p> </li> <li> <p>The import token that <a>GetParametersForImport</a> returned. This token and the public key used to encrypt the key material must have come from the same response.</p> </li> <li> <p>Whether the key material expires and if so, when. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date. If the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you must reimport the same key material.</p> </li> </ul> <p>When this operation is successful, the CMK's key state changes from <code>PendingImport</code> to <code>Enabled</code>, and you can use the CMK. After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.</p>
importKeyMaterial :: forall eff. ImportKeyMaterialRequest -> Aff (exception :: EXCEPTION | eff) ImportKeyMaterialResponse
importKeyMaterial = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "importKeyMaterial"


-- | <p>Gets a list of all aliases in the caller's AWS account and region. You cannot list aliases in other accounts. For more information about aliases, see <a>CreateAlias</a>.</p> <p>The response might include several aliases that do not have a <code>TargetKeyId</code> field because they are not associated with a CMK. These are predefined aliases that are reserved for CMKs managed by AWS services. If an alias is not associated with a CMK, the alias does not count against the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit">alias limit</a> for your account.</p>
listAliases :: forall eff. ListAliasesRequest -> Aff (exception :: EXCEPTION | eff) ListAliasesResponse
listAliases = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listAliases"


-- | <p>Gets a list of all grants for the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
listGrants :: forall eff. ListGrantsRequest -> Aff (exception :: EXCEPTION | eff) ListGrantsResponse
listGrants = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listGrants"


-- | <p>Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a <a>GetKeyPolicy</a> operation. However, the only valid policy name is <code>default</code>. You cannot perform this operation on a CMK in a different AWS account.</p>
listKeyPolicies :: forall eff. ListKeyPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListKeyPoliciesResponse
listKeyPolicies = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listKeyPolicies"


-- | <p>Gets a list of all customer master keys (CMKs) in the caller's AWS account and region.</p>
listKeys :: forall eff. ListKeysRequest -> Aff (exception :: EXCEPTION | eff) ListKeysResponse
listKeys = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listKeys"


-- | <p>Returns a list of all tags for the specified customer master key (CMK).</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p>
listResourceTags :: forall eff. ListResourceTagsRequest -> Aff (exception :: EXCEPTION | eff) ListResourceTagsResponse
listResourceTags = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listResourceTags"


-- | <p>Returns a list of all grants for which the grant's <code>RetiringPrincipal</code> matches the one specified.</p> <p>A typical use is to list all grants that you are able to retire. To retire a grant, use <a>RetireGrant</a>.</p>
listRetirableGrants :: forall eff. ListRetirableGrantsRequest -> Aff (exception :: EXCEPTION | eff) ListGrantsResponse
listRetirableGrants = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "listRetirableGrants"


-- | <p>Attaches a key policy to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about key policies, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
putKeyPolicy :: forall eff. PutKeyPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
putKeyPolicy = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "putKeyPolicy"


-- | <p>Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext. </p> <p>You can reencrypt data using CMKs in different AWS accounts.</p> <p>Unlike other operations, <code>ReEncrypt</code> is authorized twice, once as <code>ReEncryptFrom</code> on the source CMK and once as <code>ReEncryptTo</code> on the destination CMK. We recommend that you include the <code>"kms:ReEncrypt*"</code> permission in your <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policies</a> to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console, but you must include it manually when you create a CMK programmatically or when you set a key policy with the <a>PutKeyPolicy</a> operation.</p>
reEncrypt :: forall eff. ReEncryptRequest -> Aff (exception :: EXCEPTION | eff) ReEncryptResponse
reEncrypt = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "reEncrypt"


-- | <p>Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:</p> <ul> <li> <p>The AWS account (root user) under which the grant was created</p> </li> <li> <p>The <code>RetiringPrincipal</code>, if present in the grant</p> </li> <li> <p>The <code>GranteePrincipal</code>, if <code>RetireGrant</code> is an operation specified in the grant</p> </li> </ul> <p>You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The <a>CreateGrant</a> operation returns both.</p>
retireGrant :: forall eff. RetireGrantRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
retireGrant = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "retireGrant"


-- | <p>Revokes the specified grant for the specified customer master key (CMK). You can revoke a grant to actively deny operations that depend on it.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the KeyId parameter.</p>
revokeGrant :: forall eff. RevokeGrantRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
revokeGrant = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "revokeGrant"


-- | <p>Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the state of the CMK changes to <code>PendingDeletion</code>. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p> <important> <p>Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is rendered unrecoverable. To restrict the use of a CMK without deleting it, use <a>DisableKey</a>.</p> </important> <p>For more information about scheduling a CMK for deletion, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
scheduleKeyDeletion :: forall eff. ScheduleKeyDeletionRequest -> Aff (exception :: EXCEPTION | eff) ScheduleKeyDeletionResponse
scheduleKeyDeletion = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "scheduleKeyDeletion"


-- | <p>Adds or overwrites one or more tags for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>You cannot use the same tag key more than once per CMK. For example, consider a CMK with one tag whose tag key is <code>Purpose</code> and tag value is <code>Test</code>. If you send a <code>TagResource</code> request for this CMK with a tag key of <code>Purpose</code> and a tag value of <code>Prod</code>, it does not create a second tag. Instead, the original tag is overwritten with the new tag value.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
tagResource :: forall eff. TagResourceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
tagResource = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "tagResource"


-- | <p>Removes the specified tag or tags from the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>To remove a tag, you specify the tag key for each tag to remove. You do not specify the tag value. To overwrite the tag value for an existing tag, use <a>TagResource</a>.</p>
untagResource :: forall eff. UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
untagResource = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "untagResource"


-- | <p>Associates an existing alias with a different customer master key (CMK). Each CMK can have multiple aliases, but the aliases must be unique within the account and region. You cannot perform this operation on an alias in a different AWS account.</p> <p>This operation works only on existing aliases. To change the alias of a CMK to a new value, use <a>CreateAlias</a> to create a new alias and <a>DeleteAlias</a> to delete the old alias.</p> <p>Because an alias is not a property of a CMK, you can create, update, and delete the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs in the account, use the <a>ListAliases</a> operation. </p> <p>An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word <code>alias</code> followed by a forward slash (<code>alias/</code>). The alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). Alias names cannot begin with <code>aws</code>; that alias name prefix is reserved by Amazon Web Services (AWS).</p>
updateAlias :: forall eff. UpdateAliasRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateAlias = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "updateAlias"


-- | <p>Updates the description of a customer master key (CMK). To see the decription of a CMK, use <a>DescribeKey</a>. </p> <p>You cannot perform this operation on a CMK in a different AWS account.</p>
updateKeyDescription :: forall eff. UpdateKeyDescriptionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
updateKeyDescription = Request.request service method  where
    service = Request.ServiceName "KMS"
    method = Request.MethodName "updateKeyDescription"


newtype AWSAccountIdType = AWSAccountIdType String
derive instance newtypeAWSAccountIdType :: Newtype AWSAccountIdType _
derive instance repGenericAWSAccountIdType :: Generic AWSAccountIdType _
instance showAWSAccountIdType :: Show AWSAccountIdType where
  show = genericShow
instance decodeAWSAccountIdType :: Decode AWSAccountIdType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAWSAccountIdType :: Encode AWSAccountIdType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AlgorithmSpec = AlgorithmSpec String
derive instance newtypeAlgorithmSpec :: Newtype AlgorithmSpec _
derive instance repGenericAlgorithmSpec :: Generic AlgorithmSpec _
instance showAlgorithmSpec :: Show AlgorithmSpec where
  show = genericShow
instance decodeAlgorithmSpec :: Decode AlgorithmSpec where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAlgorithmSpec :: Encode AlgorithmSpec where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AliasList = AliasList (Array AliasListEntry)
derive instance newtypeAliasList :: Newtype AliasList _
derive instance repGenericAliasList :: Generic AliasList _
instance showAliasList :: Show AliasList where
  show = genericShow
instance decodeAliasList :: Decode AliasList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAliasList :: Encode AliasList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about an alias.</p>
newtype AliasListEntry = AliasListEntry 
  { "AliasName" :: NullOrUndefined.NullOrUndefined (AliasNameType)
  , "AliasArn" :: NullOrUndefined.NullOrUndefined (ArnType)
  , "TargetKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeAliasListEntry :: Newtype AliasListEntry _
derive instance repGenericAliasListEntry :: Generic AliasListEntry _
instance showAliasListEntry :: Show AliasListEntry where
  show = genericShow
instance decodeAliasListEntry :: Decode AliasListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAliasListEntry :: Encode AliasListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AliasListEntry from required parameters
newAliasListEntry :: AliasListEntry
newAliasListEntry  = AliasListEntry { "AliasArn": (NullOrUndefined Nothing), "AliasName": (NullOrUndefined Nothing), "TargetKeyId": (NullOrUndefined Nothing) }

-- | Constructs AliasListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAliasListEntry' :: ( { "AliasName" :: NullOrUndefined.NullOrUndefined (AliasNameType) , "AliasArn" :: NullOrUndefined.NullOrUndefined (ArnType) , "TargetKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"AliasName" :: NullOrUndefined.NullOrUndefined (AliasNameType) , "AliasArn" :: NullOrUndefined.NullOrUndefined (ArnType) , "TargetKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> AliasListEntry
newAliasListEntry'  customize = (AliasListEntry <<< customize) { "AliasArn": (NullOrUndefined Nothing), "AliasName": (NullOrUndefined Nothing), "TargetKeyId": (NullOrUndefined Nothing) }



newtype AliasNameType = AliasNameType String
derive instance newtypeAliasNameType :: Newtype AliasNameType _
derive instance repGenericAliasNameType :: Generic AliasNameType _
instance showAliasNameType :: Show AliasNameType where
  show = genericShow
instance decodeAliasNameType :: Decode AliasNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAliasNameType :: Encode AliasNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because it attempted to create a resource that already exists.</p>
newtype AlreadyExistsException = AlreadyExistsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeAlreadyExistsException :: Newtype AlreadyExistsException _
derive instance repGenericAlreadyExistsException :: Generic AlreadyExistsException _
instance showAlreadyExistsException :: Show AlreadyExistsException where
  show = genericShow
instance decodeAlreadyExistsException :: Decode AlreadyExistsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAlreadyExistsException :: Encode AlreadyExistsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AlreadyExistsException from required parameters
newAlreadyExistsException :: AlreadyExistsException
newAlreadyExistsException  = AlreadyExistsException { "message": (NullOrUndefined Nothing) }

-- | Constructs AlreadyExistsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyExistsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> AlreadyExistsException
newAlreadyExistsException'  customize = (AlreadyExistsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ArnType = ArnType String
derive instance newtypeArnType :: Newtype ArnType _
derive instance repGenericArnType :: Generic ArnType _
instance showArnType :: Show ArnType where
  show = genericShow
instance decodeArnType :: Decode ArnType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeArnType :: Encode ArnType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype BooleanType = BooleanType Boolean
derive instance newtypeBooleanType :: Newtype BooleanType _
derive instance repGenericBooleanType :: Generic BooleanType _
instance showBooleanType :: Show BooleanType where
  show = genericShow
instance decodeBooleanType :: Decode BooleanType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBooleanType :: Encode BooleanType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CancelKeyDeletionRequest = CancelKeyDeletionRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeCancelKeyDeletionRequest :: Newtype CancelKeyDeletionRequest _
derive instance repGenericCancelKeyDeletionRequest :: Generic CancelKeyDeletionRequest _
instance showCancelKeyDeletionRequest :: Show CancelKeyDeletionRequest where
  show = genericShow
instance decodeCancelKeyDeletionRequest :: Decode CancelKeyDeletionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelKeyDeletionRequest :: Encode CancelKeyDeletionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelKeyDeletionRequest from required parameters
newCancelKeyDeletionRequest :: KeyIdType -> CancelKeyDeletionRequest
newCancelKeyDeletionRequest _KeyId = CancelKeyDeletionRequest { "KeyId": _KeyId }

-- | Constructs CancelKeyDeletionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelKeyDeletionRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> CancelKeyDeletionRequest
newCancelKeyDeletionRequest' _KeyId customize = (CancelKeyDeletionRequest <<< customize) { "KeyId": _KeyId }



newtype CancelKeyDeletionResponse = CancelKeyDeletionResponse 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeCancelKeyDeletionResponse :: Newtype CancelKeyDeletionResponse _
derive instance repGenericCancelKeyDeletionResponse :: Generic CancelKeyDeletionResponse _
instance showCancelKeyDeletionResponse :: Show CancelKeyDeletionResponse where
  show = genericShow
instance decodeCancelKeyDeletionResponse :: Decode CancelKeyDeletionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelKeyDeletionResponse :: Encode CancelKeyDeletionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelKeyDeletionResponse from required parameters
newCancelKeyDeletionResponse :: CancelKeyDeletionResponse
newCancelKeyDeletionResponse  = CancelKeyDeletionResponse { "KeyId": (NullOrUndefined Nothing) }

-- | Constructs CancelKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelKeyDeletionResponse' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> CancelKeyDeletionResponse
newCancelKeyDeletionResponse'  customize = (CancelKeyDeletionResponse <<< customize) { "KeyId": (NullOrUndefined Nothing) }



newtype CiphertextType = CiphertextType String
derive instance newtypeCiphertextType :: Newtype CiphertextType _
derive instance repGenericCiphertextType :: Generic CiphertextType _
instance showCiphertextType :: Show CiphertextType where
  show = genericShow
instance decodeCiphertextType :: Decode CiphertextType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCiphertextType :: Encode CiphertextType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAliasRequest = CreateAliasRequest 
  { "AliasName" :: (AliasNameType)
  , "TargetKeyId" :: (KeyIdType)
  }
derive instance newtypeCreateAliasRequest :: Newtype CreateAliasRequest _
derive instance repGenericCreateAliasRequest :: Generic CreateAliasRequest _
instance showCreateAliasRequest :: Show CreateAliasRequest where
  show = genericShow
instance decodeCreateAliasRequest :: Decode CreateAliasRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAliasRequest :: Encode CreateAliasRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType)
  , "Operations" :: (GrantOperationList)
  , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType)
  }
derive instance newtypeCreateGrantRequest :: Newtype CreateGrantRequest _
derive instance repGenericCreateGrantRequest :: Generic CreateGrantRequest _
instance showCreateGrantRequest :: Show CreateGrantRequest where
  show = genericShow
instance decodeCreateGrantRequest :: Decode CreateGrantRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGrantRequest :: Encode CreateGrantRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGrantRequest from required parameters
newCreateGrantRequest :: PrincipalIdType -> KeyIdType -> GrantOperationList -> CreateGrantRequest
newCreateGrantRequest _GranteePrincipal _KeyId _Operations = CreateGrantRequest { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }

-- | Constructs CreateGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantRequest' :: PrincipalIdType -> KeyIdType -> GrantOperationList -> ( { "KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType) } -> {"KeyId" :: (KeyIdType) , "GranteePrincipal" :: (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "Operations" :: (GrantOperationList) , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType) } ) -> CreateGrantRequest
newCreateGrantRequest' _GranteePrincipal _KeyId _Operations customize = (CreateGrantRequest <<< customize) { "GranteePrincipal": _GranteePrincipal, "KeyId": _KeyId, "Operations": _Operations, "Constraints": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }



newtype CreateGrantResponse = CreateGrantResponse 
  { "GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType)
  , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType)
  }
derive instance newtypeCreateGrantResponse :: Newtype CreateGrantResponse _
derive instance repGenericCreateGrantResponse :: Generic CreateGrantResponse _
instance showCreateGrantResponse :: Show CreateGrantResponse where
  show = genericShow
instance decodeCreateGrantResponse :: Decode CreateGrantResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGrantResponse :: Encode CreateGrantResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGrantResponse from required parameters
newCreateGrantResponse :: CreateGrantResponse
newCreateGrantResponse  = CreateGrantResponse { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing) }

-- | Constructs CreateGrantResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGrantResponse' :: ( { "GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) } -> {"GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) } ) -> CreateGrantResponse
newCreateGrantResponse'  customize = (CreateGrantResponse <<< customize) { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing) }



newtype CreateKeyRequest = CreateKeyRequest 
  { "Policy" :: NullOrUndefined.NullOrUndefined (PolicyType)
  , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType)
  , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType)
  , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType)
  , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType)
  , "Tags" :: NullOrUndefined.NullOrUndefined (TagList)
  }
derive instance newtypeCreateKeyRequest :: Newtype CreateKeyRequest _
derive instance repGenericCreateKeyRequest :: Generic CreateKeyRequest _
instance showCreateKeyRequest :: Show CreateKeyRequest where
  show = genericShow
instance decodeCreateKeyRequest :: Decode CreateKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateKeyRequest :: Encode CreateKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateKeyRequest from required parameters
newCreateKeyRequest :: CreateKeyRequest
newCreateKeyRequest  = CreateKeyRequest { "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs CreateKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyRequest' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (PolicyType) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType) , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (PolicyType) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType) , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) } ) -> CreateKeyRequest
newCreateKeyRequest'  customize = (CreateKeyRequest <<< customize) { "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype CreateKeyResponse = CreateKeyResponse 
  { "KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata)
  }
derive instance newtypeCreateKeyResponse :: Newtype CreateKeyResponse _
derive instance repGenericCreateKeyResponse :: Generic CreateKeyResponse _
instance showCreateKeyResponse :: Show CreateKeyResponse where
  show = genericShow
instance decodeCreateKeyResponse :: Decode CreateKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateKeyResponse :: Encode CreateKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateKeyResponse from required parameters
newCreateKeyResponse :: CreateKeyResponse
newCreateKeyResponse  = CreateKeyResponse { "KeyMetadata": (NullOrUndefined Nothing) }

-- | Constructs CreateKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateKeyResponse' :: ( { "KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata) } -> {"KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata) } ) -> CreateKeyResponse
newCreateKeyResponse'  customize = (CreateKeyResponse <<< customize) { "KeyMetadata": (NullOrUndefined Nothing) }



newtype DataKeySpec = DataKeySpec String
derive instance newtypeDataKeySpec :: Newtype DataKeySpec _
derive instance repGenericDataKeySpec :: Generic DataKeySpec _
instance showDataKeySpec :: Show DataKeySpec where
  show = genericShow
instance decodeDataKeySpec :: Decode DataKeySpec where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataKeySpec :: Encode DataKeySpec where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DateType = DateType Types.Timestamp
derive instance newtypeDateType :: Newtype DateType _
derive instance repGenericDateType :: Generic DateType _
instance showDateType :: Show DateType where
  show = genericShow
instance decodeDateType :: Decode DateType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDateType :: Encode DateType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DecryptRequest = DecryptRequest 
  { "CiphertextBlob" :: (CiphertextType)
  , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeDecryptRequest :: Newtype DecryptRequest _
derive instance repGenericDecryptRequest :: Generic DecryptRequest _
instance showDecryptRequest :: Show DecryptRequest where
  show = genericShow
instance decodeDecryptRequest :: Decode DecryptRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDecryptRequest :: Encode DecryptRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DecryptRequest from required parameters
newDecryptRequest :: CiphertextType -> DecryptRequest
newDecryptRequest _CiphertextBlob = DecryptRequest { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs DecryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptRequest' :: CiphertextType -> ( { "CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> DecryptRequest
newDecryptRequest' _CiphertextBlob customize = (DecryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }



newtype DecryptResponse = DecryptResponse 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType)
  }
derive instance newtypeDecryptResponse :: Newtype DecryptResponse _
derive instance repGenericDecryptResponse :: Generic DecryptResponse _
instance showDecryptResponse :: Show DecryptResponse where
  show = genericShow
instance decodeDecryptResponse :: Decode DecryptResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDecryptResponse :: Encode DecryptResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DecryptResponse from required parameters
newDecryptResponse :: DecryptResponse
newDecryptResponse  = DecryptResponse { "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs DecryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecryptResponse' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) } ) -> DecryptResponse
newDecryptResponse'  customize = (DecryptResponse <<< customize) { "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }



newtype DeleteAliasRequest = DeleteAliasRequest 
  { "AliasName" :: (AliasNameType)
  }
derive instance newtypeDeleteAliasRequest :: Newtype DeleteAliasRequest _
derive instance repGenericDeleteAliasRequest :: Generic DeleteAliasRequest _
instance showDeleteAliasRequest :: Show DeleteAliasRequest where
  show = genericShow
instance decodeDeleteAliasRequest :: Decode DeleteAliasRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteAliasRequest :: Encode DeleteAliasRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeleteImportedKeyMaterialRequest :: Show DeleteImportedKeyMaterialRequest where
  show = genericShow
instance decodeDeleteImportedKeyMaterialRequest :: Decode DeleteImportedKeyMaterialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteImportedKeyMaterialRequest :: Encode DeleteImportedKeyMaterialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteImportedKeyMaterialRequest from required parameters
newDeleteImportedKeyMaterialRequest :: KeyIdType -> DeleteImportedKeyMaterialRequest
newDeleteImportedKeyMaterialRequest _KeyId = DeleteImportedKeyMaterialRequest { "KeyId": _KeyId }

-- | Constructs DeleteImportedKeyMaterialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteImportedKeyMaterialRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> DeleteImportedKeyMaterialRequest
newDeleteImportedKeyMaterialRequest' _KeyId customize = (DeleteImportedKeyMaterialRequest <<< customize) { "KeyId": _KeyId }



-- | <p>The system timed out while trying to fulfill the request. The request can be retried.</p>
newtype DependencyTimeoutException = DependencyTimeoutException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeDependencyTimeoutException :: Newtype DependencyTimeoutException _
derive instance repGenericDependencyTimeoutException :: Generic DependencyTimeoutException _
instance showDependencyTimeoutException :: Show DependencyTimeoutException where
  show = genericShow
instance decodeDependencyTimeoutException :: Decode DependencyTimeoutException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDependencyTimeoutException :: Encode DependencyTimeoutException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DependencyTimeoutException from required parameters
newDependencyTimeoutException :: DependencyTimeoutException
newDependencyTimeoutException  = DependencyTimeoutException { "message": (NullOrUndefined Nothing) }

-- | Constructs DependencyTimeoutException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDependencyTimeoutException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> DependencyTimeoutException
newDependencyTimeoutException'  customize = (DependencyTimeoutException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype DescribeKeyRequest = DescribeKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeDescribeKeyRequest :: Newtype DescribeKeyRequest _
derive instance repGenericDescribeKeyRequest :: Generic DescribeKeyRequest _
instance showDescribeKeyRequest :: Show DescribeKeyRequest where
  show = genericShow
instance decodeDescribeKeyRequest :: Decode DescribeKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeKeyRequest :: Encode DescribeKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeKeyRequest from required parameters
newDescribeKeyRequest :: KeyIdType -> DescribeKeyRequest
newDescribeKeyRequest _KeyId = DescribeKeyRequest { "KeyId": _KeyId, "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs DescribeKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> DescribeKeyRequest
newDescribeKeyRequest' _KeyId customize = (DescribeKeyRequest <<< customize) { "KeyId": _KeyId, "GrantTokens": (NullOrUndefined Nothing) }



newtype DescribeKeyResponse = DescribeKeyResponse 
  { "KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata)
  }
derive instance newtypeDescribeKeyResponse :: Newtype DescribeKeyResponse _
derive instance repGenericDescribeKeyResponse :: Generic DescribeKeyResponse _
instance showDescribeKeyResponse :: Show DescribeKeyResponse where
  show = genericShow
instance decodeDescribeKeyResponse :: Decode DescribeKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeKeyResponse :: Encode DescribeKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeKeyResponse from required parameters
newDescribeKeyResponse :: DescribeKeyResponse
newDescribeKeyResponse  = DescribeKeyResponse { "KeyMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeKeyResponse' :: ( { "KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata) } -> {"KeyMetadata" :: NullOrUndefined.NullOrUndefined (KeyMetadata) } ) -> DescribeKeyResponse
newDescribeKeyResponse'  customize = (DescribeKeyResponse <<< customize) { "KeyMetadata": (NullOrUndefined Nothing) }



newtype DescriptionType = DescriptionType String
derive instance newtypeDescriptionType :: Newtype DescriptionType _
derive instance repGenericDescriptionType :: Generic DescriptionType _
instance showDescriptionType :: Show DescriptionType where
  show = genericShow
instance decodeDescriptionType :: Decode DescriptionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescriptionType :: Encode DescriptionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DisableKeyRequest = DisableKeyRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeDisableKeyRequest :: Newtype DisableKeyRequest _
derive instance repGenericDisableKeyRequest :: Generic DisableKeyRequest _
instance showDisableKeyRequest :: Show DisableKeyRequest where
  show = genericShow
instance decodeDisableKeyRequest :: Decode DisableKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableKeyRequest :: Encode DisableKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisableKeyRotationRequest :: Show DisableKeyRotationRequest where
  show = genericShow
instance decodeDisableKeyRotationRequest :: Decode DisableKeyRotationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableKeyRotationRequest :: Encode DisableKeyRotationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisableKeyRotationRequest from required parameters
newDisableKeyRotationRequest :: KeyIdType -> DisableKeyRotationRequest
newDisableKeyRotationRequest _KeyId = DisableKeyRotationRequest { "KeyId": _KeyId }

-- | Constructs DisableKeyRotationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableKeyRotationRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> DisableKeyRotationRequest
newDisableKeyRotationRequest' _KeyId customize = (DisableKeyRotationRequest <<< customize) { "KeyId": _KeyId }



-- | <p>The request was rejected because the specified CMK is not enabled.</p>
newtype DisabledException = DisabledException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeDisabledException :: Newtype DisabledException _
derive instance repGenericDisabledException :: Generic DisabledException _
instance showDisabledException :: Show DisabledException where
  show = genericShow
instance decodeDisabledException :: Decode DisabledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisabledException :: Encode DisabledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisabledException from required parameters
newDisabledException :: DisabledException
newDisabledException  = DisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs DisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisabledException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> DisabledException
newDisabledException'  customize = (DisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype EnableKeyRequest = EnableKeyRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeEnableKeyRequest :: Newtype EnableKeyRequest _
derive instance repGenericEnableKeyRequest :: Generic EnableKeyRequest _
instance showEnableKeyRequest :: Show EnableKeyRequest where
  show = genericShow
instance decodeEnableKeyRequest :: Decode EnableKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableKeyRequest :: Encode EnableKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showEnableKeyRotationRequest :: Show EnableKeyRotationRequest where
  show = genericShow
instance decodeEnableKeyRotationRequest :: Decode EnableKeyRotationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableKeyRotationRequest :: Encode EnableKeyRotationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
  , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeEncryptRequest :: Newtype EncryptRequest _
derive instance repGenericEncryptRequest :: Generic EncryptRequest _
instance showEncryptRequest :: Show EncryptRequest where
  show = genericShow
instance decodeEncryptRequest :: Decode EncryptRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptRequest :: Encode EncryptRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EncryptRequest from required parameters
newEncryptRequest :: KeyIdType -> PlaintextType -> EncryptRequest
newEncryptRequest _KeyId _Plaintext = EncryptRequest { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }

-- | Constructs EncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptRequest' :: KeyIdType -> PlaintextType -> ( { "KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "Plaintext" :: (PlaintextType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> EncryptRequest
newEncryptRequest' _KeyId _Plaintext customize = (EncryptRequest <<< customize) { "KeyId": _KeyId, "Plaintext": _Plaintext, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing) }



newtype EncryptResponse = EncryptResponse 
  { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType)
  , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeEncryptResponse :: Newtype EncryptResponse _
derive instance repGenericEncryptResponse :: Generic EncryptResponse _
instance showEncryptResponse :: Show EncryptResponse where
  show = genericShow
instance decodeEncryptResponse :: Decode EncryptResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptResponse :: Encode EncryptResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EncryptResponse from required parameters
newEncryptResponse :: EncryptResponse
newEncryptResponse  = EncryptResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs EncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptResponse' :: ( { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> EncryptResponse
newEncryptResponse'  customize = (EncryptResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype EncryptionContextKey = EncryptionContextKey String
derive instance newtypeEncryptionContextKey :: Newtype EncryptionContextKey _
derive instance repGenericEncryptionContextKey :: Generic EncryptionContextKey _
instance showEncryptionContextKey :: Show EncryptionContextKey where
  show = genericShow
instance decodeEncryptionContextKey :: Decode EncryptionContextKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionContextKey :: Encode EncryptionContextKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EncryptionContextType = EncryptionContextType (StrMap.StrMap EncryptionContextValue)
derive instance newtypeEncryptionContextType :: Newtype EncryptionContextType _
derive instance repGenericEncryptionContextType :: Generic EncryptionContextType _
instance showEncryptionContextType :: Show EncryptionContextType where
  show = genericShow
instance decodeEncryptionContextType :: Decode EncryptionContextType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionContextType :: Encode EncryptionContextType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EncryptionContextValue = EncryptionContextValue String
derive instance newtypeEncryptionContextValue :: Newtype EncryptionContextValue _
derive instance repGenericEncryptionContextValue :: Generic EncryptionContextValue _
instance showEncryptionContextValue :: Show EncryptionContextValue where
  show = genericShow
instance decodeEncryptionContextValue :: Decode EncryptionContextValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEncryptionContextValue :: Encode EncryptionContextValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessageType = ErrorMessageType String
derive instance newtypeErrorMessageType :: Newtype ErrorMessageType _
derive instance repGenericErrorMessageType :: Generic ErrorMessageType _
instance showErrorMessageType :: Show ErrorMessageType where
  show = genericShow
instance decodeErrorMessageType :: Decode ErrorMessageType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessageType :: Encode ErrorMessageType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExpirationModelType = ExpirationModelType String
derive instance newtypeExpirationModelType :: Newtype ExpirationModelType _
derive instance repGenericExpirationModelType :: Generic ExpirationModelType _
instance showExpirationModelType :: Show ExpirationModelType where
  show = genericShow
instance decodeExpirationModelType :: Decode ExpirationModelType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpirationModelType :: Encode ExpirationModelType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>
newtype ExpiredImportTokenException = ExpiredImportTokenException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeExpiredImportTokenException :: Newtype ExpiredImportTokenException _
derive instance repGenericExpiredImportTokenException :: Generic ExpiredImportTokenException _
instance showExpiredImportTokenException :: Show ExpiredImportTokenException where
  show = genericShow
instance decodeExpiredImportTokenException :: Decode ExpiredImportTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExpiredImportTokenException :: Encode ExpiredImportTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ExpiredImportTokenException from required parameters
newExpiredImportTokenException :: ExpiredImportTokenException
newExpiredImportTokenException  = ExpiredImportTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs ExpiredImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredImportTokenException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> ExpiredImportTokenException
newExpiredImportTokenException'  customize = (ExpiredImportTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype GenerateDataKeyRequest = GenerateDataKeyRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType)
  , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyRequest :: Newtype GenerateDataKeyRequest _
derive instance repGenericGenerateDataKeyRequest :: Generic GenerateDataKeyRequest _
instance showGenerateDataKeyRequest :: Show GenerateDataKeyRequest where
  show = genericShow
instance decodeGenerateDataKeyRequest :: Decode GenerateDataKeyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataKeyRequest :: Encode GenerateDataKeyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataKeyRequest from required parameters
newGenerateDataKeyRequest :: KeyIdType -> GenerateDataKeyRequest
newGenerateDataKeyRequest _KeyId = GenerateDataKeyRequest { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> GenerateDataKeyRequest
newGenerateDataKeyRequest' _KeyId customize = (GenerateDataKeyRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateDataKeyResponse = GenerateDataKeyResponse 
  { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType)
  , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType)
  , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeGenerateDataKeyResponse :: Newtype GenerateDataKeyResponse _
derive instance repGenericGenerateDataKeyResponse :: Generic GenerateDataKeyResponse _
instance showGenerateDataKeyResponse :: Show GenerateDataKeyResponse where
  show = genericShow
instance decodeGenerateDataKeyResponse :: Decode GenerateDataKeyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataKeyResponse :: Encode GenerateDataKeyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataKeyResponse from required parameters
newGenerateDataKeyResponse :: GenerateDataKeyResponse
newGenerateDataKeyResponse  = GenerateDataKeyResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyResponse' :: ( { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> GenerateDataKeyResponse
newGenerateDataKeyResponse'  customize = (GenerateDataKeyResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Plaintext": (NullOrUndefined Nothing) }



newtype GenerateDataKeyWithoutPlaintextRequest = GenerateDataKeyWithoutPlaintextRequest 
  { "KeyId" :: (KeyIdType)
  , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec)
  , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextRequest :: Newtype GenerateDataKeyWithoutPlaintextRequest _
derive instance repGenericGenerateDataKeyWithoutPlaintextRequest :: Generic GenerateDataKeyWithoutPlaintextRequest _
instance showGenerateDataKeyWithoutPlaintextRequest :: Show GenerateDataKeyWithoutPlaintextRequest where
  show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextRequest :: Decode GenerateDataKeyWithoutPlaintextRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataKeyWithoutPlaintextRequest :: Encode GenerateDataKeyWithoutPlaintextRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataKeyWithoutPlaintextRequest from required parameters
newGenerateDataKeyWithoutPlaintextRequest :: KeyIdType -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest _KeyId = GenerateDataKeyWithoutPlaintextRequest { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyWithoutPlaintextRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec) , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"KeyId" :: (KeyIdType) , "EncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "KeySpec" :: NullOrUndefined.NullOrUndefined (DataKeySpec) , "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> GenerateDataKeyWithoutPlaintextRequest
newGenerateDataKeyWithoutPlaintextRequest' _KeyId customize = (GenerateDataKeyWithoutPlaintextRequest <<< customize) { "KeyId": _KeyId, "EncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "KeySpec": (NullOrUndefined Nothing), "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateDataKeyWithoutPlaintextResponse = GenerateDataKeyWithoutPlaintextResponse 
  { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType)
  , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeGenerateDataKeyWithoutPlaintextResponse :: Newtype GenerateDataKeyWithoutPlaintextResponse _
derive instance repGenericGenerateDataKeyWithoutPlaintextResponse :: Generic GenerateDataKeyWithoutPlaintextResponse _
instance showGenerateDataKeyWithoutPlaintextResponse :: Show GenerateDataKeyWithoutPlaintextResponse where
  show = genericShow
instance decodeGenerateDataKeyWithoutPlaintextResponse :: Decode GenerateDataKeyWithoutPlaintextResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataKeyWithoutPlaintextResponse :: Encode GenerateDataKeyWithoutPlaintextResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataKeyWithoutPlaintextResponse from required parameters
newGenerateDataKeyWithoutPlaintextResponse :: GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse  = GenerateDataKeyWithoutPlaintextResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataKeyWithoutPlaintextResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataKeyWithoutPlaintextResponse' :: ( { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> GenerateDataKeyWithoutPlaintextResponse
newGenerateDataKeyWithoutPlaintextResponse'  customize = (GenerateDataKeyWithoutPlaintextResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype GenerateRandomRequest = GenerateRandomRequest 
  { "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType)
  }
derive instance newtypeGenerateRandomRequest :: Newtype GenerateRandomRequest _
derive instance repGenericGenerateRandomRequest :: Generic GenerateRandomRequest _
instance showGenerateRandomRequest :: Show GenerateRandomRequest where
  show = genericShow
instance decodeGenerateRandomRequest :: Decode GenerateRandomRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateRandomRequest :: Encode GenerateRandomRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateRandomRequest from required parameters
newGenerateRandomRequest :: GenerateRandomRequest
newGenerateRandomRequest  = GenerateRandomRequest { "NumberOfBytes": (NullOrUndefined Nothing) }

-- | Constructs GenerateRandomRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomRequest' :: ( { "NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) } -> {"NumberOfBytes" :: NullOrUndefined.NullOrUndefined (NumberOfBytesType) } ) -> GenerateRandomRequest
newGenerateRandomRequest'  customize = (GenerateRandomRequest <<< customize) { "NumberOfBytes": (NullOrUndefined Nothing) }



newtype GenerateRandomResponse = GenerateRandomResponse 
  { "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType)
  }
derive instance newtypeGenerateRandomResponse :: Newtype GenerateRandomResponse _
derive instance repGenericGenerateRandomResponse :: Generic GenerateRandomResponse _
instance showGenerateRandomResponse :: Show GenerateRandomResponse where
  show = genericShow
instance decodeGenerateRandomResponse :: Decode GenerateRandomResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateRandomResponse :: Encode GenerateRandomResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateRandomResponse from required parameters
newGenerateRandomResponse :: GenerateRandomResponse
newGenerateRandomResponse  = GenerateRandomResponse { "Plaintext": (NullOrUndefined Nothing) }

-- | Constructs GenerateRandomResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateRandomResponse' :: ( { "Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) } -> {"Plaintext" :: NullOrUndefined.NullOrUndefined (PlaintextType) } ) -> GenerateRandomResponse
newGenerateRandomResponse'  customize = (GenerateRandomResponse <<< customize) { "Plaintext": (NullOrUndefined Nothing) }



newtype GetKeyPolicyRequest = GetKeyPolicyRequest 
  { "KeyId" :: (KeyIdType)
  , "PolicyName" :: (PolicyNameType)
  }
derive instance newtypeGetKeyPolicyRequest :: Newtype GetKeyPolicyRequest _
derive instance repGenericGetKeyPolicyRequest :: Generic GetKeyPolicyRequest _
instance showGetKeyPolicyRequest :: Show GetKeyPolicyRequest where
  show = genericShow
instance decodeGetKeyPolicyRequest :: Decode GetKeyPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetKeyPolicyRequest :: Encode GetKeyPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetKeyPolicyRequest from required parameters
newGetKeyPolicyRequest :: KeyIdType -> PolicyNameType -> GetKeyPolicyRequest
newGetKeyPolicyRequest _KeyId _PolicyName = GetKeyPolicyRequest { "KeyId": _KeyId, "PolicyName": _PolicyName }

-- | Constructs GetKeyPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyPolicyRequest' :: KeyIdType -> PolicyNameType -> ( { "KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) } -> {"KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) } ) -> GetKeyPolicyRequest
newGetKeyPolicyRequest' _KeyId _PolicyName customize = (GetKeyPolicyRequest <<< customize) { "KeyId": _KeyId, "PolicyName": _PolicyName }



newtype GetKeyPolicyResponse = GetKeyPolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (PolicyType)
  }
derive instance newtypeGetKeyPolicyResponse :: Newtype GetKeyPolicyResponse _
derive instance repGenericGetKeyPolicyResponse :: Generic GetKeyPolicyResponse _
instance showGetKeyPolicyResponse :: Show GetKeyPolicyResponse where
  show = genericShow
instance decodeGetKeyPolicyResponse :: Decode GetKeyPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetKeyPolicyResponse :: Encode GetKeyPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetKeyPolicyResponse from required parameters
newGetKeyPolicyResponse :: GetKeyPolicyResponse
newGetKeyPolicyResponse  = GetKeyPolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs GetKeyPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyPolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (PolicyType) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (PolicyType) } ) -> GetKeyPolicyResponse
newGetKeyPolicyResponse'  customize = (GetKeyPolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype GetKeyRotationStatusRequest = GetKeyRotationStatusRequest 
  { "KeyId" :: (KeyIdType)
  }
derive instance newtypeGetKeyRotationStatusRequest :: Newtype GetKeyRotationStatusRequest _
derive instance repGenericGetKeyRotationStatusRequest :: Generic GetKeyRotationStatusRequest _
instance showGetKeyRotationStatusRequest :: Show GetKeyRotationStatusRequest where
  show = genericShow
instance decodeGetKeyRotationStatusRequest :: Decode GetKeyRotationStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetKeyRotationStatusRequest :: Encode GetKeyRotationStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetKeyRotationStatusRequest from required parameters
newGetKeyRotationStatusRequest :: KeyIdType -> GetKeyRotationStatusRequest
newGetKeyRotationStatusRequest _KeyId = GetKeyRotationStatusRequest { "KeyId": _KeyId }

-- | Constructs GetKeyRotationStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyRotationStatusRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) } -> {"KeyId" :: (KeyIdType) } ) -> GetKeyRotationStatusRequest
newGetKeyRotationStatusRequest' _KeyId customize = (GetKeyRotationStatusRequest <<< customize) { "KeyId": _KeyId }



newtype GetKeyRotationStatusResponse = GetKeyRotationStatusResponse 
  { "KeyRotationEnabled" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeGetKeyRotationStatusResponse :: Newtype GetKeyRotationStatusResponse _
derive instance repGenericGetKeyRotationStatusResponse :: Generic GetKeyRotationStatusResponse _
instance showGetKeyRotationStatusResponse :: Show GetKeyRotationStatusResponse where
  show = genericShow
instance decodeGetKeyRotationStatusResponse :: Decode GetKeyRotationStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetKeyRotationStatusResponse :: Encode GetKeyRotationStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetKeyRotationStatusResponse from required parameters
newGetKeyRotationStatusResponse :: GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse  = GetKeyRotationStatusResponse { "KeyRotationEnabled": (NullOrUndefined Nothing) }

-- | Constructs GetKeyRotationStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetKeyRotationStatusResponse' :: ( { "KeyRotationEnabled" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"KeyRotationEnabled" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> GetKeyRotationStatusResponse
newGetKeyRotationStatusResponse'  customize = (GetKeyRotationStatusResponse <<< customize) { "KeyRotationEnabled": (NullOrUndefined Nothing) }



newtype GetParametersForImportRequest = GetParametersForImportRequest 
  { "KeyId" :: (KeyIdType)
  , "WrappingAlgorithm" :: (AlgorithmSpec)
  , "WrappingKeySpec" :: (WrappingKeySpec)
  }
derive instance newtypeGetParametersForImportRequest :: Newtype GetParametersForImportRequest _
derive instance repGenericGetParametersForImportRequest :: Generic GetParametersForImportRequest _
instance showGetParametersForImportRequest :: Show GetParametersForImportRequest where
  show = genericShow
instance decodeGetParametersForImportRequest :: Decode GetParametersForImportRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetParametersForImportRequest :: Encode GetParametersForImportRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetParametersForImportRequest from required parameters
newGetParametersForImportRequest :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> GetParametersForImportRequest
newGetParametersForImportRequest _KeyId _WrappingAlgorithm _WrappingKeySpec = GetParametersForImportRequest { "KeyId": _KeyId, "WrappingAlgorithm": _WrappingAlgorithm, "WrappingKeySpec": _WrappingKeySpec }

-- | Constructs GetParametersForImportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetParametersForImportRequest' :: KeyIdType -> AlgorithmSpec -> WrappingKeySpec -> ( { "KeyId" :: (KeyIdType) , "WrappingAlgorithm" :: (AlgorithmSpec) , "WrappingKeySpec" :: (WrappingKeySpec) } -> {"KeyId" :: (KeyIdType) , "WrappingAlgorithm" :: (AlgorithmSpec) , "WrappingKeySpec" :: (WrappingKeySpec) } ) -> GetParametersForImportRequest
newGetParametersForImportRequest' _KeyId _WrappingAlgorithm _WrappingKeySpec customize = (GetParametersForImportRequest <<< customize) { "KeyId": _KeyId, "WrappingAlgorithm": _WrappingAlgorithm, "WrappingKeySpec": _WrappingKeySpec }



newtype GetParametersForImportResponse = GetParametersForImportResponse 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "ImportToken" :: NullOrUndefined.NullOrUndefined (CiphertextType)
  , "PublicKey" :: NullOrUndefined.NullOrUndefined (PlaintextType)
  , "ParametersValidTo" :: NullOrUndefined.NullOrUndefined (DateType)
  }
derive instance newtypeGetParametersForImportResponse :: Newtype GetParametersForImportResponse _
derive instance repGenericGetParametersForImportResponse :: Generic GetParametersForImportResponse _
instance showGetParametersForImportResponse :: Show GetParametersForImportResponse where
  show = genericShow
instance decodeGetParametersForImportResponse :: Decode GetParametersForImportResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetParametersForImportResponse :: Encode GetParametersForImportResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetParametersForImportResponse from required parameters
newGetParametersForImportResponse :: GetParametersForImportResponse
newGetParametersForImportResponse  = GetParametersForImportResponse { "ImportToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "ParametersValidTo": (NullOrUndefined Nothing), "PublicKey": (NullOrUndefined Nothing) }

-- | Constructs GetParametersForImportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetParametersForImportResponse' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "ImportToken" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "PublicKey" :: NullOrUndefined.NullOrUndefined (PlaintextType) , "ParametersValidTo" :: NullOrUndefined.NullOrUndefined (DateType) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "ImportToken" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "PublicKey" :: NullOrUndefined.NullOrUndefined (PlaintextType) , "ParametersValidTo" :: NullOrUndefined.NullOrUndefined (DateType) } ) -> GetParametersForImportResponse
newGetParametersForImportResponse'  customize = (GetParametersForImportResponse <<< customize) { "ImportToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "ParametersValidTo": (NullOrUndefined Nothing), "PublicKey": (NullOrUndefined Nothing) }



-- | <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In constrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>
newtype GrantConstraints = GrantConstraints 
  { "EncryptionContextSubset" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "EncryptionContextEquals" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  }
derive instance newtypeGrantConstraints :: Newtype GrantConstraints _
derive instance repGenericGrantConstraints :: Generic GrantConstraints _
instance showGrantConstraints :: Show GrantConstraints where
  show = genericShow
instance decodeGrantConstraints :: Decode GrantConstraints where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantConstraints :: Encode GrantConstraints where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GrantConstraints from required parameters
newGrantConstraints :: GrantConstraints
newGrantConstraints  = GrantConstraints { "EncryptionContextEquals": (NullOrUndefined Nothing), "EncryptionContextSubset": (NullOrUndefined Nothing) }

-- | Constructs GrantConstraints's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantConstraints' :: ( { "EncryptionContextSubset" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "EncryptionContextEquals" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) } -> {"EncryptionContextSubset" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "EncryptionContextEquals" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) } ) -> GrantConstraints
newGrantConstraints'  customize = (GrantConstraints <<< customize) { "EncryptionContextEquals": (NullOrUndefined Nothing), "EncryptionContextSubset": (NullOrUndefined Nothing) }



newtype GrantIdType = GrantIdType String
derive instance newtypeGrantIdType :: Newtype GrantIdType _
derive instance repGenericGrantIdType :: Generic GrantIdType _
instance showGrantIdType :: Show GrantIdType where
  show = genericShow
instance decodeGrantIdType :: Decode GrantIdType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantIdType :: Encode GrantIdType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GrantList = GrantList (Array GrantListEntry)
derive instance newtypeGrantList :: Newtype GrantList _
derive instance repGenericGrantList :: Generic GrantList _
instance showGrantList :: Show GrantList where
  show = genericShow
instance decodeGrantList :: Decode GrantList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantList :: Encode GrantList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about an entry in a list of grants.</p>
newtype GrantListEntry = GrantListEntry 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType)
  , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType)
  , "GranteePrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType)
  , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType)
  , "IssuingAccount" :: NullOrUndefined.NullOrUndefined (PrincipalIdType)
  , "Operations" :: NullOrUndefined.NullOrUndefined (GrantOperationList)
  , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints)
  }
derive instance newtypeGrantListEntry :: Newtype GrantListEntry _
derive instance repGenericGrantListEntry :: Generic GrantListEntry _
instance showGrantListEntry :: Show GrantListEntry where
  show = genericShow
instance decodeGrantListEntry :: Decode GrantListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantListEntry :: Encode GrantListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GrantListEntry from required parameters
newGrantListEntry :: GrantListEntry
newGrantListEntry  = GrantListEntry { "Constraints": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "GrantId": (NullOrUndefined Nothing), "GranteePrincipal": (NullOrUndefined Nothing), "IssuingAccount": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }

-- | Constructs GrantListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantListEntry' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType) , "GranteePrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "IssuingAccount" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "Operations" :: NullOrUndefined.NullOrUndefined (GrantOperationList) , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) , "Name" :: NullOrUndefined.NullOrUndefined (GrantNameType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType) , "GranteePrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "RetiringPrincipal" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "IssuingAccount" :: NullOrUndefined.NullOrUndefined (PrincipalIdType) , "Operations" :: NullOrUndefined.NullOrUndefined (GrantOperationList) , "Constraints" :: NullOrUndefined.NullOrUndefined (GrantConstraints) } ) -> GrantListEntry
newGrantListEntry'  customize = (GrantListEntry <<< customize) { "Constraints": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "GrantId": (NullOrUndefined Nothing), "GranteePrincipal": (NullOrUndefined Nothing), "IssuingAccount": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Operations": (NullOrUndefined Nothing), "RetiringPrincipal": (NullOrUndefined Nothing) }



newtype GrantNameType = GrantNameType String
derive instance newtypeGrantNameType :: Newtype GrantNameType _
derive instance repGenericGrantNameType :: Generic GrantNameType _
instance showGrantNameType :: Show GrantNameType where
  show = genericShow
instance decodeGrantNameType :: Decode GrantNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantNameType :: Encode GrantNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GrantOperation = GrantOperation String
derive instance newtypeGrantOperation :: Newtype GrantOperation _
derive instance repGenericGrantOperation :: Generic GrantOperation _
instance showGrantOperation :: Show GrantOperation where
  show = genericShow
instance decodeGrantOperation :: Decode GrantOperation where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantOperation :: Encode GrantOperation where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GrantOperationList = GrantOperationList (Array GrantOperation)
derive instance newtypeGrantOperationList :: Newtype GrantOperationList _
derive instance repGenericGrantOperationList :: Generic GrantOperationList _
instance showGrantOperationList :: Show GrantOperationList where
  show = genericShow
instance decodeGrantOperationList :: Decode GrantOperationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantOperationList :: Encode GrantOperationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GrantTokenList = GrantTokenList (Array GrantTokenType)
derive instance newtypeGrantTokenList :: Newtype GrantTokenList _
derive instance repGenericGrantTokenList :: Generic GrantTokenList _
instance showGrantTokenList :: Show GrantTokenList where
  show = genericShow
instance decodeGrantTokenList :: Decode GrantTokenList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantTokenList :: Encode GrantTokenList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GrantTokenType = GrantTokenType String
derive instance newtypeGrantTokenType :: Newtype GrantTokenType _
derive instance repGenericGrantTokenType :: Generic GrantTokenType _
instance showGrantTokenType :: Show GrantTokenType where
  show = genericShow
instance decodeGrantTokenType :: Decode GrantTokenType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGrantTokenType :: Encode GrantTokenType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ImportKeyMaterialRequest = ImportKeyMaterialRequest 
  { "KeyId" :: (KeyIdType)
  , "ImportToken" :: (CiphertextType)
  , "EncryptedKeyMaterial" :: (CiphertextType)
  , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType)
  , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType)
  }
derive instance newtypeImportKeyMaterialRequest :: Newtype ImportKeyMaterialRequest _
derive instance repGenericImportKeyMaterialRequest :: Generic ImportKeyMaterialRequest _
instance showImportKeyMaterialRequest :: Show ImportKeyMaterialRequest where
  show = genericShow
instance decodeImportKeyMaterialRequest :: Decode ImportKeyMaterialRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImportKeyMaterialRequest :: Encode ImportKeyMaterialRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ImportKeyMaterialRequest from required parameters
newImportKeyMaterialRequest :: CiphertextType -> CiphertextType -> KeyIdType -> ImportKeyMaterialRequest
newImportKeyMaterialRequest _EncryptedKeyMaterial _ImportToken _KeyId = ImportKeyMaterialRequest { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }

-- | Constructs ImportKeyMaterialRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImportKeyMaterialRequest' :: CiphertextType -> CiphertextType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType) , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType) } -> {"KeyId" :: (KeyIdType) , "ImportToken" :: (CiphertextType) , "EncryptedKeyMaterial" :: (CiphertextType) , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType) , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType) } ) -> ImportKeyMaterialRequest
newImportKeyMaterialRequest' _EncryptedKeyMaterial _ImportToken _KeyId customize = (ImportKeyMaterialRequest <<< customize) { "EncryptedKeyMaterial": _EncryptedKeyMaterial, "ImportToken": _ImportToken, "KeyId": _KeyId, "ExpirationModel": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }



newtype ImportKeyMaterialResponse = ImportKeyMaterialResponse Types.NoArguments
derive instance newtypeImportKeyMaterialResponse :: Newtype ImportKeyMaterialResponse _
derive instance repGenericImportKeyMaterialResponse :: Generic ImportKeyMaterialResponse _
instance showImportKeyMaterialResponse :: Show ImportKeyMaterialResponse where
  show = genericShow
instance decodeImportKeyMaterialResponse :: Decode ImportKeyMaterialResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeImportKeyMaterialResponse :: Encode ImportKeyMaterialResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
newtype IncorrectKeyMaterialException = IncorrectKeyMaterialException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeIncorrectKeyMaterialException :: Newtype IncorrectKeyMaterialException _
derive instance repGenericIncorrectKeyMaterialException :: Generic IncorrectKeyMaterialException _
instance showIncorrectKeyMaterialException :: Show IncorrectKeyMaterialException where
  show = genericShow
instance decodeIncorrectKeyMaterialException :: Decode IncorrectKeyMaterialException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIncorrectKeyMaterialException :: Encode IncorrectKeyMaterialException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs IncorrectKeyMaterialException from required parameters
newIncorrectKeyMaterialException :: IncorrectKeyMaterialException
newIncorrectKeyMaterialException  = IncorrectKeyMaterialException { "message": (NullOrUndefined Nothing) }

-- | Constructs IncorrectKeyMaterialException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncorrectKeyMaterialException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> IncorrectKeyMaterialException
newIncorrectKeyMaterialException'  customize = (IncorrectKeyMaterialException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified alias name is not valid.</p>
newtype InvalidAliasNameException = InvalidAliasNameException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidAliasNameException :: Newtype InvalidAliasNameException _
derive instance repGenericInvalidAliasNameException :: Generic InvalidAliasNameException _
instance showInvalidAliasNameException :: Show InvalidAliasNameException where
  show = genericShow
instance decodeInvalidAliasNameException :: Decode InvalidAliasNameException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidAliasNameException :: Encode InvalidAliasNameException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidAliasNameException from required parameters
newInvalidAliasNameException :: InvalidAliasNameException
newInvalidAliasNameException  = InvalidAliasNameException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAliasNameException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAliasNameException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidAliasNameException
newInvalidAliasNameException'  customize = (InvalidAliasNameException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because a specified ARN was not valid.</p>
newtype InvalidArnException = InvalidArnException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidArnException :: Newtype InvalidArnException _
derive instance repGenericInvalidArnException :: Generic InvalidArnException _
instance showInvalidArnException :: Show InvalidArnException where
  show = genericShow
instance decodeInvalidArnException :: Decode InvalidArnException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidArnException :: Encode InvalidArnException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidArnException from required parameters
newInvalidArnException :: InvalidArnException
newInvalidArnException  = InvalidArnException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArnException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArnException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidArnException
newInvalidArnException'  customize = (InvalidArnException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.</p>
newtype InvalidCiphertextException = InvalidCiphertextException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidCiphertextException :: Newtype InvalidCiphertextException _
derive instance repGenericInvalidCiphertextException :: Generic InvalidCiphertextException _
instance showInvalidCiphertextException :: Show InvalidCiphertextException where
  show = genericShow
instance decodeInvalidCiphertextException :: Decode InvalidCiphertextException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidCiphertextException :: Encode InvalidCiphertextException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidCiphertextException from required parameters
newInvalidCiphertextException :: InvalidCiphertextException
newInvalidCiphertextException  = InvalidCiphertextException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidCiphertextException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCiphertextException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidCiphertextException
newInvalidCiphertextException'  customize = (InvalidCiphertextException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
newtype InvalidGrantIdException = InvalidGrantIdException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidGrantIdException :: Newtype InvalidGrantIdException _
derive instance repGenericInvalidGrantIdException :: Generic InvalidGrantIdException _
instance showInvalidGrantIdException :: Show InvalidGrantIdException where
  show = genericShow
instance decodeInvalidGrantIdException :: Decode InvalidGrantIdException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidGrantIdException :: Encode InvalidGrantIdException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidGrantIdException from required parameters
newInvalidGrantIdException :: InvalidGrantIdException
newInvalidGrantIdException  = InvalidGrantIdException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidGrantIdException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantIdException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidGrantIdException
newInvalidGrantIdException'  customize = (InvalidGrantIdException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified grant token is not valid.</p>
newtype InvalidGrantTokenException = InvalidGrantTokenException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidGrantTokenException :: Newtype InvalidGrantTokenException _
derive instance repGenericInvalidGrantTokenException :: Generic InvalidGrantTokenException _
instance showInvalidGrantTokenException :: Show InvalidGrantTokenException where
  show = genericShow
instance decodeInvalidGrantTokenException :: Decode InvalidGrantTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidGrantTokenException :: Encode InvalidGrantTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidGrantTokenException from required parameters
newInvalidGrantTokenException :: InvalidGrantTokenException
newInvalidGrantTokenException  = InvalidGrantTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidGrantTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidGrantTokenException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidGrantTokenException
newInvalidGrantTokenException'  customize = (InvalidGrantTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
newtype InvalidImportTokenException = InvalidImportTokenException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidImportTokenException :: Newtype InvalidImportTokenException _
derive instance repGenericInvalidImportTokenException :: Generic InvalidImportTokenException _
instance showInvalidImportTokenException :: Show InvalidImportTokenException where
  show = genericShow
instance decodeInvalidImportTokenException :: Decode InvalidImportTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidImportTokenException :: Encode InvalidImportTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidImportTokenException from required parameters
newInvalidImportTokenException :: InvalidImportTokenException
newInvalidImportTokenException  = InvalidImportTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidImportTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidImportTokenException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidImportTokenException
newInvalidImportTokenException'  customize = (InvalidImportTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
newtype InvalidKeyUsageException = InvalidKeyUsageException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidKeyUsageException :: Newtype InvalidKeyUsageException _
derive instance repGenericInvalidKeyUsageException :: Generic InvalidKeyUsageException _
instance showInvalidKeyUsageException :: Show InvalidKeyUsageException where
  show = genericShow
instance decodeInvalidKeyUsageException :: Decode InvalidKeyUsageException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidKeyUsageException :: Encode InvalidKeyUsageException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidKeyUsageException from required parameters
newInvalidKeyUsageException :: InvalidKeyUsageException
newInvalidKeyUsageException  = InvalidKeyUsageException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidKeyUsageException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidKeyUsageException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidKeyUsageException
newInvalidKeyUsageException'  customize = (InvalidKeyUsageException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
newtype InvalidMarkerException = InvalidMarkerException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeInvalidMarkerException :: Newtype InvalidMarkerException _
derive instance repGenericInvalidMarkerException :: Generic InvalidMarkerException _
instance showInvalidMarkerException :: Show InvalidMarkerException where
  show = genericShow
instance decodeInvalidMarkerException :: Decode InvalidMarkerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidMarkerException :: Encode InvalidMarkerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidMarkerException from required parameters
newInvalidMarkerException :: InvalidMarkerException
newInvalidMarkerException  = InvalidMarkerException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidMarkerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidMarkerException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> InvalidMarkerException
newInvalidMarkerException'  customize = (InvalidMarkerException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
newtype KMSInternalException = KMSInternalException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKMSInternalException :: Newtype KMSInternalException _
derive instance repGenericKMSInternalException :: Generic KMSInternalException _
instance showKMSInternalException :: Show KMSInternalException where
  show = genericShow
instance decodeKMSInternalException :: Decode KMSInternalException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKMSInternalException :: Encode KMSInternalException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KMSInternalException from required parameters
newKMSInternalException :: KMSInternalException
newKMSInternalException  = KMSInternalException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSInternalException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInternalException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> KMSInternalException
newKMSInternalException'  customize = (KMSInternalException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype KMSInvalidStateException = KMSInvalidStateException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKMSInvalidStateException :: Newtype KMSInvalidStateException _
derive instance repGenericKMSInvalidStateException :: Generic KMSInvalidStateException _
instance showKMSInvalidStateException :: Show KMSInvalidStateException where
  show = genericShow
instance decodeKMSInvalidStateException :: Decode KMSInvalidStateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKMSInvalidStateException :: Encode KMSInvalidStateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KMSInvalidStateException from required parameters
newKMSInvalidStateException :: KMSInvalidStateException
newKMSInvalidStateException  = KMSInvalidStateException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSInvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInvalidStateException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> KMSInvalidStateException
newKMSInvalidStateException'  customize = (KMSInvalidStateException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype KeyIdType = KeyIdType String
derive instance newtypeKeyIdType :: Newtype KeyIdType _
derive instance repGenericKeyIdType :: Generic KeyIdType _
instance showKeyIdType :: Show KeyIdType where
  show = genericShow
instance decodeKeyIdType :: Decode KeyIdType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyIdType :: Encode KeyIdType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype KeyList = KeyList (Array KeyListEntry)
derive instance newtypeKeyList :: Newtype KeyList _
derive instance repGenericKeyList :: Generic KeyList _
instance showKeyList :: Show KeyList where
  show = genericShow
instance decodeKeyList :: Decode KeyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyList :: Encode KeyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about each entry in the key list.</p>
newtype KeyListEntry = KeyListEntry 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "KeyArn" :: NullOrUndefined.NullOrUndefined (ArnType)
  }
derive instance newtypeKeyListEntry :: Newtype KeyListEntry _
derive instance repGenericKeyListEntry :: Generic KeyListEntry _
instance showKeyListEntry :: Show KeyListEntry where
  show = genericShow
instance decodeKeyListEntry :: Decode KeyListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyListEntry :: Encode KeyListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyListEntry from required parameters
newKeyListEntry :: KeyListEntry
newKeyListEntry  = KeyListEntry { "KeyArn": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs KeyListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyListEntry' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "KeyArn" :: NullOrUndefined.NullOrUndefined (ArnType) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "KeyArn" :: NullOrUndefined.NullOrUndefined (ArnType) } ) -> KeyListEntry
newKeyListEntry'  customize = (KeyListEntry <<< customize) { "KeyArn": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype KeyManagerType = KeyManagerType String
derive instance newtypeKeyManagerType :: Newtype KeyManagerType _
derive instance repGenericKeyManagerType :: Generic KeyManagerType _
instance showKeyManagerType :: Show KeyManagerType where
  show = genericShow
instance decodeKeyManagerType :: Decode KeyManagerType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyManagerType :: Encode KeyManagerType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
newtype KeyMetadata = KeyMetadata 
  { "AWSAccountId" :: NullOrUndefined.NullOrUndefined (AWSAccountIdType)
  , "KeyId" :: (KeyIdType)
  , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType)
  , "Enabled" :: NullOrUndefined.NullOrUndefined (BooleanType)
  , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType)
  , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType)
  , "KeyState" :: NullOrUndefined.NullOrUndefined (KeyState)
  , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType)
  , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType)
  , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType)
  , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType)
  , "KeyManager" :: NullOrUndefined.NullOrUndefined (KeyManagerType)
  }
derive instance newtypeKeyMetadata :: Newtype KeyMetadata _
derive instance repGenericKeyMetadata :: Generic KeyMetadata _
instance showKeyMetadata :: Show KeyMetadata where
  show = genericShow
instance decodeKeyMetadata :: Decode KeyMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyMetadata :: Encode KeyMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyMetadata from required parameters
newKeyMetadata :: KeyIdType -> KeyMetadata
newKeyMetadata _KeyId = KeyMetadata { "KeyId": _KeyId, "AWSAccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DeletionDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Enabled": (NullOrUndefined Nothing), "ExpirationModel": (NullOrUndefined Nothing), "KeyManager": (NullOrUndefined Nothing), "KeyState": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }

-- | Constructs KeyMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyMetadata' :: KeyIdType -> ( { "AWSAccountId" :: NullOrUndefined.NullOrUndefined (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType) , "Enabled" :: NullOrUndefined.NullOrUndefined (BooleanType) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType) , "KeyState" :: NullOrUndefined.NullOrUndefined (KeyState) , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType) , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType) , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType) , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType) , "KeyManager" :: NullOrUndefined.NullOrUndefined (KeyManagerType) } -> {"AWSAccountId" :: NullOrUndefined.NullOrUndefined (AWSAccountIdType) , "KeyId" :: (KeyIdType) , "Arn" :: NullOrUndefined.NullOrUndefined (ArnType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (DateType) , "Enabled" :: NullOrUndefined.NullOrUndefined (BooleanType) , "Description" :: NullOrUndefined.NullOrUndefined (DescriptionType) , "KeyUsage" :: NullOrUndefined.NullOrUndefined (KeyUsageType) , "KeyState" :: NullOrUndefined.NullOrUndefined (KeyState) , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType) , "ValidTo" :: NullOrUndefined.NullOrUndefined (DateType) , "Origin" :: NullOrUndefined.NullOrUndefined (OriginType) , "ExpirationModel" :: NullOrUndefined.NullOrUndefined (ExpirationModelType) , "KeyManager" :: NullOrUndefined.NullOrUndefined (KeyManagerType) } ) -> KeyMetadata
newKeyMetadata' _KeyId customize = (KeyMetadata <<< customize) { "KeyId": _KeyId, "AWSAccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DeletionDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Enabled": (NullOrUndefined Nothing), "ExpirationModel": (NullOrUndefined Nothing), "KeyManager": (NullOrUndefined Nothing), "KeyState": (NullOrUndefined Nothing), "KeyUsage": (NullOrUndefined Nothing), "Origin": (NullOrUndefined Nothing), "ValidTo": (NullOrUndefined Nothing) }



newtype KeyState = KeyState String
derive instance newtypeKeyState :: Newtype KeyState _
derive instance repGenericKeyState :: Generic KeyState _
instance showKeyState :: Show KeyState where
  show = genericShow
instance decodeKeyState :: Decode KeyState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyState :: Encode KeyState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
newtype KeyUnavailableException = KeyUnavailableException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeKeyUnavailableException :: Newtype KeyUnavailableException _
derive instance repGenericKeyUnavailableException :: Generic KeyUnavailableException _
instance showKeyUnavailableException :: Show KeyUnavailableException where
  show = genericShow
instance decodeKeyUnavailableException :: Decode KeyUnavailableException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyUnavailableException :: Encode KeyUnavailableException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyUnavailableException from required parameters
newKeyUnavailableException :: KeyUnavailableException
newKeyUnavailableException  = KeyUnavailableException { "message": (NullOrUndefined Nothing) }

-- | Constructs KeyUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyUnavailableException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> KeyUnavailableException
newKeyUnavailableException'  customize = (KeyUnavailableException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype KeyUsageType = KeyUsageType String
derive instance newtypeKeyUsageType :: Newtype KeyUsageType _
derive instance repGenericKeyUsageType :: Generic KeyUsageType _
instance showKeyUsageType :: Show KeyUsageType where
  show = genericShow
instance decodeKeyUsageType :: Decode KeyUsageType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyUsageType :: Encode KeyUsageType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where
  show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitExceededException :: Encode LimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype LimitType = LimitType Int
derive instance newtypeLimitType :: Newtype LimitType _
derive instance repGenericLimitType :: Generic LimitType _
instance showLimitType :: Show LimitType where
  show = genericShow
instance decodeLimitType :: Decode LimitType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLimitType :: Encode LimitType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListAliasesRequest = ListAliasesRequest 
  { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  }
derive instance newtypeListAliasesRequest :: Newtype ListAliasesRequest _
derive instance repGenericListAliasesRequest :: Generic ListAliasesRequest _
instance showListAliasesRequest :: Show ListAliasesRequest where
  show = genericShow
instance decodeListAliasesRequest :: Decode ListAliasesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAliasesRequest :: Encode ListAliasesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAliasesRequest from required parameters
newListAliasesRequest :: ListAliasesRequest
newListAliasesRequest  = ListAliasesRequest { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesRequest' :: ( { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } -> {"Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } ) -> ListAliasesRequest
newListAliasesRequest'  customize = (ListAliasesRequest <<< customize) { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListAliasesResponse = ListAliasesResponse 
  { "Aliases" :: NullOrUndefined.NullOrUndefined (AliasList)
  , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeListAliasesResponse :: Newtype ListAliasesResponse _
derive instance repGenericListAliasesResponse :: Generic ListAliasesResponse _
instance showListAliasesResponse :: Show ListAliasesResponse where
  show = genericShow
instance decodeListAliasesResponse :: Decode ListAliasesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAliasesResponse :: Encode ListAliasesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAliasesResponse from required parameters
newListAliasesResponse :: ListAliasesResponse
newListAliasesResponse  = ListAliasesResponse { "Aliases": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAliasesResponse' :: ( { "Aliases" :: NullOrUndefined.NullOrUndefined (AliasList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"Aliases" :: NullOrUndefined.NullOrUndefined (AliasList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> ListAliasesResponse
newListAliasesResponse'  customize = (ListAliasesResponse <<< customize) { "Aliases": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListGrantsRequest = ListGrantsRequest 
  { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "KeyId" :: (KeyIdType)
  }
derive instance newtypeListGrantsRequest :: Newtype ListGrantsRequest _
derive instance repGenericListGrantsRequest :: Generic ListGrantsRequest _
instance showListGrantsRequest :: Show ListGrantsRequest where
  show = genericShow
instance decodeListGrantsRequest :: Decode ListGrantsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGrantsRequest :: Encode ListGrantsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGrantsRequest from required parameters
newListGrantsRequest :: KeyIdType -> ListGrantsRequest
newListGrantsRequest _KeyId = ListGrantsRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsRequest' :: KeyIdType -> ( { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "KeyId" :: (KeyIdType) } -> {"Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "KeyId" :: (KeyIdType) } ) -> ListGrantsRequest
newListGrantsRequest' _KeyId customize = (ListGrantsRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListGrantsResponse = ListGrantsResponse 
  { "Grants" :: NullOrUndefined.NullOrUndefined (GrantList)
  , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeListGrantsResponse :: Newtype ListGrantsResponse _
derive instance repGenericListGrantsResponse :: Generic ListGrantsResponse _
instance showListGrantsResponse :: Show ListGrantsResponse where
  show = genericShow
instance decodeListGrantsResponse :: Decode ListGrantsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGrantsResponse :: Encode ListGrantsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGrantsResponse from required parameters
newListGrantsResponse :: ListGrantsResponse
newListGrantsResponse  = ListGrantsResponse { "Grants": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListGrantsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGrantsResponse' :: ( { "Grants" :: NullOrUndefined.NullOrUndefined (GrantList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"Grants" :: NullOrUndefined.NullOrUndefined (GrantList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> ListGrantsResponse
newListGrantsResponse'  customize = (ListGrantsResponse <<< customize) { "Grants": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListKeyPoliciesRequest = ListKeyPoliciesRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  }
derive instance newtypeListKeyPoliciesRequest :: Newtype ListKeyPoliciesRequest _
derive instance repGenericListKeyPoliciesRequest :: Generic ListKeyPoliciesRequest _
instance showListKeyPoliciesRequest :: Show ListKeyPoliciesRequest where
  show = genericShow
instance decodeListKeyPoliciesRequest :: Decode ListKeyPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListKeyPoliciesRequest :: Encode ListKeyPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListKeyPoliciesRequest from required parameters
newListKeyPoliciesRequest :: KeyIdType -> ListKeyPoliciesRequest
newListKeyPoliciesRequest _KeyId = ListKeyPoliciesRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListKeyPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } ) -> ListKeyPoliciesRequest
newListKeyPoliciesRequest' _KeyId customize = (ListKeyPoliciesRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListKeyPoliciesResponse = ListKeyPoliciesResponse 
  { "PolicyNames" :: NullOrUndefined.NullOrUndefined (PolicyNameList)
  , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeListKeyPoliciesResponse :: Newtype ListKeyPoliciesResponse _
derive instance repGenericListKeyPoliciesResponse :: Generic ListKeyPoliciesResponse _
instance showListKeyPoliciesResponse :: Show ListKeyPoliciesResponse where
  show = genericShow
instance decodeListKeyPoliciesResponse :: Decode ListKeyPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListKeyPoliciesResponse :: Encode ListKeyPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListKeyPoliciesResponse from required parameters
newListKeyPoliciesResponse :: ListKeyPoliciesResponse
newListKeyPoliciesResponse  = ListKeyPoliciesResponse { "NextMarker": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListKeyPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeyPoliciesResponse' :: ( { "PolicyNames" :: NullOrUndefined.NullOrUndefined (PolicyNameList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"PolicyNames" :: NullOrUndefined.NullOrUndefined (PolicyNameList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> ListKeyPoliciesResponse
newListKeyPoliciesResponse'  customize = (ListKeyPoliciesResponse <<< customize) { "NextMarker": (NullOrUndefined Nothing), "PolicyNames": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListKeysRequest = ListKeysRequest 
  { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  }
derive instance newtypeListKeysRequest :: Newtype ListKeysRequest _
derive instance repGenericListKeysRequest :: Generic ListKeysRequest _
instance showListKeysRequest :: Show ListKeysRequest where
  show = genericShow
instance decodeListKeysRequest :: Decode ListKeysRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListKeysRequest :: Encode ListKeysRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListKeysRequest from required parameters
newListKeysRequest :: ListKeysRequest
newListKeysRequest  = ListKeysRequest { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysRequest' :: ( { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } -> {"Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } ) -> ListKeysRequest
newListKeysRequest'  customize = (ListKeysRequest <<< customize) { "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListKeysResponse = ListKeysResponse 
  { "Keys" :: NullOrUndefined.NullOrUndefined (KeyList)
  , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeListKeysResponse :: Newtype ListKeysResponse _
derive instance repGenericListKeysResponse :: Generic ListKeysResponse _
instance showListKeysResponse :: Show ListKeysResponse where
  show = genericShow
instance decodeListKeysResponse :: Decode ListKeysResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListKeysResponse :: Encode ListKeysResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListKeysResponse from required parameters
newListKeysResponse :: ListKeysResponse
newListKeysResponse  = ListKeysResponse { "Keys": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListKeysResponse' :: ( { "Keys" :: NullOrUndefined.NullOrUndefined (KeyList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"Keys" :: NullOrUndefined.NullOrUndefined (KeyList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> ListKeysResponse
newListKeysResponse'  customize = (ListKeysResponse <<< customize) { "Keys": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListResourceTagsRequest = ListResourceTagsRequest 
  { "KeyId" :: (KeyIdType)
  , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  }
derive instance newtypeListResourceTagsRequest :: Newtype ListResourceTagsRequest _
derive instance repGenericListResourceTagsRequest :: Generic ListResourceTagsRequest _
instance showListResourceTagsRequest :: Show ListResourceTagsRequest where
  show = genericShow
instance decodeListResourceTagsRequest :: Decode ListResourceTagsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListResourceTagsRequest :: Encode ListResourceTagsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListResourceTagsRequest from required parameters
newListResourceTagsRequest :: KeyIdType -> ListResourceTagsRequest
newListResourceTagsRequest _KeyId = ListResourceTagsRequest { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListResourceTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } -> {"KeyId" :: (KeyIdType) , "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) } ) -> ListResourceTagsRequest
newListResourceTagsRequest' _KeyId customize = (ListResourceTagsRequest <<< customize) { "KeyId": _KeyId, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListResourceTagsResponse = ListResourceTagsResponse 
  { "Tags" :: NullOrUndefined.NullOrUndefined (TagList)
  , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypeListResourceTagsResponse :: Newtype ListResourceTagsResponse _
derive instance repGenericListResourceTagsResponse :: Generic ListResourceTagsResponse _
instance showListResourceTagsResponse :: Show ListResourceTagsResponse where
  show = genericShow
instance decodeListResourceTagsResponse :: Decode ListResourceTagsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListResourceTagsResponse :: Encode ListResourceTagsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListResourceTagsResponse from required parameters
newListResourceTagsResponse :: ListResourceTagsResponse
newListResourceTagsResponse  = ListResourceTagsResponse { "NextMarker": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }

-- | Constructs ListResourceTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListResourceTagsResponse' :: ( { "Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "NextMarker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "Truncated" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> ListResourceTagsResponse
newListResourceTagsResponse'  customize = (ListResourceTagsResponse <<< customize) { "NextMarker": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "Truncated": (NullOrUndefined Nothing) }



newtype ListRetirableGrantsRequest = ListRetirableGrantsRequest 
  { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType)
  , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType)
  , "RetiringPrincipal" :: (PrincipalIdType)
  }
derive instance newtypeListRetirableGrantsRequest :: Newtype ListRetirableGrantsRequest _
derive instance repGenericListRetirableGrantsRequest :: Generic ListRetirableGrantsRequest _
instance showListRetirableGrantsRequest :: Show ListRetirableGrantsRequest where
  show = genericShow
instance decodeListRetirableGrantsRequest :: Decode ListRetirableGrantsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRetirableGrantsRequest :: Encode ListRetirableGrantsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRetirableGrantsRequest from required parameters
newListRetirableGrantsRequest :: PrincipalIdType -> ListRetirableGrantsRequest
newListRetirableGrantsRequest _RetiringPrincipal = ListRetirableGrantsRequest { "RetiringPrincipal": _RetiringPrincipal, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListRetirableGrantsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRetirableGrantsRequest' :: PrincipalIdType -> ( { "Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } -> {"Limit" :: NullOrUndefined.NullOrUndefined (LimitType) , "Marker" :: NullOrUndefined.NullOrUndefined (MarkerType) , "RetiringPrincipal" :: (PrincipalIdType) } ) -> ListRetirableGrantsRequest
newListRetirableGrantsRequest' _RetiringPrincipal customize = (ListRetirableGrantsRequest <<< customize) { "RetiringPrincipal": _RetiringPrincipal, "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where
  show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "message": (NullOrUndefined Nothing) }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype MarkerType = MarkerType String
derive instance newtypeMarkerType :: Newtype MarkerType _
derive instance repGenericMarkerType :: Generic MarkerType _
instance showMarkerType :: Show MarkerType where
  show = genericShow
instance decodeMarkerType :: Decode MarkerType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMarkerType :: Encode MarkerType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because the specified entity or resource could not be found.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype NumberOfBytesType = NumberOfBytesType Int
derive instance newtypeNumberOfBytesType :: Newtype NumberOfBytesType _
derive instance repGenericNumberOfBytesType :: Generic NumberOfBytesType _
instance showNumberOfBytesType :: Show NumberOfBytesType where
  show = genericShow
instance decodeNumberOfBytesType :: Decode NumberOfBytesType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNumberOfBytesType :: Encode NumberOfBytesType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OriginType = OriginType String
derive instance newtypeOriginType :: Newtype OriginType _
derive instance repGenericOriginType :: Generic OriginType _
instance showOriginType :: Show OriginType where
  show = genericShow
instance decodeOriginType :: Decode OriginType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOriginType :: Encode OriginType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PendingWindowInDaysType = PendingWindowInDaysType Int
derive instance newtypePendingWindowInDaysType :: Newtype PendingWindowInDaysType _
derive instance repGenericPendingWindowInDaysType :: Generic PendingWindowInDaysType _
instance showPendingWindowInDaysType :: Show PendingWindowInDaysType where
  show = genericShow
instance decodePendingWindowInDaysType :: Decode PendingWindowInDaysType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePendingWindowInDaysType :: Encode PendingWindowInDaysType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PlaintextType = PlaintextType String
derive instance newtypePlaintextType :: Newtype PlaintextType _
derive instance repGenericPlaintextType :: Generic PlaintextType _
instance showPlaintextType :: Show PlaintextType where
  show = genericShow
instance decodePlaintextType :: Decode PlaintextType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlaintextType :: Encode PlaintextType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyNameList = PolicyNameList (Array PolicyNameType)
derive instance newtypePolicyNameList :: Newtype PolicyNameList _
derive instance repGenericPolicyNameList :: Generic PolicyNameList _
instance showPolicyNameList :: Show PolicyNameList where
  show = genericShow
instance decodePolicyNameList :: Decode PolicyNameList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNameList :: Encode PolicyNameList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyNameType = PolicyNameType String
derive instance newtypePolicyNameType :: Newtype PolicyNameType _
derive instance repGenericPolicyNameType :: Generic PolicyNameType _
instance showPolicyNameType :: Show PolicyNameType where
  show = genericShow
instance decodePolicyNameType :: Decode PolicyNameType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNameType :: Encode PolicyNameType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where
  show = genericShow
instance decodePolicyType :: Decode PolicyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyType :: Encode PolicyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PrincipalIdType = PrincipalIdType String
derive instance newtypePrincipalIdType :: Newtype PrincipalIdType _
derive instance repGenericPrincipalIdType :: Generic PrincipalIdType _
instance showPrincipalIdType :: Show PrincipalIdType where
  show = genericShow
instance decodePrincipalIdType :: Decode PrincipalIdType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePrincipalIdType :: Encode PrincipalIdType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PutKeyPolicyRequest = PutKeyPolicyRequest 
  { "KeyId" :: (KeyIdType)
  , "PolicyName" :: (PolicyNameType)
  , "Policy" :: (PolicyType)
  , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType)
  }
derive instance newtypePutKeyPolicyRequest :: Newtype PutKeyPolicyRequest _
derive instance repGenericPutKeyPolicyRequest :: Generic PutKeyPolicyRequest _
instance showPutKeyPolicyRequest :: Show PutKeyPolicyRequest where
  show = genericShow
instance decodePutKeyPolicyRequest :: Decode PutKeyPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutKeyPolicyRequest :: Encode PutKeyPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutKeyPolicyRequest from required parameters
newPutKeyPolicyRequest :: KeyIdType -> PolicyType -> PolicyNameType -> PutKeyPolicyRequest
newPutKeyPolicyRequest _KeyId _Policy _PolicyName = PutKeyPolicyRequest { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing) }

-- | Constructs PutKeyPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutKeyPolicyRequest' :: KeyIdType -> PolicyType -> PolicyNameType -> ( { "KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType) } -> {"KeyId" :: (KeyIdType) , "PolicyName" :: (PolicyNameType) , "Policy" :: (PolicyType) , "BypassPolicyLockoutSafetyCheck" :: NullOrUndefined.NullOrUndefined (BooleanType) } ) -> PutKeyPolicyRequest
newPutKeyPolicyRequest' _KeyId _Policy _PolicyName customize = (PutKeyPolicyRequest <<< customize) { "KeyId": _KeyId, "Policy": _Policy, "PolicyName": _PolicyName, "BypassPolicyLockoutSafetyCheck": (NullOrUndefined Nothing) }



newtype ReEncryptRequest = ReEncryptRequest 
  { "CiphertextBlob" :: (CiphertextType)
  , "SourceEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "DestinationKeyId" :: (KeyIdType)
  , "DestinationEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType)
  , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList)
  }
derive instance newtypeReEncryptRequest :: Newtype ReEncryptRequest _
derive instance repGenericReEncryptRequest :: Generic ReEncryptRequest _
instance showReEncryptRequest :: Show ReEncryptRequest where
  show = genericShow
instance decodeReEncryptRequest :: Decode ReEncryptRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReEncryptRequest :: Encode ReEncryptRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReEncryptRequest from required parameters
newReEncryptRequest :: CiphertextType -> KeyIdType -> ReEncryptRequest
newReEncryptRequest _CiphertextBlob _DestinationKeyId = ReEncryptRequest { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "SourceEncryptionContext": (NullOrUndefined Nothing) }

-- | Constructs ReEncryptRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptRequest' :: CiphertextType -> KeyIdType -> ( { "CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } -> {"CiphertextBlob" :: (CiphertextType) , "SourceEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "DestinationKeyId" :: (KeyIdType) , "DestinationEncryptionContext" :: NullOrUndefined.NullOrUndefined (EncryptionContextType) , "GrantTokens" :: NullOrUndefined.NullOrUndefined (GrantTokenList) } ) -> ReEncryptRequest
newReEncryptRequest' _CiphertextBlob _DestinationKeyId customize = (ReEncryptRequest <<< customize) { "CiphertextBlob": _CiphertextBlob, "DestinationKeyId": _DestinationKeyId, "DestinationEncryptionContext": (NullOrUndefined Nothing), "GrantTokens": (NullOrUndefined Nothing), "SourceEncryptionContext": (NullOrUndefined Nothing) }



newtype ReEncryptResponse = ReEncryptResponse 
  { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType)
  , "SourceKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  }
derive instance newtypeReEncryptResponse :: Newtype ReEncryptResponse _
derive instance repGenericReEncryptResponse :: Generic ReEncryptResponse _
instance showReEncryptResponse :: Show ReEncryptResponse where
  show = genericShow
instance decodeReEncryptResponse :: Decode ReEncryptResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeReEncryptResponse :: Encode ReEncryptResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ReEncryptResponse from required parameters
newReEncryptResponse :: ReEncryptResponse
newReEncryptResponse  = ReEncryptResponse { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "SourceKeyId": (NullOrUndefined Nothing) }

-- | Constructs ReEncryptResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReEncryptResponse' :: ( { "CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "SourceKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } -> {"CiphertextBlob" :: NullOrUndefined.NullOrUndefined (CiphertextType) , "SourceKeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) } ) -> ReEncryptResponse
newReEncryptResponse'  customize = (ReEncryptResponse <<< customize) { "CiphertextBlob": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing), "SourceKeyId": (NullOrUndefined Nothing) }



newtype RetireGrantRequest = RetireGrantRequest 
  { "GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType)
  , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType)
  }
derive instance newtypeRetireGrantRequest :: Newtype RetireGrantRequest _
derive instance repGenericRetireGrantRequest :: Generic RetireGrantRequest _
instance showRetireGrantRequest :: Show RetireGrantRequest where
  show = genericShow
instance decodeRetireGrantRequest :: Decode RetireGrantRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRetireGrantRequest :: Encode RetireGrantRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RetireGrantRequest from required parameters
newRetireGrantRequest :: RetireGrantRequest
newRetireGrantRequest  = RetireGrantRequest { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs RetireGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRetireGrantRequest' :: ( { "GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) } -> {"GrantToken" :: NullOrUndefined.NullOrUndefined (GrantTokenType) , "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "GrantId" :: NullOrUndefined.NullOrUndefined (GrantIdType) } ) -> RetireGrantRequest
newRetireGrantRequest'  customize = (RetireGrantRequest <<< customize) { "GrantId": (NullOrUndefined Nothing), "GrantToken": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype RevokeGrantRequest = RevokeGrantRequest 
  { "KeyId" :: (KeyIdType)
  , "GrantId" :: (GrantIdType)
  }
derive instance newtypeRevokeGrantRequest :: Newtype RevokeGrantRequest _
derive instance repGenericRevokeGrantRequest :: Generic RevokeGrantRequest _
instance showRevokeGrantRequest :: Show RevokeGrantRequest where
  show = genericShow
instance decodeRevokeGrantRequest :: Decode RevokeGrantRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRevokeGrantRequest :: Encode RevokeGrantRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RevokeGrantRequest from required parameters
newRevokeGrantRequest :: GrantIdType -> KeyIdType -> RevokeGrantRequest
newRevokeGrantRequest _GrantId _KeyId = RevokeGrantRequest { "GrantId": _GrantId, "KeyId": _KeyId }

-- | Constructs RevokeGrantRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRevokeGrantRequest' :: GrantIdType -> KeyIdType -> ( { "KeyId" :: (KeyIdType) , "GrantId" :: (GrantIdType) } -> {"KeyId" :: (KeyIdType) , "GrantId" :: (GrantIdType) } ) -> RevokeGrantRequest
newRevokeGrantRequest' _GrantId _KeyId customize = (RevokeGrantRequest <<< customize) { "GrantId": _GrantId, "KeyId": _KeyId }



newtype ScheduleKeyDeletionRequest = ScheduleKeyDeletionRequest 
  { "KeyId" :: (KeyIdType)
  , "PendingWindowInDays" :: NullOrUndefined.NullOrUndefined (PendingWindowInDaysType)
  }
derive instance newtypeScheduleKeyDeletionRequest :: Newtype ScheduleKeyDeletionRequest _
derive instance repGenericScheduleKeyDeletionRequest :: Generic ScheduleKeyDeletionRequest _
instance showScheduleKeyDeletionRequest :: Show ScheduleKeyDeletionRequest where
  show = genericShow
instance decodeScheduleKeyDeletionRequest :: Decode ScheduleKeyDeletionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScheduleKeyDeletionRequest :: Encode ScheduleKeyDeletionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScheduleKeyDeletionRequest from required parameters
newScheduleKeyDeletionRequest :: KeyIdType -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest _KeyId = ScheduleKeyDeletionRequest { "KeyId": _KeyId, "PendingWindowInDays": (NullOrUndefined Nothing) }

-- | Constructs ScheduleKeyDeletionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionRequest' :: KeyIdType -> ( { "KeyId" :: (KeyIdType) , "PendingWindowInDays" :: NullOrUndefined.NullOrUndefined (PendingWindowInDaysType) } -> {"KeyId" :: (KeyIdType) , "PendingWindowInDays" :: NullOrUndefined.NullOrUndefined (PendingWindowInDaysType) } ) -> ScheduleKeyDeletionRequest
newScheduleKeyDeletionRequest' _KeyId customize = (ScheduleKeyDeletionRequest <<< customize) { "KeyId": _KeyId, "PendingWindowInDays": (NullOrUndefined Nothing) }



newtype ScheduleKeyDeletionResponse = ScheduleKeyDeletionResponse 
  { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType)
  , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType)
  }
derive instance newtypeScheduleKeyDeletionResponse :: Newtype ScheduleKeyDeletionResponse _
derive instance repGenericScheduleKeyDeletionResponse :: Generic ScheduleKeyDeletionResponse _
instance showScheduleKeyDeletionResponse :: Show ScheduleKeyDeletionResponse where
  show = genericShow
instance decodeScheduleKeyDeletionResponse :: Decode ScheduleKeyDeletionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScheduleKeyDeletionResponse :: Encode ScheduleKeyDeletionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScheduleKeyDeletionResponse from required parameters
newScheduleKeyDeletionResponse :: ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse  = ScheduleKeyDeletionResponse { "DeletionDate": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs ScheduleKeyDeletionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScheduleKeyDeletionResponse' :: ( { "KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType) } -> {"KeyId" :: NullOrUndefined.NullOrUndefined (KeyIdType) , "DeletionDate" :: NullOrUndefined.NullOrUndefined (DateType) } ) -> ScheduleKeyDeletionResponse
newScheduleKeyDeletionResponse'  customize = (ScheduleKeyDeletionResponse <<< customize) { "DeletionDate": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



-- | <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
newtype Tag = Tag 
  { "TagKey" :: (TagKeyType)
  , "TagValue" :: (TagValueType)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where
  show = genericShow
instance decodeTag :: Decode Tag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTag :: Encode Tag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Tag from required parameters
newTag :: TagKeyType -> TagValueType -> Tag
newTag _TagKey _TagValue = Tag { "TagKey": _TagKey, "TagValue": _TagValue }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKeyType -> TagValueType -> ( { "TagKey" :: (TagKeyType) , "TagValue" :: (TagValueType) } -> {"TagKey" :: (TagKeyType) , "TagValue" :: (TagValueType) } ) -> Tag
newTag' _TagKey _TagValue customize = (Tag <<< customize) { "TagKey": _TagKey, "TagValue": _TagValue }



-- | <p>The request was rejected because one or more tags are not valid.</p>
newtype TagException = TagException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeTagException :: Newtype TagException _
derive instance repGenericTagException :: Generic TagException _
instance showTagException :: Show TagException where
  show = genericShow
instance decodeTagException :: Decode TagException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagException :: Encode TagException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TagException from required parameters
newTagException :: TagException
newTagException  = TagException { "message": (NullOrUndefined Nothing) }

-- | Constructs TagException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> TagException
newTagException'  customize = (TagException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype TagKeyList = TagKeyList (Array TagKeyType)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where
  show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKeyList :: Encode TagKeyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagKeyType = TagKeyType String
derive instance newtypeTagKeyType :: Newtype TagKeyType _
derive instance repGenericTagKeyType :: Generic TagKeyType _
instance showTagKeyType :: Show TagKeyType where
  show = genericShow
instance decodeTagKeyType :: Decode TagKeyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKeyType :: Encode TagKeyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where
  show = genericShow
instance decodeTagList :: Decode TagList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagList :: Encode TagList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagResourceRequest = TagResourceRequest 
  { "KeyId" :: (KeyIdType)
  , "Tags" :: (TagList)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where
  show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagResourceRequest :: Encode TagResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showTagValueType :: Show TagValueType where
  show = genericShow
instance decodeTagValueType :: Decode TagValueType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagValueType :: Encode TagValueType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>
newtype UnsupportedOperationException = UnsupportedOperationException 
  { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType)
  }
derive instance newtypeUnsupportedOperationException :: Newtype UnsupportedOperationException _
derive instance repGenericUnsupportedOperationException :: Generic UnsupportedOperationException _
instance showUnsupportedOperationException :: Show UnsupportedOperationException where
  show = genericShow
instance decodeUnsupportedOperationException :: Decode UnsupportedOperationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsupportedOperationException :: Encode UnsupportedOperationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsupportedOperationException from required parameters
newUnsupportedOperationException :: UnsupportedOperationException
newUnsupportedOperationException  = UnsupportedOperationException { "message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedOperationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedOperationException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } -> {"message" :: NullOrUndefined.NullOrUndefined (ErrorMessageType) } ) -> UnsupportedOperationException
newUnsupportedOperationException'  customize = (UnsupportedOperationException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype UntagResourceRequest = UntagResourceRequest 
  { "KeyId" :: (KeyIdType)
  , "TagKeys" :: (TagKeyList)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where
  show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUpdateAliasRequest :: Show UpdateAliasRequest where
  show = genericShow
instance decodeUpdateAliasRequest :: Decode UpdateAliasRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateAliasRequest :: Encode UpdateAliasRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showUpdateKeyDescriptionRequest :: Show UpdateKeyDescriptionRequest where
  show = genericShow
instance decodeUpdateKeyDescriptionRequest :: Decode UpdateKeyDescriptionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateKeyDescriptionRequest :: Encode UpdateKeyDescriptionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showWrappingKeySpec :: Show WrappingKeySpec where
  show = genericShow
instance decodeWrappingKeySpec :: Decode WrappingKeySpec where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWrappingKeySpec :: Encode WrappingKeySpec where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

