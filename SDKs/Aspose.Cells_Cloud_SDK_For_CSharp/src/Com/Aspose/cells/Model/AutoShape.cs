using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Aspose.Cells.Model
{
    public class AutoShape
    {
        public String Name { get; set; }
        public String AutoShapeType{ get; set; }
        public String Placement{ get; set; }
        public int UpperLeftRow{ get; set; }
        public int Top{ get; set; }
        public int UpperLeftColumn{ get; set; }
        public int Left{ get; set; }
        public int LowerRightRow{ get; set; }
        public int Bottom{ get; set; }
        public int LowerRightColumn{ get; set; }
        public int Right{ get; set; }
        public int Width{ get; set; }
        public int Height{ get; set; }
        public int X{ get; set; }
        public int Y{ get; set; }
        public double RotationAngle{ get; set; }
        public String LinkedCell{ get; set; }
        public String HtmlText{ get; set; }
        public String Text{ get; set; }
        public String AlternativeText{ get; set; }
        public String TextHorizontalAlignment{ get; set; }
        public String TextHorizontalOverflow{ get; set; }
        public String TextOrientationType{ get; set; }
        public String TextVerticalAlignment{ get; set; }
        public String TextVerticalOverflow{ get; set; }
        public Boolean IsGroup{ get; set; }
        public Boolean IsHidden{ get; set; }
        public Boolean IsLockAspectRatio{ get; set; }
        public Boolean IsLocked{ get; set; }
        public Boolean IsPrintable{ get; set; }
        public Boolean IsTextWrapped{ get; set; }
        public int ZOrderPosition{ get; set; }
    }
}
