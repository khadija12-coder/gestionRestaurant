using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using entities;

namespace dotnet
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        RestaurantContexte DbContext = new RestaurantContexte();
        protected void Page_Load(object sender, EventArgs e)
        {
            TraitementGrid();
        }

        private void TraitementGrid()
        {
            GridView1.DataSource = (from cuis in DbContext.CUISINIERS
                                    select cuis).ToList();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Int32 Idc = int.Parse(GridView1.SelectedValue.ToString());
            Cuisinier cuis = (from v in DbContext.CUISINIERS
                            where v.Id == Idc
                            select v).Single();
            TextBox1.Text = cuis.Id.ToString();
            TextBox2.Text = cuis.Nom;
            TextBox3.Text = cuis.prenom;
            TextBox4.Text = cuis.Ville;
            TextBox5.Text = cuis.Nationnalite;
            TextBox6.Text = cuis.Gmail;
            TextBox6.Text = cuis.Telephone.ToString();
            TextBox6.Text = cuis.code.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Cuisinier newCui = new entities.Cuisinier();

            
            newCui.Nom = TextBox2.Text;
            newCui.prenom = TextBox3.Text;
            newCui.Ville= TextBox4.Text;
            newCui.Nationnalite = TextBox5.Text;
            newCui.Gmail = TextBox6.Text;
            newCui.Telephone= int.Parse(TextBox7.Text);
            newCui.code = int.Parse(TextBox8.Text);

            DbContext.CUISINIERS.Add(newCui);
            DbContext.SaveChanges();

            GridView1.DataSource = (from v in DbContext.CUISINIERS

                                    select v).ToList();
            GridView1.DataBind();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Int32 IdCuis = int.Parse(GridView1.SelectedValue.ToString());
            Cuisinier NewCuis = (from dep in DbContext.CUISINIERS
                                 where dep.Id == IdCuis
                                 select dep).Single();

            DbContext.CUISINIERS.Remove(NewCuis);
            DbContext.SaveChanges();
            TraitementGrid();




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Int32 IdRes = int.Parse(GridView1.SelectedValue.ToString());
            Cuisinier NewRes = (from dep in DbContext.CUISINIERS
                                 where dep.Id == IdRes
                                 select dep).Single();

            NewRes.Nom = TextBox2.Text;
            NewRes.prenom = TextBox3.Text;
            NewRes.Ville= TextBox4.Text;
            NewRes.Nationnalite = TextBox5.Text;
            NewRes.Gmail = TextBox6.Text;
            NewRes.Telephone= int.Parse(TextBox7.Text);
            NewRes.code = int.Parse(TextBox8.Text);
            DbContext.SaveChanges();
            TraitementGrid();
        }
    }
}