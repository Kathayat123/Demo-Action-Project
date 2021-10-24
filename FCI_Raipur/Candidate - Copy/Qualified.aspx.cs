using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Common.Class;

public partial class Candidate_Qualified : System.Web.UI.Page
{
    CommonPerception Mysql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getdata();
        }
    }
    protected void Getdata()
    {
        DataSet ds = new DataSet();
        ds = Mysql.GetDataSetWithQuery("select d.Rollnumber, d.CandidateName, cat.categoryName, c.DOB , UPPER(c.FatherName) as FatherName from tbldata d inner join tbabmcandidateinfo c on d.RollNumber=c.ROllNumber  inner join tblcategorymaster cat on c.category=cat.catid order by d.rollnumber");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}