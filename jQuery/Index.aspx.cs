using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jQuery
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ddlLista.Items.Add("1");
                //ddlLista.Items.Add("2");
                //ddlLista.Items.Add("3");
                //ddlLista.Items.Add("4");
                //ddlLista.Items.Add("5");
            }
        }

        protected void btnAgregarUno_Click(object sender, EventArgs e)
        {
            //if (int.Parse(ddlLista.SelectedValue) !=0 && ddlLista.Items.Count<=5)
            //{
            //    lstLista.Items.Add(ddlLista.SelectedValue);
            //    ddlLista.Items.Remove(ddlLista.SelectedItem);
            //    //ddlLista.SelectedItem.Enabled = false;
            //}
        }

        protected void btnAgregarTodos_Click(object sender, EventArgs e)
        {
            //foreach (ListItem item in ddlLista.Items)
            //{
            //    lstLista.Items.Add(item);
            //}
            //ddlLista.Items.Clear();
        }

        protected void btnQuitarTodos_Click(object sender, EventArgs e)
        {
            //foreach (ListItem item in lstLista.Items)
            //{
            //    ddlLista.Items.Add(item);
            //}
            //lstLista.Items.Clear();
        }

        protected void btnQuitarUno_Click(object sender, EventArgs e)
        {
            //if (int.Parse(lstLista.SelectedValue) != 0 && lstLista.Items.Count <= 5)
            //{
            //    ddlLista.Items.Add(lstLista.SelectedValue);
            //    lstLista.Items.Remove(lstLista.SelectedItem);
            //    //ddlLista.SelectedItem.Enabled = false;
            //}
        }
    }
}