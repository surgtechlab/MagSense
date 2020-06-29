using BracePLUS.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RawDataView : ContentPage
    {
        DataObject dataObject;

        public RawDataView()
        {
            InitializeComponent();
            dataObject = new DataObject();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            dataObject = (DataObject)BindingContext;
        }
    }
}