/// Steps to implement your own enum based on this template:
/// 1) Rename "VideoOutput" to what your enum should be named
/// 2) Rename "VideoOutputDefinition" accordingly
/// 3) Implement the definitions GetEntries() 
/// 
/// For more details regarding the template, see:
/// https://thegraybook.vvvv.org/reference/extending/writing-nodes.html#dynamic-enums

using System.Reactive.Linq;
using VL.Core.CompilerServices;
using VL.Lib.Collections;
using VL.Lib;

namespace VL.ImaginaryToolkit;

[Serializable]
public class VideoOutput : DynamicEnumBase<VideoOutput, VideoOutputDefinition>
{
    public VideoOutput(string value) : base(value)
    {
    }

    [CreateDefault]
    public static VideoOutput CreateDefault()
    {
        return CreateDefaultBase();
    }
}

public class VideoOutputDefinition : DynamicEnumDefinitionBase<VideoOutputDefinition>
{
    //Return the current enum entries
    protected override IReadOnlyDictionary<string, object> GetEntries()
    {
        var entries = new Dictionary<string, object>(Screen.AllScreens.Length);
        foreach (var screen in Screen.AllScreens)
        {
            var name = screen.DeviceName;
            if (!entries.ContainsKey(name))
            {
                entries.Add(name, screen);
            }
        }
        return entries;
    }

    //Optionally trigger a change of your enum. This will in turn call GetEntries() again
    protected override IObservable<object> GetEntriesChangedObservable()
    {
        return HardwareChangedEvents.HardwareChanged; //reports device (e.g. usb) addition/removal
    }

    //Optionally disable alphabetic sorting
    protected override bool AutoSortAlphabetically => false; //true is the default
}