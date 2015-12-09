using System;
using System.IO;
using Aspose.Cloud;

namespace Aspose.Cells.Cloud.Examples
{
    class Common
    {
        public static string APP_SID = null;
        public static string APP_KEY = null;
        public static string FOLDER = "";
        public static string STORAGE = "";

        public static string GetDataDir(Type t)
        {
            string c = t.FullName;
            c = c.Replace("Aspose.Cells.Cloud.Examples.", "");
            c = c.Replace('.', Path.DirectorySeparatorChar);
            string p = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c));
            p += Path.DirectorySeparatorChar;
            Console.WriteLine("Using Data Dir {0}", p);
            return p;
        }

        public static CellsService CellsService
        {
            get {
                CheckCredentials();
                CellsService c = new CellsService(APP_SID, APP_KEY);
                return c;
            }
        }

        public static StorageService StorageService
        {
            get
            {
                CheckCredentials();
                StorageService s = new StorageService(APP_SID, APP_KEY);
                return s;
            }
        }

        private static void CheckCredentials()
        {
            if (String.IsNullOrEmpty(APP_SID) || String.IsNullOrEmpty(APP_KEY))
            {
                System.Windows.Forms.MessageBox.Show("APP_SID and APP_KEY must have valid values. Check " + System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName + " class for details.");
                Environment.Exit(1);
            }
        }

        public static void Pause()
        {
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }

        static void Main()
        {
            CheckCredentials();
            Console.WriteLine("To run an example, Go to 'Project Properties' and set the 'Startup Object'");
            Pause();
        }
    }
}
