using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admin_ObjectionSummaryRpt : ClsErrorLog
{
    CommonPerception MySql = new CommonPerception();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["AdminId"] == null)
        //{
        //    Response.Redirect("Login.aspx");
        //}
        if (!IsPostBack)
        {
            fillsubjectname();
        }
    }

    void fillsubjectname()
    {
        try
        {
            ddlsubject.Items.Clear();
            DataSet ds = new DataSet();
            ds = MySql.GetDataSet("Select distinct SetName from tb_objection");
            if (ds.Tables.Count > 0)
            {
                ddlsubject.DataSource = ds;
                ddlsubject.DataTextField = "SetName";
                ddlsubject.DataTextField = "SetName";
                ddlsubject.DataBind();
                ddlsubject.Enabled = false;
                //ddlsubject.Items.Insert(0, new ListItem("--------------SELECT--------------", "0"));
            }

            DataSet ds1 = new DataSet();
            ds1 = MySql.GetDataSetWithQuery("exec sp_objectionreport @setname='" + ddlsubject.SelectedValue + "'");
            if (ds1.Tables[0].Rows.Count > 0)
            {
                lblTotalCount.Text = "Total Count : " + Convert.ToString(ds1.Tables[0].Rows.Count);
                gvData.DataSource = ds1;
                gvData.DataBind();
            }
            else
            {

            }
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    protected void ddlsubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            ds = MySql.GetDataSetWithQuery("exec sp_objectionreport @setname='" + ddlsubject.SelectedValue + "'");
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblTotalCount.Text = "Total Count : " + Convert.ToString(ds.Tables[0].Rows.Count);
                gvData.DataSource = ds;
                gvData.DataBind();
            }
            else
            {

            }
        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }

    protected void btnExport_Click(object sender, EventArgs e)
    {
        try
        {
            HtmlForm form = new HtmlForm();
            string filename = ddlsubject.SelectedItem.Text.ToString().Replace(" ", "") + '_' + DateTime.Now.ToString("ddMMyyyy");
            string attachment = "attachment; filename=" + filename + ".xls";
            Response.ClearContent();
            Response.AddHeader("content-disposition", attachment);
            Response.ContentType = "application/excel";
            StringWriter stw = new StringWriter();
            HtmlTextWriter htextw = new HtmlTextWriter(stw);
            GridView gv1 = this.gvData;
            gvData.RenderControl(htextw);
            Response.Write(stw.ToString());
            Response.End();

        }
        catch (Exception ex)
        {
            LogError(ex);
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // Confirms that an HtmlForm control is rendered for the
        //specified ASP.NET server control at run time.
    }
}