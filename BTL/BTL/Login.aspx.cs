using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["email"] != null)
            {
                string email = Request.Form["email"];
                string pass = Request.Form["password"];
                List<User> arr = (List<User>)Application["user"];
                int tg = 0;
                if (arr.Count == 0)
                {
                    loidangnhap.Text = "Tài khoản không tồn tại. Vui lòng kiểm tra email và mật khẩu !";
                }
                else
                {
                    foreach (User u in arr)
                    {
                        if (u.email == email && u.password == pass)
                        {
                            tg = 1;
                            Session["login"] = 1;
                            Session["name"] = u.name;
                            Session["email"] = u.email;
                            break;
                        }
                    }
                    if (tg == 1)
                    {
                        Response.Redirect("Homepage.aspx");
                    }
                    else
                    {
                        loidangnhap.Text = "Tài khoản hoặc mật khẩu không chính xác. Vui lòng kiểm tra lại email và mật khẩu !";
                    }
                }
            }

        }
    }
}