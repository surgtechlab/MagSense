using BracePLUS.Models;
using System.Diagnostics;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace BracePLUS.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Inspect : ContentPage
    {
        InspectViewModel viewModel;

        DataObject data;

        public Inspect(DataObject data)
        {
            InitializeComponent();

            this.data = data;

            BindingContext = viewModel = new InspectViewModel
            {
                Navigation = Navigation,
                DataObj = data
            };
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
               
            viewModel.RetrieveDataFromObject(data);
        }
    }
}