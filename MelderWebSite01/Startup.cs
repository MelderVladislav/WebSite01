using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MelderWebSite01.Startup))]
namespace MelderWebSite01
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
