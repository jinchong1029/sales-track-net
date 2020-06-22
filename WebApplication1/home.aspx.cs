using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DB;
using WebApplication1.DB.GenericRepository;
using System.Data;

namespace WebApplication1
{
    public partial class home : System.Web.UI.Page
    {
        public static int currentTab = 0;
        public static int searchCount = 0;
        public static int searchFeatureCount = 0;
        static string searchMessage = "";
        static string featuresearchMessage = "";
        static string PlatForm = "";
        static string Version = "";
        static string Feature = "";
        static List<string> SelectedPlatforms_List = new List<string>();


        static string strConnectionString = ConfigurationManager.ConnectionStrings["CompatibilityConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // This is the initial load of the page...
                searchCount = 0;
                searchMessage = "";
                currentTab = 0;
                featuresearchMessage = "";
                PlatForm = "";
                Version = "";
                SetInitialGridValues();
                SetInitialGridValuesFeature();
                SelectedPlatforms_List = new List<string>();
                alertDiv.Visible = false;
                Div1.Visible = false;
            }
        }


        [WebMethod]
        public static List<string> LoadAllProductCats()
        {
            List<string> Platforms_List = new List<string>();
            GenericRepository<ProductCategory> repo = new GenericRepository<ProductCategory>();
            Platforms_List = repo.GetEntities().Select(x => x.Name).ToList();
            foreach (string _platform in SelectedPlatforms_List)
                Platforms_List.Remove(_platform);

            return Platforms_List;
        }

        [WebMethod]
        public static List<string> GetVersion(string name)
        {
            GenericRepository<ProductCategory> repocats = new GenericRepository<ProductCategory>();
            var catid = repocats.GetEntities().Where(x => x.Name == name.Trim()).FirstOrDefault();
            GenericRepository<Product> repo = new GenericRepository<Product>();
            return repo.GetEntities().Where(x => x.CategoryID == catid.ID).Select(x => x.NameVersion).ToList();
        }
        [WebMethod]
        public static List<string> LoadAllFeatures()
        {
            GenericRepository<Feature> repo = new GenericRepository<Feature>();
            return repo.GetEntities().Select(x => x.Name).ToList();
        }


        protected void ResetButton_Click(object sender, EventArgs e)
        {
            searchCount = 0;
            searchMessage = "";
            PlatForm = "";
            Version = "";
            SearchLabel.Text = searchMessage;
            SetInitialGridValues();
            SetInitialGridValuesFeature();
            SelectedPlatforms_List = new List<string>();
            alertDiv.Visible = false;
          
        }

        protected void FeatureResetButton_Click(object sender, EventArgs e)
        {
            searchFeatureCount = 0;
            featuresearchMessage = "";
            Feature = "";
            featureLabel.Text = featuresearchMessage;
            SetInitialGridValues();
            SetInitialGridValuesFeature();
            Div1.Visible = false;
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            SearchLabel.Text = searchMessage;
            // DYAMIC GRID QUERY

            string strCommand = @"with first as(
	        select  pc.Name PN, p.NameVersion PV, s.Name SN , sv.Version SV 
	        from ProductCategories pc 
	        inner join Product p on pc.ID = p.CategoryID 
	        inner join ProductSchema ps on p.ID = ps.ProductID 
	        inner join SchemaVersion sv on ps.SchemaVersionID= sv.ID 
	        inner join ASMLSchema s on sv.SchemaID = s.ID
	                                                    )  
            select pn , pv   from ( Select  distinct first2.PN pn,first2.PV pv , COUNT(first2.SV) schemaversion from first as first1
            inner join first as first2
            on  first1.SN = first2.SN and first1.SV = first2.SV  and first1.PV != first2.PV and first1.PN != first2.PN
            where first1.PN IN (" + home.PlatForm + ") and first1.PV IN (" + home.Version + ") group by first2.PV ,first2.PN) x where schemaversion =" + searchCount + "";
            SqlDataSource sds = new SqlDataSource(strConnectionString, strCommand);
            GridView1.DataSource = sds.Select(new System.Web.UI.DataSourceSelectArguments());
            GridView1.DataBind();

            if(home.PlatForm!="" && GridView1.Rows.Count==0)
            {
                //LblWarning.Text = "Incompatible!";
                alertDiv.Visible = true;
            }
        }

        protected void SearchFeatureButton_Click(object sender, EventArgs e)
        {
            featureLabel.Text = featuresearchMessage;
            // DYAMIC GRID QUERY
            string strCommand = @"select PN, PV,'_' as PhaseOUT from (select distinct pc.Name PN , p.NameVersion PV , COUNT(f.Name) countfeature
                        from ProductCategories pc
                        join Product p on pc.ID = p.CategoryID
                        join ProductFeature pf on p.ID = pf.ProductIntroductionID
                        join Feature f on pf.FeatureID = f.ID
                        where f.Name in (" + home.Feature + @")
                        group by pc.Name , p.NameVersion) x where x.countfeature=" + searchFeatureCount + "";
            SqlDataSource sds = new SqlDataSource(strConnectionString, strCommand);
            GridView3.DataSource = sds.Select(new System.Web.UI.DataSourceSelectArguments());
            GridView3.DataBind();

            if (home.Feature != "" && GridView3.Rows.Count == 0)
            {
                Div1.Visible = true;
            }
        }

        // TO GET SEARCH CRITERIA VALUES USING AJAX REQUEST
        [WebMethod]
        public static string AddSearchCriteria(string Platform, string Version)
        {
            if (home.searchCount != 0)
            {
                SelectedPlatforms_List.Add(Platform);
                home.searchMessage = home.searchMessage + " + " + Platform + " " + Version;
                home.PlatForm = home.PlatForm + "," + "'" + Platform + "'";
                home.Version = home.Version + "," + "'" + Version + "'";
            }
            else
            {
                SelectedPlatforms_List.Add(Platform);
                home.searchMessage = Platform + " " + Version;
                home.PlatForm = "'" + Platform + "'";
                home.Version = "'" + Version + "'";
            }
            home.searchCount++;

            return "success";
        }

        [WebMethod]
        public static string AddFeatureSearchCriteria(string feature)
        {
            if (home.searchFeatureCount != 0)
            {
                home.featuresearchMessage = home.featuresearchMessage + " + " + feature;
                home.Feature = home.Feature + "," + "'" + feature + "'";
            }
            else
            {
                home.featuresearchMessage = feature;
                home.Feature = "'" + feature + "'";
            }
            home.searchFeatureCount++;

            return "success";
        }
        private void SetInitialGridValues()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("PN", typeof(string)));
            dt.Columns.Add(new DataColumn("PV", typeof(string)));
            dt.Columns.Add(new DataColumn("Compatibility", typeof(string)));
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        private void SetInitialGridValuesFeature()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("PN", typeof(string)));
            dt.Columns.Add(new DataColumn("PV", typeof(string)));
            dt.Columns.Add(new DataColumn("PhaseOUT", typeof(string)));
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
        // TO SET VALUE OF ACTIVE TAB
        [WebMethod]
        public static string SetCurrentTabValue()
        {
            if (currentTab == 0)
            {
                currentTab = 1;
            }
            else
            {
                currentTab = 0;
            }
            return "success";
        }

    }
}