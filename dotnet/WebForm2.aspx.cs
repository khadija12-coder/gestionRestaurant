using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entities;


namespace dotnet
{
    public partial class WebForm2 : System.Web.UI.Page
    {


        RestaurantContexte DbContext = new RestaurantContexte();
        protected void Page_Load(object sender, EventArgs e)
        {
            TraitementGrid();
        }

        private void TraitementGrid()
        {
            GridView1.DataSource = (from res in DbContext.RESTAURANTS
                                    select res).ToList();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Int32 IdR = int.Parse(GridView1.SelectedValue.ToString());
            Restaurant MyR = (from v in DbContext.RESTAURANTS
                                        where v.code == IdR
                                        select v).Single();
            TextBox1.Text = MyR.code.ToString();
            TextBox2.Text = MyR.NomRestaurant;
            TextBox3.Text = MyR.adresse;
            TextBox4.Text = MyR.Gmail;
            TextBox5.Text = MyR.Telephone.ToString();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Int32 IdRes = int.Parse(GridView1.SelectedValue.ToString());
            Restaurant NewRes = (from dep in DbContext.RESTAURANTS
                                 where dep.code == IdRes
                                 select dep).Single();

            DbContext.RESTAURANTS.Remove(NewRes);
            DbContext.SaveChanges();
            TraitementGrid();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Int32 IdRes = int.Parse(GridView1.SelectedValue.ToString());
            Restaurant NewRes = (from dep in DbContext.RESTAURANTS
                                 where dep.code == IdRes
                                 select dep).Single();
            NewRes.NomRestaurant = TextBox2.Text;
            NewRes.adresse = TextBox3.Text;
            NewRes.Gmail = TextBox4.Text;
            NewRes.Telephone = int.Parse(TextBox5.Text);
            DbContext.SaveChanges();
            TraitementGrid();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {


            entities.Restaurant newRes = new entities.Restaurant();
            newRes.code = int.Parse(TextBox1.Text);
            newRes.NomRestaurant = TextBox2.Text;
            newRes.adresse = TextBox3.Text;
            newRes.Gmail = TextBox4.Text;
            newRes.Telephone= int.Parse(TextBox5.Text);

            DbContext.RESTAURANTS.Add(newRes);
            DbContext.SaveChanges();

            GridView1.DataSource = (from v in DbContext.RESTAURANTS

                                    select v).ToList();
            GridView1.DataBind();

        }
    }
}