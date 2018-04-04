using System;
using System.IO;
using System.Text.RegularExpressions;

namespace PrefixFilesWithDate
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length == 0)
            {
                throw new ArgumentException("Script must be run as PrefixFilesWithDate.exe [FullPathToFolder]");
            }

            //var pathToFolder = args[0];

            var pathToFolder = @"C:\Users\wong_ga\Desktop\Documents";

            DatePrefixer.RunTask(pathToFolder);
        }
    }

    /// <summary>
    /// Finds all files in a given folder and changes the filename (if not already), to {DATE_FORMAT}_{originalFileName}
    /// </summary>
    public class DatePrefixer
    {
        private const string DATE_PREFIX_PATTERN = @"^\d{4}_(0?[1-9]|1[012])_(0?[1-9]|[12][0-9]|3[01])*";
        private const string DATE_FORMAT = "yyyy_MM_dd";

        public static void RunTask(string pathToFolder)
        {
            // get all files
            var filePaths = Directory.GetFiles(pathToFolder);

            // now that we have the files we want to verify that each one has a matching prefix
            foreach(var filePath in filePaths)
            {
                var actualFileName = Path.GetFileName(filePath);
                var directoryPath = Path.GetDirectoryName(filePath) + "\\";

                if (!Regex.IsMatch(actualFileName, DATE_PREFIX_PATTERN))
                {
                    // change the file to have a new filename
                    var lastModified = File.GetLastWriteTime(filePath);
                    var lastModifiedFormattedString = lastModified.ToString(DATE_FORMAT);

                    var newFileName = directoryPath + lastModifiedFormattedString + '_' + actualFileName;
                    File.Move(filePath, newFileName);
                }   
            }

            return;
        }
    }
}
