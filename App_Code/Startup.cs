using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(A5Trial.Startup))]
namespace A5Trial
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
