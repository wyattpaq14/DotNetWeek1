using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEEK1_DEMO.App_Code
{
    public class app_user
    {
        #region constructors

        public app_user(int userid, string firstname, string lastname, string salt)
        {

        }

        #endregion

        #region properties

        public int UserId { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Salt { get; set; }

        public string HashedPwd { get; set; }

        #endregion


    }
}