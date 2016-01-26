Imports System
Imports System.IO
Imports Aspose.Cloud

Namespace Aspose.Cells.Cloud.Examples
    Friend Class Common
        Public Shared APP_SID As String = Nothing
        Public Shared APP_KEY As String = Nothing
        Public Shared FOLDER As String = ""
        Public Shared STORAGE As String = ""

        Public Shared Function GetDataDir(ByVal t As Type) As String
            Dim c As String = t.FullName
            c = c.Replace("Aspose.Cells.Cloud.Examples.", "")
            c = c.Replace("."c, Path.DirectorySeparatorChar)
            Dim p As String = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c))
            p &= Path.DirectorySeparatorChar
            Console.WriteLine("Using Data Dir {0}", p)
            Return p
        End Function

        Public Shared ReadOnly Property CellsService() As CellsService
            Get
                CheckCredentials()
                Dim c As New CellsService(APP_SID, APP_KEY)
                Return c
            End Get
        End Property

        Public Shared ReadOnly Property StorageService() As StorageService
            Get
                CheckCredentials()
                Dim s As New StorageService(APP_SID, APP_KEY)
                Return s
            End Get
        End Property

        Private Shared Sub CheckCredentials()
            If String.IsNullOrEmpty(APP_SID) OrElse String.IsNullOrEmpty(APP_KEY) Then
                System.Windows.Forms.MessageBox.Show("APP_SID and APP_KEY must have valid values. Check " & System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.FullName & " class for details.")
                Environment.Exit(1)
            End If
        End Sub

        Public Shared Sub Pause()
            Console.WriteLine("Press any key to continue...")
            Console.ReadKey()
        End Sub

        Shared Sub Main()
            CheckCredentials()
            Console.WriteLine("To run an example, Go to 'Project Properties' and set the 'Startup Object'")
            Pause()
        End Sub
    End Class
End Namespace
