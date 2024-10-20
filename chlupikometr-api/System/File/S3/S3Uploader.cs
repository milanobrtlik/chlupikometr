using Amazon.Runtime;
using Amazon.S3;
using Amazon.S3.Model;

namespace Chlupikometr.System.File.S3;

public class S3Uploader
{
    private readonly AmazonS3Client _s3Client;
    private readonly IConfigurationSection _config;
    private readonly string _url;

    public S3Uploader(IConfiguration configuration)
    {
        _config = configuration.GetSection("S3");
        _url = _config.GetSection("ServiceUrl").Value;
        _s3Client = new AmazonS3Client(
            new BasicAWSCredentials(
                _config.GetSection("accessKey").Value,
                _config.GetSection("secretKey").Value
            ),
            new AmazonS3Config
            {
                ServiceURL = $"http://{_url}",
                AuthenticationRegion = _config.GetSection("AuthenticationRegion").Value
            }
        );
    }

    public async Task<string> UploadChildPictureAsync(Stream inputStream, CancellationToken ct)
    {
        var objectId = Guid.NewGuid();
        var bucketName = _config.GetSection("BucketName").Value;
        var directory = _config.GetSection("ChildrenDirectory").Value;
        var request = new PutObjectRequest
        {
            InputStream = inputStream,
            BucketName = bucketName,
            Key = $"{directory}/{objectId}",
            CannedACL = S3CannedACL.PublicRead
        };

        await _s3Client.PutObjectAsync(request, ct);

        return $"https://{bucketName}.{_url}/{directory}/{objectId}";
    }

    public async Task<bool> DeleteChildPictureAsync(User.Entity.User user, CancellationToken ct)
    {
        if (user.PictureUrl is null) return true;
        var bucketName = _config.GetSection("BucketName").Value;
        var oldValue = $"https://{bucketName}.{_url}/";
        var key = user.PictureUrl!.Replace(oldValue, "");
        var request = new DeleteObjectRequest
        {
            BucketName = bucketName,
            Key = key,
        };

        await _s3Client.DeleteObjectAsync(request, ct);

        return true;
    }
}
