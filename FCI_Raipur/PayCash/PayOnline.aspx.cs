using Common.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PayCash_PayOnline : ClsErrorLog
{
    #region Variables


    CommonPerception MySql = new CommonPerception();
    SqlDataReader dtr;

    int FeesAmt;
    static int lcOrderID;
    string Category = "";
    string strOrder_No = "";
    DataSet dsFeesAmt = new DataSet();
    static int amt = 0;
    string TrackYourIP = string.Empty;
    SqlConnection dbcon = new SqlConnection();
    int Ocategory;
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        //CheckPayment();
        //PaymentClosed();
        //lblregno.Text = Convert.ToString(Session["CanId"]);
        //Thread.CurrentThread.CurrentCulture = new CultureInfo("mr-IN");
        //Session["canid"] = "300001";
        RegistrationClosed();
        if (!IsPostBack)
        {
            hfCId.Value = Session["canid"].ToString();

            if (Convert.ToString(Session["CanId"]) != "")
            {
                //Creat session fOR ALL
                DataSet Ds1 = MySql.GetDataSetWithQuery("exec Sp_CheckPreview '" + Convert.ToString(Session["CanId"]) + "'");
                if (Ds1.Tables[0].Rows.Count > 0)
                {
                    //Category = Ds1.Tables[0].Rows[0]["CategoryID"].ToString();
                }

            }

            FeesAmount(Convert.ToString(Category));
            GetUserSelection();
        }
    }

    #region  Fees Amount

    void FeesAmount(string Category)
    {

        lblActualFeeValue.Text = "250.00";
        lblBankChargesValue.Text = "13.00";
        lblamountvalue.Text = "263.00";

    }

    #endregion


    public void GetUserSelection()
    {
        Generate_Order_Details();
        Generate_Order();

        GenerateURL();
    }


    public void Generate_Order_Details()
    {
        dbcon = new SqlConnection(Common.Class.CommonPerception.ConnectionString());
        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RegistrationId", System.Data.SqlDbType.VarChar, 30, "RegistrationId"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Amount", System.Data.SqlDbType.Decimal, 9, "Amount"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Order_No", System.Data.SqlDbType.VarChar, 50, "Order_No"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@mode", System.Data.SqlDbType.VarChar, 50, "mode"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@TrackYourIP", System.Data.SqlDbType.VarChar, 50, "TrackYourIP"));

        cmdInsert.Parameters["@RegistrationId"].Value = Session["canid"].ToString();
        cmdInsert.Parameters["@Amount"].Value = lblamountvalue.Text.ToString();
        cmdInsert.Parameters["@mode"].Value = "Online";
        cmdInsert.Parameters["@TrackYourIP"].Value = TrackYourIP;

        Int32 _phdStatus = 0;
        string strLocalOrder_No = "FCI";
        string strGetOrderNo;

        strLocalOrder_No = strLocalOrder_No + "-" + "OL";

        strOrder_No = strLocalOrder_No;
        lblordernoTextvalue.Text = strOrder_No;
        cmdInsert.Parameters["@Order_No"].Value = strOrder_No;
        SqlParameter dbparam;
        dbparam = cmdInsert.Parameters.Add(new SqlParameter("@ID", SqlDbType.Int, 4));
        dbparam.Direction = ParameterDirection.Output;
        cmdInsert.CommandText = "SP_Insert_OrderDetails";
        cmdInsert.CommandType = System.Data.CommandType.StoredProcedure;
        cmdInsert.Connection = dbcon;

        try
        {
            dbcon.Open();
            cmdInsert.ExecuteNonQuery();
            lcOrderID = (int)cmdInsert.Parameters["@ID"].Value;
            strOrder_No = strLocalOrder_No.ToString() + lcOrderID.ToString();
            lblordernoTextvalue.Text = strOrder_No;
        }
        catch (Exception err)
        {
            Response.Write("Error while Inserting Next Set Of Records<br> Error source : " + err.Message + "<br>" + err.Source);
        }
        finally
        {
            if (dbcon.State == ConnectionState.Open)
            {
                dbcon.Close();
            }
        }
    }

    public void Generate_Order()
    {
        dbcon = new SqlConnection(Common.Class.CommonPerception.ConnectionString());
        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@RegistrationId", System.Data.SqlDbType.VarChar, 30, "RegistrationId"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Amount", System.Data.SqlDbType.Decimal, 9, "Amount"));
        cmdInsert.Parameters.Add(new System.Data.SqlClient.SqlParameter("@Order_id", System.Data.SqlDbType.VarChar, 50, "OrderDetials_Id"));

        cmdInsert.Parameters["@RegistrationId"].Value = Session["canid"].ToString();
        cmdInsert.Parameters["@Amount"].Value = lblamountvalue.Text;
        cmdInsert.Parameters["@Order_id"].Value = lcOrderID;

        cmdInsert.CommandText = "SP_Insert_Orders";
        cmdInsert.CommandType = System.Data.CommandType.StoredProcedure;
        cmdInsert.Connection = dbcon;
        try
        {
            dbcon.Open();
            cmdInsert.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            Response.Write("Error while Inserting Next Set Of Records<br> Error source : " + err.Message + "<br>" + err.Source);
        }
        finally
        {
            if (dbcon.State == ConnectionState.Open)
            {
                dbcon.Close();
            }
        }
    }

    protected void GenerateURL()
    {
        string Amt = lblamountvalue.Text.ToString();
        //  Amt = "1.00";
        string order = lblordernoTextvalue.Text.ToString();

        merchant_id.Value = "143271";
        order_id.Value = order;
        amount.Value = Amt;
        currency.Value = "INR";

        redirect_url.Value = "http://www.fcicgjobs.com/PayCash/Response.aspx";
        cancel_url.Value = "http://www.fcicgjobs.com/PayCash/Response.aspx";
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Candidate/IDeclared.aspx");
    }
}