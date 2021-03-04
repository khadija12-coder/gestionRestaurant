using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entities;

namespace dotnet
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        RestaurantContexte DbContext = new RestaurantContexte();
        protected void Page_Load(object sender, EventArgs e)
        {
            TraitementGrid();
        }

        private void TraitementGrid()
        {
            GridView1.DataSource = (from p in DbContext.PLATS
                                    select p).ToList();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Int32 Idp = int.Parse(GridView1.SelectedValue.ToString());
            Plat pla = (from v in DbContext.PLATS
                              where v.IdP == Idp
                              select v).Single();
            TextBox1.Text = pla.IdP.ToString();
            TextBox2.Text = pla.NomPlat;
            TextBox3.Text = pla.Categorie;
            TextBox4.Text = pla.id.ToString() ;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Plat newpl = new entities.Plat();


            newpl.NomPlat = TextBox2.Text;
            newpl.Categorie = TextBox3.Text;
            newpl.id = int.Parse(TextBox4.Text);

            DbContext.PLATS.Add(newpl);
            DbContext.SaveChanges();

            GridView1.DataSource = (from v in DbContext.PLATS

                                    select v).ToList();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Int32 Idp = int.Parse(GridView1.SelectedValue.ToString());
            Plat NewRes = (from dep in DbContext.PLATS
                                where dep.IdP == Idp
                                select dep).Single();

            NewRes.NomPlat= TextBox2.Text;
            NewRes.Categorie = TextBox3.Text;
            NewRes.id = int.Parse(TextBox4.Text);
            DbContext.SaveChanges();
            TraitementGrid();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


            Int32 Idp = int.Parse(GridView1.SelectedValue.ToString());
            Plat Newpla = (from dep in DbContext.PLATS
                                 where dep.IdP == Idp
                                 select dep).Single();

            DbContext.PLATS.Remove(Newpla);
            DbContext.SaveChanges();
            TraitementGrid();






        }
    }
}