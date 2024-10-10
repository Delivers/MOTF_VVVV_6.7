using Stride.Core.Mathematics;

namespace VL.ImaginaryToolkit;

public class Utils
{
    public static Int2 RectangleSize(Stride.Core.Mathematics.Rectangle input)
    {
        return new Int2(input.Size.Width, input.Size.Height);
    }
}