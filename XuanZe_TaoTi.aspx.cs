using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class QianUser_XuanZe_TaoTi : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        ST_check_Login();
        Session["SelLession"] = this.ddlSelLess.SelectedItem;
        Session["SelTitle"] = this.ddlSelQue.SelectedItem;
        if (Page.IsPostBack == false)
        {
            dataconn.ecDropDownList(ddlSelLess, "select * from tb_Lesson", "Name", "ID");
            GetDropDownList();
        }

    }
    public void ST_check_Login()
    {
        //打开数据库连接，并调用公共类中的getcon方法
        SqlConnection con = dataconn.getcon();
        con.Open();
        string sqlstr1 = "select count(*) from tb_StuResult where stu_id ='"+Session["StuName"]+"'";
        SqlCommand mycom = new SqlCommand(sqlstr1, con);
        int intcount = Convert.ToInt32(mycom.ExecuteScalar());
        if (intcount > 0)
        {
            Response.Write("<script>alert('对不起！您只能答一套题！');location='../Default.aspx'</script>");
        }
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zaixian_kaoshi.aspx");
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
       
        Application["d1"] = ddlSelLess.SelectedValue;
        Application["d2"] = ddlSelQue.SelectedValue;
        if (this.ddlSelQue.Text == "")
        {
            Response.Write("<script lanuage=javascript>alert('您还没有选择考试套题，请重新选择！');location='javascript:history.go(-1)'</script>");
        }
        else
        {
            Page.Response.Redirect("ZhunBeiKaoShi.aspx");
        }
    }
    public void GetDropDownList()
    {
        dataconn.ecDropDownList(ddlSelQue, "select * from tb_TaoTi where LessonID='"
            + ddlSelLess.SelectedValue.ToString() + "'", "Name", "ID");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetDropDownList();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("zaixian_kaoshi.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("Info_StuResult.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Page.Response.Redirect("../Default.aspx");
    }
}
