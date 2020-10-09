using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace facebook
{
    public class SearchText
    {
        public class A
        {
            public static string globalSearchText;
            public static int sender_id;
            public static string receiver_id;

            public static void set_receiver_id(string temp)
            {
                receiver_id = temp;
            }
        }
    }
}