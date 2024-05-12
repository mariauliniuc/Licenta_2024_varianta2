using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Store
{
    public class ConexiuneBD
    {
        public static SqlConnection conn = new SqlConnection("Data Source=" + GetDataSources() + ";InitialCatalog = Store; Integrated Security = True");
 private static string GetDataSources()
        {
            string ServerName = Environment.MachineName;
            string data_source = "";
            RegistryView registryView = Environment.Is64BitOperatingSystem ? RegistryView.Registry64 :
           RegistryView.Registry32;
            using (RegistryKey hklm = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, registryView))
            {
                RegistryKey instanceKey = hklm.OpenSubKey(@"SOFTWARE\Microsoft\Microsoft SQL Server\InstanceNames\SQL", false);
                if (instanceKey != null)
                {
                    foreach (var instanceName in instanceKey.GetValueNames())
                    {
                        data_source = data_source + (ServerName + "\\" + instanceName);
                    }
                }
            }
            return data_source;
        }
    }
}