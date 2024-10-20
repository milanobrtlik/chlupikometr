using HotChocolate.Data.Filters;
using HotChocolate.Data.Sorting;

namespace Chlupikometr.Ledger.GraphQL;

public class LedgerFilterInput : FilterInputType<Entity.Ledger>
{
    protected override void Configure(IFilterInputTypeDescriptor<Entity.Ledger> descriptor)
    {
        descriptor.BindFieldsExplicitly();
        descriptor.Field(ledger => ledger.ChildId);
        descriptor.Field(ledger => ledger.EnteredAt);
    }
}

public class LedgerSortInput : SortInputType<Entity.Ledger>
{
    protected override void Configure(ISortInputTypeDescriptor<Entity.Ledger> descriptor)
    {
        descriptor.BindFieldsExplicitly();
        descriptor.Field(ledger => ledger.EnteredAt);
    }
}
