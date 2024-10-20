using System.ComponentModel.DataAnnotations.Schema;

namespace Chlupikometr.System.File.Entity;

[Table("file")]
public class S3File
{
    public int Id { get; set; }
    [GraphQLIgnore] public string ExternalId { get; set; } = default!;
    public string Url { get; set; } = default!;
}
