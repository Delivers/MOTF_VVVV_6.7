using System.Reactive.Subjects;
using VL.Core.CompilerServices;
using VL.Lib.Collections;
using System.Collections.Generic;

namespace VL.ImaginaryToolkit;

[Serializable]
public class AvailableScenes : DynamicEnumBase<AvailableScenes, AvailableScenesDefinition>
{
    public AvailableScenes(string value) : base(value)
    {
    }

    [CreateDefault]
    public static AvailableScenes CreateDefault()
    {
        return CreateDefaultBase();
    }
}

public class AvailableScenesDefinition : DynamicEnumDefinitionBase<AvailableScenesDefinition>
{
    Dictionary<string, object> entries = new Dictionary<string, object>();
    Subject<object> trigger = new Subject<object>();

    [CreateDefault]
    public static AvailableScenesDefinition CreateDefault()
    {
        return Instance;
    }

    public void ClearEntries() { entries.Clear(); trigger.OnNext(""); }

    public void AddEntry(string name)
    {
        entries[name] = null;
        trigger.OnNext("");
    }

    // Return the current enum entries
    protected override IReadOnlyDictionary<string, object> GetEntries()
    {
        return entries;
    }
    
    protected override IObservable<object> GetEntriesChangedObservable()
    {
        return trigger;
    }

    protected override bool AutoSortAlphabetically => false;
}