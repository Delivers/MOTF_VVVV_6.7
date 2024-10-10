using Microsoft.Extensions.Logging.Abstractions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive.Subjects;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using VL.Core.CompilerServices;
using VL.Lib.Collections;

namespace VL.ImaginaryToolkit;

[Serializable]
public class AvailableOutputWindows : DynamicEnumBase<AvailableOutputWindows, AvailableOutputWindowsDefinition>
{
    public AvailableOutputWindows(string value) : base(value)
    { }

    [CreateDefault]
    public static AvailableOutputWindows CreateDefault()
    {
        return CreateDefaultBase();
    }
}

public class AvailableOutputWindowsDefinition : DynamicEnumDefinitionBase<AvailableOutputWindowsDefinition>
{
    Dictionary<string, object> entries = new Dictionary<string, object>();
    Subject<object> trigger = new Subject<object>();

    [CreateDefault]
    public static AvailableOutputWindowsDefinition CreateDefault()
    {
        return Instance;
    }

    public void ClearEntries()
    {
        entries.Clear();
        trigger.OnNext("");
    }

    public void AddEntry(string name)
    {
        entries[name] = null;
        trigger.OnNext("");
    }

    public void TryAddEntry(string name)
    {
        if (!entries.ContainsKey(name))
        {
            entries[name] = null;
            trigger.OnNext("");
        }
    }

    protected override IReadOnlyDictionary<string, object> GetEntries()
    {
        return entries;
    }

    protected override IObservable<object> GetEntriesChangedObservable()
    {
        return trigger;
    }

    protected override bool AutoSortAlphabetically => true;
}
