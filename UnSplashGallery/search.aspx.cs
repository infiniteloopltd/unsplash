using System;
using System.Net;

namespace UnSplashGallery
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var searchTerm = Request.QueryString["searchTerm"];
            if (string.IsNullOrEmpty(searchTerm))
            {
                throw new Exception("searchTerm is required");
            }
            var strUrl = "https://api.unsplash.com/search/photos?";
            strUrl += "client_id=c9492064c857d14c8704afd5e85e22df1413d97f54002f62037313049395b3c9";
            strUrl += "&query=" + searchTerm;
            /*
                query	Search terms.
                page	Page number to retrieve. (Optional; default: 1)
                per_page	Number of items per page. (Optional; default: 10)
                collections	Collection ID(‘s) to narrow search. If multiple, comma-separated.
                orientation	Filter search results by photo orientation. Valid values are landscape, portrait, and squarish.
             */
            var wc = new WebClient();
            var strJson = wc.DownloadString(strUrl);
            Response.Write(strJson);
        }
    }
}