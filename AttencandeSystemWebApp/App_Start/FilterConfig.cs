using System.Web;
using System.Web.Mvc;

namespace AttencandeSystemWebApp {
	public class FilterConfig {
		public static void RegisterGlobalFilters(GlobalFilterCollection filters) {
			filters.Add(new HandleErrorAttribute());
		}
	}
}
